// Default empty project template
#ifndef TCUFPE_HPP_
#define TCUFPE_HPP_

#include <QObject>
#include <bb/system/InvokeManager>
#include <bb/system/InvokeTargetReply>
#include <bb/system/CardDoneMessage>

using namespace bb::system;

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class TCUFPE : public QObject
{
    Q_OBJECT
public:
    TCUFPE(bb::cascades::Application *app);
    virtual ~TCUFPE() {}
    Q_INVOKABLE QString toUpper(QString word);
    Q_INVOKABLE void showCamera();
signals:
    void newPicture(QString path);
public slots:
    void onCameraCardDone(const bb::system::CardDoneMessage & message);
private:
    InvokeManager* m_iManager;
};


#endif /* TCUFPE_HPP_ */
