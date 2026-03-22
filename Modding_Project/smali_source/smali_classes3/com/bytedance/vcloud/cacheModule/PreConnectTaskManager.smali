.class public Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;
.super Ljava/lang/Object;
.source "PreConnectTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$RunMode;,
        Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$PreConnectTaskManagerInner;
    }
.end annotation


# static fields
.field private static final MSG_WHAT_CHANGE_CUR_PLAY_TS_KEY:I = 0x186a5

.field private static final MSG_WHAT_CHANGE_CUR_PRECONNECT_TS_KEY:I = 0x186a6

.field private static final MSG_WHAT_CHANGE_TASK_RUN_MODE:I = 0x186a3

.field private static final MSG_WHAT_ERASE_ALL_TASK:I = 0x186a1

.field private static final MSG_WHAT_ERASE_TASK:I = 0x186a2

.field private static final MSG_WHAT_PAUSE:I = 0x186a7

.field private static final MSG_WHAT_RESUME:I = 0x186a8

.field private static final MSG_WHAT_SET_MAX_TASK_NUM:I = 0x186a4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->loadLibrary()Z

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;

    iget-object v1, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;-><init>(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;-><init>()V

    return-void
.end method

.method private native _changeCurPlayTsKey(Ljava/lang/String;)V
.end method

.method private native _changeCurPreConnectTsKey(Ljava/lang/String;)V
.end method

.method private native _changeTaskRunMode(Ljava/lang/String;I)V
.end method

.method private native _eraseAllPreConnectTask()V
.end method

.method private native _erasePreConnectTask(Ljava/lang/String;)V
.end method

.method private native _pause(Ljava/lang/String;)V
.end method

.method private native _resume(Ljava/lang/String;)V
.end method

.method private native _setMaxTaskNum(Ljava/lang/String;I)V
.end method

.method static synthetic access$200(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->eraseAllPreConnectTaskInner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->erasePreConnectTaskInner(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeTaskRunModeInner(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->setMaxTaskNumInner(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->changeCurPlayTsKeyInner(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->pauseInner(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->resumeInner(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private changeCurPlayTsKeyInner(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_changeCurPlayTsKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method private changeTaskRunModeInner(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_changeTaskRunMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method private eraseAllPreConnectTaskInner()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_eraseAllPreConnectTask()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method private erasePreConnectTaskInner(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_erasePreConnectTask(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$PreConnectTaskManagerInner;->access$100()Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private pauseInner(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_pause(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method private resumeInner(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_resume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method private sendMsg(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMsg(ILjava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMsg(ILjava/lang/String;I)V
    .locals 1

    .line 8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 9
    iput p1, v0, Landroid/os/Message;->what:I

    .line 10
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 12
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setMaxTaskNumInner(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_setMaxTaskNum(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public changeCurPlayTsKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "changeCurPlayTsKey\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x186a5

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public changeCurPreConnectTsKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "changeCurPreConnectTsKey\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x186a6

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public changeCurPreConnectTsKeyInner(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/vcloud/cacheModule/CacheModuleLoader;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->_changeCurPreConnectTsKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "api-native not match: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public changeTaskRunMode(Ljava/lang/String;Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager$RunMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "changeTaskRunMode\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", mode : "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const v0, 0x186a3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public eraseAllPreConnectTask()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "eraseAllPreConnectTask"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x186a1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public erasePreConnectTask(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "erasePreConnectTask:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x186a2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "pause\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x186a7

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "resume\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x186a8

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setMaxTaskNum(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setMaxTaskNum\uff0c key : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", num : "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x186a4

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/vcloud/cacheModule/PreConnectTaskManager;->sendMsg(ILjava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
