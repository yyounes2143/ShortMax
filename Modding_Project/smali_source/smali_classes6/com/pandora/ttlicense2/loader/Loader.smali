.class public final Lcom/pandora/ttlicense2/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/loader/Loader$LoadTask;,
        Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;,
        Lcom/pandora/ttlicense2/loader/Loader$CallbackAdapter;,
        Lcom/pandora/ttlicense2/loader/Loader$Callback;,
        Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;,
        Lcom/pandora/ttlicense2/loader/Loader$Loadable;
    }
.end annotation


# static fields
.field private static final STATE_CANCELED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOADING:I = 0x1


# instance fields
.field private mCanceling:Z

.field private final mEnqueuedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandora/ttlicense2/loader/Loader$LoadTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mLooper:Landroid/os/Looper;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mEnqueuedTasks:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/loader/Loader;)Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/pandora/ttlicense2/loader/Loader;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mEnqueuedTasks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/pandora/ttlicense2/loader/Loader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mCanceling:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/pandora/ttlicense2/loader/Loader;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/pandora/ttlicense2/loader/Loader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private finish()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final cancel(ZZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/pandora/ttlicense2/loader/Loader;->finish()V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mCanceling:Z

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mCanceling:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mEnqueuedTasks:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 50
    .line 51
    invoke-virtual {v1, p1, p2, p3}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->cancel(ZZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final isCanceled()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mCanceling:Z

    .line 7
    .line 8
    return v0
.end method

.method public isFree()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, p0, Lcom/pandora/ttlicense2/loader/Loader;->mEnqueuedTasks:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-le v0, v3, :cond_2

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_2
    return v1
.end method

.method public final isIDLE()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final isLoading()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method public looper()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 7
    .line 8
    return-object v0
.end method

.method public final startLoad(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pandora/ttlicense2/loader/Loader$Loadable;",
            ">(TT;",
            "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkThread(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    filled-new-array {v1, v2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(I[I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/pandora/ttlicense2/loader/Loader;->mCanceling:Z

    .line 18
    .line 19
    xor-int/2addr v0, v2

    .line 20
    const-string v1, "can\'t enqueue while canceling!"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkState(ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/pandora/ttlicense2/loader/Loader;->mLooper:Landroid/os/Looper;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/pandora/ttlicense2/loader/Loader;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    new-instance v7, Lcom/pandora/ttlicense2/loader/Loader$1;

    .line 32
    .line 33
    invoke-direct {v7, p0}, Lcom/pandora/ttlicense2/loader/Loader$1;-><init>(Lcom/pandora/ttlicense2/loader/Loader;)V

    .line 34
    .line 35
    .line 36
    move-object v2, v0

    .line 37
    move-object v5, p1

    .line 38
    move-object v6, p2

    .line 39
    invoke-direct/range {v2 .. v7}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;-><init>(Landroid/os/Looper;Ljava/util/concurrent/ExecutorService;Lcom/pandora/ttlicense2/loader/Loader$Loadable;Lcom/pandora/ttlicense2/loader/Loader$Callback;Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/Loader$LoadTask;->access$500(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
