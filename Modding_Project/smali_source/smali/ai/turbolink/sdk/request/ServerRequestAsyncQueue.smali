.class public final Lai/turbolink/sdk/request/ServerRequestAsyncQueue;
.super Ljava/lang/Object;
.source "ServerRequestAsyncQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final QUEUE_MAX_ITEM:I = 0x19

.field private static queueLockObject:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static requestQueueInstance:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;


# instance fields
.field private _currentRequestNetworkCount:I

.field private queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lai/turbolink/sdk/request/ServerRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serverSemaphore:Ljava/util/concurrent/Semaphore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->Companion:Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/Semaphore;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->serverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 16
    .line 17
    invoke-direct {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->findQueue()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic access$getRequestQueueInstance$cp()Lai/turbolink/sdk/request/ServerRequestAsyncQueue;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->requestQueueInstance:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$onExecuteFailed(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->onExecuteFailed(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onExecuteSuccess(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->onExecuteSuccess(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setRequestQueueInstance$cp(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->requestQueueInstance:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 2
    .line 3
    return-void
.end method

.method private final executeTurboLinkTask(Lai/turbolink/sdk/request/ServerRequest;I)V
    .locals 6

    .line 1
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v3, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;-><init>(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final findQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/request/ServerRequest;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "synchronizedList(ArrayList())"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final manualInsert(Lai/turbolink/sdk/request/ServerRequest;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Add request to queue raise exception "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    throw p1
.end method

.method private final onExecuteFailed(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;I)V
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onExecuteFailed "

    .line 7
    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-static {p3}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p3, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 26
    .line 27
    invoke-virtual {p3}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "Network request error "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p3, p2}, Lai/turbolink/sdk/request/ServerRequest;->handleFailure(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->remove(Lai/turbolink/sdk/request/ServerRequest;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final onExecuteSuccess(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 8
    .line 9
    invoke-virtual {p2}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const-string v0, "Response body is null."

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lai/turbolink/sdk/request/ServerRequest;->handleFailure(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 28
    .line 29
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p2}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lai/turbolink/sdk/request/response/EventResponse;->getMsg()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, v0, p2}, Lai/turbolink/sdk/request/ServerRequest;->handleFailure(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequest;->handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    instance-of p2, p1, Lai/turbolink/sdk/request/ServerRequestSession;

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    sget-object p2, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 63
    .line 64
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    sget-object v0, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->INITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lai/turbolink/sdk/TurboLink;->setSessionInitState(Lai/turbolink/sdk/TurboLink$SESSION_STATE;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->remove(Lai/turbolink/sdk/request/ServerRequest;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final persistQueue()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "Clear request queue raise exception "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw v1
.end method

.method public final get()Lai/turbolink/sdk/request/ServerRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_3

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_4

    .line 14
    :catch_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "Get request queue, IndexOutOfBoundsException "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "Get request queue, NoSuchElementException "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    const/4 v1, 0x0

    .line 68
    :goto_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    check-cast v1, Lai/turbolink/sdk/request/ServerRequest;

    .line 72
    .line 73
    return-object v1

    .line 74
    :goto_4
    monitor-exit v0

    .line 75
    throw v1
.end method

.method public final getAt(I)Lai/turbolink/sdk/request/ServerRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_3

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_4

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "Get request queue, IndexOutOfBoundsException "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Get request queue, NoSuchElementException "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    const/4 p1, 0x0

    .line 67
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    check-cast p1, Lai/turbolink/sdk/request/ServerRequest;

    .line 71
    .line 72
    return-object p1

    .line 73
    :goto_4
    monitor-exit v0

    .line 74
    throw p1
.end method

.method public final getSize()I
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method

.method public final getWhetherAutoInitialized()Lai/turbolink/sdk/request/ServerRequestSession;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lai/turbolink/sdk/request/ServerRequest;

    .line 21
    .line 22
    instance-of v3, v2, Lai/turbolink/sdk/request/ServerRequestSession;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    check-cast v2, Lai/turbolink/sdk/request/ServerRequestSession;

    .line 27
    .line 28
    invoke-virtual {v2}, Lai/turbolink/sdk/request/ServerRequestSession;->getInitiatedByClient()Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v2

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :try_start_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    const/4 v0, 0x0

    .line 42
    return-object v0

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    throw v1
.end method

.method public final get_currentRequestNetworkCount()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->_currentRequestNetworkCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final handleNewManualRequest(Lai/turbolink/sdk/request/ServerRequest;)V
    .locals 2
    .param p1    # Lai/turbolink/sdk/request/ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "HandleNewManualRequest "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->manualInsert(Lai/turbolink/sdk/request/ServerRequest;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->processNextQueueTask()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final insert(Lai/turbolink/sdk/request/ServerRequest;)V
    .locals 3
    .param p1    # Lai/turbolink/sdk/request/ServerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Add request to queue raise exception "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0

    .line 47
    throw p1
.end method

.method public final processNextQueueTask()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->serverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->_currentRequestNetworkCount:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->get()Lai/turbolink/sdk/request/ServerRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->_currentRequestNetworkCount:I

    .line 22
    .line 23
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->serverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "ProcessNextQueueTask, request is:"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 63
    .line 64
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getEXECUTE_TIMEOUT()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-direct {p0, v0, v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->executeTurboLinkTask(Lai/turbolink/sdk/request/ServerRequest;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->_currentRequestNetworkCount:I

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->remove(Lai/turbolink/sdk/request/ServerRequest;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->serverSemaphore:Ljava/util/concurrent/Semaphore;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "Processing queue request item raise exception "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void
.end method

.method public final remove(Lai/turbolink/sdk/request/ServerRequest;)Z
    .locals 3
    .param p1    # Lai/turbolink/sdk/request/ServerRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queueLockObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->queue:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Remove from queue raise exception "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return p1

    .line 49
    :goto_1
    monitor-exit v0

    .line 50
    throw p1
.end method

.method public final set_currentRequestNetworkCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->_currentRequestNetworkCount:I

    .line 2
    .line 3
    return-void
.end method
