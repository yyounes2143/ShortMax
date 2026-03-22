.class public Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTVideoEngineLooperThread2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;,
        Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;,
        Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;
    }
.end annotation


# static fields
.field public static final INJECT_MSG_THREAD_NOTALLOW_DESTROY:I = 0x0

.field private static final PARAM_COND:Ljava/lang/String; = "msgCond"

.field private static final PARAM_OBJ:Ljava/lang/String; = "paramObj"

.field private static final PARAM_OBJ1:Ljava/lang/String; = "paramObj1"

.field private static final PARAM_OBJ2:Ljava/lang/String; = "paramObj2"

.field private static final TAG:Ljava/lang/String; = "TTVideoEngineLooperThread"

.field static final TIMEOUT_MSG_DEFAULT:J = 0x1f4L

.field static final TIMEOUT_MSG_NO_LIMIT:J = -0x1L


# instance fields
.field private isLastHandlerThreadNull:Z

.field private lastCallbackLooperStr:Ljava/lang/String;

.field private lastHandlerThreadStr:Ljava/lang/String;

.field private mCondList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

.field private mEngineMsgHandler:Landroid/os/Handler;

.field private mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

.field mEngineMsgRetValue:Landroid/os/Parcel;

.field mInjectedMsgNotAllowDestroy:Z

.field mInjectedMsgThread:Z

.field private mIsHandlingMainMsg:Z

.field private mMainLooperHandler:Landroid/os/Handler;

.field private mMainMsgLock:Ljava/util/concurrent/locks/Lock;

.field mMainMsgRetValue:Landroid/os/Parcel;

