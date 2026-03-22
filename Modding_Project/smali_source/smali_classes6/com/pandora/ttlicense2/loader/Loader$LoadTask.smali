.class Lcom/pandora/ttlicense2/loader/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/pandora/ttlicense2/loader/Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pandora/ttlicense2/loader/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;",
        "Lcom/pandora/ttlicense2/loader/Cancelable;"
    }
.end annotation


# static fields
.field private static final MSG_CANCEL:I = 0x5

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_FATAL_ERROR:I = 0x4

.field private static final MSG_IO_EXCEPTION:I = 0x2

.field private static final MSG_PROGRESS:I = 0x0

.field private static final MSG_UNEXPECTED_EXCEPTION:I = 0x3

.field private static final STATE_CANCELED:I = 0x4

.field private static final STATE_COMPLETED:I = 0x2

.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mCancelReason:Ljava/lang/String;

.field private volatile mCanceling:Z

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mExecutorThread:Ljava/lang/Thread;

.field private mListener:Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mNotify:Z

.field private mState:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/util/concurrent/ExecutorService;Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/ExecutorService;",
            "TT;",
            "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
            "TT;>;",
            "Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mListener:Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$500(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCanceling:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 2
    .line 3
    return p0
.end method

.method private finish()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mListener:Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, p0}, Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;->onTaskFinish(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mListener:Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;

    .line 22
    .line 23
    :cond_0
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutorThread:Ljava/lang/Thread;

    .line 28
    .line 29
    return-void
.end method

.method private fireCanceledEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->setState(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->finish()V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCancelReason:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Lcom/pandora/ttlicense2/loader/Loader$Callback;->onLoadCanceled(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private fireCompleteEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->setState(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->finish()V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/pandora/ttlicense2/loader/Loader$Callback;->onLoadComplete(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private fireErrorEvent(Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->setState(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->finish()V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/loader/Loader$Callback;->onLoadError(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/io/IOException;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private fireProgressEvent(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/loader/Loader$Callback;->onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/Loader$Loadable;F)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private fireStartEvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->setState(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mListener:Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, p0}, Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;->onTaskStart(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCallback:Lcom/pandora/ttlicense2/loader/Loader$Callback;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/pandora/ttlicense2/loader/Loader$Callback;->onLoadStart(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    return-void
.end method

.method private start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    filled-new-array {v1}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireStartEvent()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public cancel(ZZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCanceling:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mNotify:Z

    .line 12
    .line 13
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCancelReason:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p3}, Lcom/pandora/ttlicense2/loader/Cancelable;->cancel(ZZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutorThread:Ljava/lang/Thread;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    filled-new-array {v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCanceling:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireCanceledEvent()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    if-eq v0, v2, :cond_5

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x5

    .line 44
    if-eq v0, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireCanceledEvent()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Error;

    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 57
    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Ljava/lang/Throwable;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireErrorEvent(Ljava/io/IOException;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Ljava/io/IOException;

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireErrorEvent(Ljava/io/IOException;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireCompleteEvent()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Ljava/lang/Float;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->fireProgressEvent(F)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method isDone()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCanceling:Z

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mExecutorThread:Ljava/lang/Thread;

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 17
    .line 18
    new-instance v2, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask$1;-><init>(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Lcom/pandora/ttlicense2/loader/Loader$Loadable;->load(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :catch_2
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :catch_3
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :goto_0
    const/4 v1, 0x4

    .line 40
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :goto_1
    const/4 v1, 0x3

    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catch_4
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mCanceling:Z

    .line 58
    .line 59
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_2
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->mLoadable:Lcom/pandora/ttlicense2/loader/Loader$Loadable;

    .line 71
    .line 72
    invoke-interface {v2}, Lcom/pandora/ttlicense2/loader/Cancelable;->isCanceled()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_1
    const/4 v1, 0x2

    .line 87
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    .line 93
    .line 94
    :goto_3
    return-void
.end method
