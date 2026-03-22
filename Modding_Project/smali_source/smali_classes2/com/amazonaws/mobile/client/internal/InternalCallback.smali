.class public Lcom/amazonaws/mobile/client/internal/InternalCallback;
.super Ljava/lang/Object;
.source "InternalCallback.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "InternalCallback"


# instance fields
.field private a:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/client/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 4
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 5
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Library attempted to call user callback twice, expected only once"

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e:Ljava/lang/Exception;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-nez p2, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 45
    .line 46
    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v2, "Internal error, duplicate call"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Duplicate call to execute code."

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Thread;

    .line 29
    .line 30
    new-instance v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;-><init>(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public c(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v2, "Internal error, duplicate call"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "Duplicate call to execute code."

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e:Ljava/lang/Exception;

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e:Ljava/lang/Exception;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->e:Ljava/lang/Exception;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/lang/Object;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    throw p1
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
