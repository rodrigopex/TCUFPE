// Default empty project template
#include "TCUFPE.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

TCUFPE::TCUFPE(bb::cascades::Application *app) :
		QObject(app) {
	m_iManager = new InvokeManager(this);
	QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
	qml->setContextProperty("_controller", this);
	AbstractPane *root = qml->createRootObject<AbstractPane>();
	app->setScene(root);
}

QString TCUFPE::toUpper(QString word) {
	qDebug() << "Changing the word: " << word;
	return word.toUpper();
}

void TCUFPE::showCamera() {
	InvokeRequest cardRequest;
	cardRequest.setTarget("sys.camera.card");
	cardRequest.setAction("bb.action.CAPTURE");
	cardRequest.setData("photo");
	InvokeTargetReply* reply = m_iManager->invoke(cardRequest);
	reply->setParent(this);

	connect(m_iManager,
			SIGNAL(childCardDone(const bb::system::CardDoneMessage &)), this,
			SLOT(onCameraCardDone(const bb::system::CardDoneMessage &)));
	qDebug() << "waiting for you";
}

void TCUFPE::onCameraCardDone(const bb::system::CardDoneMessage & message) {
	disconnect(m_iManager,
			SIGNAL(childCardDone(const bb::system::CardDoneMessage &)), this,
			SLOT(onCameraCardDone(const bb::system::CardDoneMessage &)));
	qDebug() << message.data();
	emit this->newPicture(message.data());
}