.field private mMessageThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mIsHandlingMainMsg:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgThread:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgNotAllowDestroy:Z

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastHandlerThreadStr:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastCallbackLooperStr:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic access$8300(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$8600(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    return-object p0
.end method

.method private isAsyncParaChanged(Landroid/os/HandlerThread;Landroid/os/Looper;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isAsyncParaChanged("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "\uff0c"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ") , "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq v2, p2, :cond_2

    .line 57
    .line 58
    move p2, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 p2, 0x0

    .line 61
    :goto_1
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 64
    .line 65
    if-eq v2, p1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->isLastHandlerThreadNull:Z

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v3, p2

    .line 74
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p2, "last time AsyncPara:"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastHandlerThreadStr:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastCallbackLooperStr:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    const-string/jumbo p2, "\uff0cAsyncPara have changed\uff01"

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    const-string/jumbo p2, "\uff0cAsyncPara is same as last time\uff01"

    .line 108
    .line 109
    .line 110
    :goto_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " ---TTVideoEnginePool"

    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v3
.end method


# virtual methods
.method checkEngineLooperThread(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mIsHandlingMainMsg:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "mIsHandlingMainMsg return false, thread:"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eq p1, v0, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    return p1

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    .line 77
    .line 78
    :cond_2
    return v1
.end method

.method checkSendMainLooper()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "main looper thread is not alive, return false"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eq v2, v0, :cond_3

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    return v0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "mainHandler looper:"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    return v1
.end method

.method closeEngineLooperThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, " closeEngineLooperThread, handlerThread:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " ---TTVideoEnginePool"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v0, v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/concurrent/locks/Condition;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgThread:Z

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgNotAllowDestroy:Z

    .line 98
    .line 99
    if-nez v2, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 102
    .line 103
    .line 104
    :cond_3
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 105
    .line 106
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method notifyMsgComplete(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method postEngineMessage(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method postEngineMessage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method postEngineMessage(III)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method postEngineMessage(IIILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessage(IIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method postEngineMessage(IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessage(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method postEngineMessage(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v2, "paramObj"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 10
    const-string p4, "paramObj1"

    invoke-interface {v1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p6, :cond_2

    .line 11
    const-string p4, "paramObj2"

    invoke-interface {v1, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 13
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method postEngineMessageDelay(II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postEngineMessageDelay(IIILjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method postEngineMessageDelay(IIILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v2, "paramObj"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    .line 6
    const-string p4, "paramObj1"

    invoke-interface {v1, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 8
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    new-instance p2, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;

    invoke-direct {p2, p0, v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Landroid/os/Handler;Landroid/os/Message;)V

    int-to-long p3, p6

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method postMainLooperMessage(IIILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->postMainLooperMessage(IIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method postMainLooperMessage(IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "paramObj"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 5
    const-string p4, "paramObj1"

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p4, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 7
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public refreshAsyncPara(Landroid/os/HandlerThread;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->isAsyncParaChanged(Landroid/os/HandlerThread;Landroid/os/Looper;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->closeEngineLooperThread()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->start(Landroid/os/HandlerThread;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method runOnLooperThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->checkEngineLooperThread(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 9
    .line 10
    iget v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method sendEngineMessage(IJ)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendEngineMessage(IJIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method sendEngineMessage(IJI)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendEngineMessage(IJIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method sendEngineMessage(IJII)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendEngineMessage(IJIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method sendEngineMessage(IJIILjava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendEngineMessage(IJIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method sendEngineMessage(IJIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 5
    invoke-virtual/range {v0 .. v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->sendEngineMessage(IJIILjava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method sendEngineMessage(IJIILjava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 8
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v3, :cond_7

    .line 9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v4

    .line 11
    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p4

    .line 12
    const-string p5, "paramObj"

    invoke-interface {v3, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p5, "msgCond"

    invoke-interface {v3, p5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_1

    .line 14
    const-string p5, "paramObj1"

    invoke-interface {v3, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p5, 0x1

    .line 15
    :try_start_0
    iget-object p6, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    iget-object p6, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget p6, p6, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p6, v2, :cond_2

    .line 17
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 19
    :cond_2
    :try_start_1
    iget-object p6, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iput-object v3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p8, :cond_3

    .line 21
    invoke-virtual {v0, p4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    const-wide/16 p6, 0x0

    cmp-long p4, p2, p6

    if-lez p4, :cond_4

    .line 23
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, p2, p3, p4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_5

    .line 24
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 25
    iget-object p5, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-virtual {p5}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "handle message "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " timeout "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p5, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move p5, p4

    goto :goto_3

    .line 27
    :cond_4
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    if-ne p1, v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, p5

    .line 29
    :goto_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    .line 31
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    if-ne p1, v2, :cond_6

    goto :goto_2

    :goto_4
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    iget p2, p2, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 33
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_7
    :goto_5
    return v1
.end method

.method sendMainLooperMessage(IIILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "paramObj"

    .line 23
    .line 24
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p2, "msgCond"

    .line 28
    .line 29
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mIsHandlingMainMsg:Z

    .line 39
    .line 40
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mIsHandlingMainMsg:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_0
    :goto_2
    return-void
.end method

.method public setIntValue(II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgNotAllowDestroy:Z

    .line 10
    .line 11
    :goto_1
    return-void
.end method

.method public start(Landroid/os/HandlerThread;Landroid/os/Looper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "start, handlerThread:"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, " start, handlerThread:"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " ---TTVideoEnginePool"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastHandlerThreadStr:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->lastCallbackLooperStr:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 101
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mCondList:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgRetValue:Landroid/os/Parcel;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 119
    .line 120
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mInjectedMsgThread:Z

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->isLastHandlerThreadNull:Z

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    .line 127
    .line 128
    const-string v1, "engineMsgLooper"

    .line 129
    .line 130
    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 134
    .line 135
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->isLastHandlerThreadNull:Z

    .line 136
    .line 137
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-nez p1, :cond_1

    .line 144
    .line 145
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 148
    .line 149
    .line 150
    :cond_1
    new-instance p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMessageThread:Landroid/os/HandlerThread;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {p1, p0, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MessageHandler;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/os/Looper;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngineMsgHandler:Landroid/os/Handler;

    .line 164
    .line 165
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgLock:Ljava/util/concurrent/locks/Lock;

    .line 171
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgRetValue:Landroid/os/Parcel;

    .line 177
    .line 178
    if-nez p2, :cond_3

    .line 179
    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-nez p1, :cond_2

    .line 185
    .line 186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    goto :goto_1

    .line 191
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    :cond_3
    :goto_1
    new-instance p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;

    .line 196
    .line 197
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 198
    .line 199
    invoke-direct {p1, p0, v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/os/Looper;)V

    .line 200
    .line 201
    .line 202
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainLooperHandler:Landroid/os/Handler;

    .line 203
    .line 204
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string p2, "enable engine looper thread"

    .line 211
    .line 212
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method
