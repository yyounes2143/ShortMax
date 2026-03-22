.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;
.super Landroid/os/Handler;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field private mEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/os/Looper;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 5
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "engine is null, return."

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast v0, Ljava/util/Map;

    .line 5
    const-string v3, "msgCond"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/Condition;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 7
    :goto_0
    const-string v4, "paramObj"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v4, v0

    move-object v8, v4

    .line 9
    :goto_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x6f

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x12c

    if-eq v3, v5, :cond_2a

    const/16 v5, 0x12d

    const-string v6, "paramObj1"

    if-eq v3, v5, :cond_27

    const-string v5, "_doSetDataSource invalid param"

    const-string v7, "_doSetVideoID invalid param"

    const-string/jumbo v9, "setDirectUrlUseDataLoader invalid param"

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 11
    :pswitch_0
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSupporth266Playback()Z

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 13
    :pswitch_1
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSupporth265Playback()Z

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 15
    :pswitch_2
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doIsMute()Z

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 18
    :pswitch_3
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetPlayErrorInfo()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 22
    :pswitch_4
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getVideoHeight()I

    move-result p1

    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 25
    :pswitch_5
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getVideoWidth()I

    move-result p1

    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 28
    :pswitch_6
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetCurrentPlaybackTime()I

    move-result p1

    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 31
    :pswitch_7
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doIsSystemPlayer()Z

    move-result p1

    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 33
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    :pswitch_8
    if-eqz v4, :cond_5

    .line 34
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetObjectOption(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_doSetObjectOption invalid param for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_9
    if-eqz v4, :cond_6

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetStringOption(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_doSetStrungOption invalid param for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 39
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetStringOption(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 42
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetFloatOption(I)F

    move-result p1

    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_b

    .line 45
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetLongOption(I)J

    move-result-wide v0

    .line 46
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_b

    .line 48
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doGetIntOption(I)I

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    :pswitch_e
    if-eqz v4, :cond_7

    .line 51
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 52
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetLongOption(IJ)V

    goto/16 :goto_b

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_doSetLongOption invalid param for key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 54
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetIntOption(II)V

    goto/16 :goto_b

    .line 55
    :pswitch_10
    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 56
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 57
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 58
    :cond_8
    invoke-virtual {v1, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 59
    :pswitch_11
    check-cast v4, Landroid/view/Surface;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetPlayerSurface(Landroid/view/Surface;I)V

    goto/16 :goto_b

    .line 60
    :pswitch_12
    check-cast v4, Landroid/view/SurfaceHolder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v10, :cond_9

    goto :goto_3

    :cond_9
    move v10, v11

    :goto_3
    invoke-virtual {v1, v4, v10}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetSurfaceHolder(Landroid/view/SurfaceHolder;Z)V

    goto/16 :goto_b

    .line 61
    :pswitch_13
    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetSurface(Landroid/view/Surface;)V

    goto/16 :goto_b

    :pswitch_14
    if-eqz v4, :cond_a

    .line 62
    check-cast v4, Lcom/ss/ttm/player/PlaybackParams;

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    goto/16 :goto_b

    .line 63
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doSetPlaybackParams invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 64
    :pswitch_15
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetTestSpeedEnable(I)V

    goto/16 :goto_b

    :pswitch_16
    if-eqz v4, :cond_b

    .line 65
    check-cast v4, [I

    .line 66
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_setUnSupportSampleRates([I)V

    goto/16 :goto_b

    .line 67
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_setUnSupportSampleRates invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 68
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v10, :cond_c

    goto :goto_4

    :cond_c
    move v10, v11

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v10, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetAsyncInit(ZI)V

    goto/16 :goto_b

    .line 69
    :pswitch_18
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doClearTextureRef()V

    goto/16 :goto_b

    .line 70
    :pswitch_19
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    goto/16 :goto_b

    .line 71
    :pswitch_1a
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doResetByPool()V

    goto/16 :goto_b

    :pswitch_1b
    if-eqz v4, :cond_d

    .line 72
    check-cast v4, Lcom/ss/ttvideoengine/DirectUrlItem;

    .line 73
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DirectUrlItem;->allUrls()[Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DirectUrlItem;->fileKey()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DirectUrlItem;->vid()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DirectUrlItem;->cdnExpiredTime()J

    move-result-wide v5

    .line 77
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/DirectUrlItem;->urlExpireTimes()[Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    goto/16 :goto_b

    .line 79
    :cond_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_1c
    if-eqz v4, :cond_e

    .line 80
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "looper setPlayAuthToken"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    invoke-static {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 83
    :cond_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doSetPlayAuthToken invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 84
    :pswitch_1d
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper setMirrorVertical "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_f

    goto :goto_5

    :cond_f
    move v10, v11

    :goto_5
    invoke-static {v1, v10}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)V

    goto/16 :goto_b

    .line 86
    :pswitch_1e
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper setMirrorHorizontal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_10

    goto :goto_6

    :cond_10
    move v10, v11

    :goto_6
    invoke-static {v1, v10}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Z)V

    goto/16 :goto_b

    .line 88
    :pswitch_1f
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "looper setRotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;I)V

    goto/16 :goto_b

    .line 90
    :pswitch_20
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "looper forceDraw"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    goto/16 :goto_b

    :pswitch_21
    if-eqz v4, :cond_11

    .line 92
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "looper setStrategySource"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    check-cast v4, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 94
    invoke-static {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    goto/16 :goto_b

    .line 95
    :cond_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setStrategySource invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 96
    :pswitch_22
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doHeartBeatThings()V

    goto/16 :goto_b

    .line 97
    :pswitch_23
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doStart()V

    goto/16 :goto_b

    .line 98
    :pswitch_24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doPrepare()V

    goto/16 :goto_b

    :pswitch_25
    if-eqz v4, :cond_13

    .line 99
    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 100
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 101
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 102
    :cond_12
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setDirectUrlUseDataLoaderByFilePath([Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 103
    :cond_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_26
    if-eqz v4, :cond_17

    .line 104
    move-object p1, v4

    check-cast p1, [Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 105
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 106
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_7

    :cond_14
    move-object v3, v2

    .line 107
    :goto_7
    const-string v4, "paramObj2"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 108
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_8

    :cond_15
    move-object v4, v2

    goto :goto_8

    :cond_16
    move-object v3, v2

    move-object v4, v3

    :goto_8
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 109
    invoke-virtual/range {v1 .. v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    goto/16 :goto_b

    .line 110
    :cond_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_27
    if-eqz v4, :cond_19

    .line 111
    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 112
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 113
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v4, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDirectURL(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 115
    :cond_18
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDirectURL(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_b

    .line 116
    :cond_19
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doSetDirectURL invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_28
    if-eqz v4, :cond_1a

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetLocalURL(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 119
    :cond_1a
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doSetLocalURL invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_29
    if-eqz v4, :cond_1b

    .line 120
    check-cast v4, Lcom/ss/ttvideoengine/TTVideoEnginePlayItem;

    .line 121
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetPlayItem(Lcom/ss/ttvideoengine/TTVideoEnginePlayItem;)V

    goto/16 :goto_b

    .line 122
    :cond_1b
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doSetPlayItem invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2a
    if-eqz v4, :cond_1c

    .line 123
    check-cast v4, Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 124
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    goto/16 :goto_b

    .line 125
    :cond_1c
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doSetVideoModel invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2b
    if-eqz v4, :cond_1d

    .line 126
    check-cast v4, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;

    .line 127
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetPreloaderItem(Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;)V

    goto/16 :goto_b

    .line 128
    :cond_1d
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2c
    if-eqz v4, :cond_1e

    .line 129
    check-cast v4, Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetVideoID(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 131
    :cond_1e
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2d
    if-eqz v4, :cond_1f

    .line 132
    check-cast v4, Lcom/ss/ttm/player/IMediaDataSource;

    .line 133
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V

    goto/16 :goto_b

    .line 134
    :cond_1f
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2e
    if-eqz v4, :cond_20

    .line 135
    check-cast v4, Ljava/io/FileDescriptor;

    .line 136
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_b

    .line 137
    :cond_20
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 138
    :pswitch_2f
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_pauseByInterruption()V

    goto/16 :goto_b

    .line 139
    :pswitch_30
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v10, :cond_21

    goto :goto_9

    :cond_21
    move v10, v11

    :goto_9
    invoke-virtual {v1, v10}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_setPlayerMute(Z)V

    goto/16 :goto_b

    :pswitch_31
    if-eqz v4, :cond_23

    .line 140
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    if-eqz v0, :cond_22

    .line 141
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 142
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 143
    invoke-virtual {v1, p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerVolume(FF)V

    goto/16 :goto_b

    .line 144
    :cond_22
    invoke-virtual {v1, p1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->setPlayerVolume(FF)V

    goto/16 :goto_b

    .line 145
    :cond_23
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_setPlayerVolume invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_32
    if-eqz v4, :cond_25

    .line 146
    check-cast v4, Lcom/ss/ttvideoengine/Resolution;

    if-eqz v0, :cond_24

    .line 147
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 148
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 149
    :cond_24
    invoke-virtual {v1, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_switchToResolution(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)V

    goto/16 :goto_b

    .line 150
    :cond_25
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_configResolution invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 151
    :pswitch_33
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1, v11}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_seekTo(IZ)V

    goto/16 :goto_b

    .line 152
    :pswitch_34
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v10, :cond_26

    goto :goto_a

    :cond_26
    move v10, v11

    .line 153
    :goto_a
    invoke-virtual {v1, v10}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetLooping(Z)V

    goto :goto_b

    .line 154
    :pswitch_35
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doReleaseAsync()V

    goto :goto_b

    .line 155
    :pswitch_36
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doRelease()V

    goto :goto_b

    .line 156
    :pswitch_37
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doStop()V

    goto :goto_b

    .line 157
    :pswitch_38
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doPause()V

    goto :goto_b

    .line 158
    :pswitch_39
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doPlay()V

    goto :goto_b

    :cond_27
    if-eqz v4, :cond_29

    .line 159
    check-cast v4, Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 160
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 161
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 162
    :cond_28
    invoke-virtual {v1, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doParseIPAddress(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    goto :goto_b

    .line 163
    :cond_29
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doParseDNSComplete no model"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_2a
    if-eqz v4, :cond_2b

    .line 164
    check-cast v4, Ljava/lang/String;

    .line 165
    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doParseDNSComplete(Ljava/lang/String;)V

    goto :goto_b

    .line 166
    :cond_2b
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_doParseDNSComplete invalid param"

    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 167
    :cond_2c
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v4, Lcom/ss/ttm/player/TraitObject;

    invoke-virtual {v0, p1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doSetTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 168
    :goto_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->access$8300(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-virtual {p1, v0, v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->notifyMsgComplete(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x65
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x96
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
