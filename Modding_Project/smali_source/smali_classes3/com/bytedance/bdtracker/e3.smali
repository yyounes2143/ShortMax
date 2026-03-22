.class public final Lcom/bytedance/bdtracker/e3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/bytedance/applog/log/IAppLogLogger;

.field public final d:Lcom/bytedance/bdtracker/e0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 2
    .param p1    # Lcom/bytedance/bdtracker/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/e3;->d:Lcom/bytedance/bdtracker/e0;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/bdtracker/e3;->a:Lcom/bytedance/bdtracker/d;

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/bdtracker/e3;->b:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 27
    .line 28
    const-string v0, "engine.appLog"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/bytedance/bdtracker/e3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/oneid/IDBindCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "identities"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v1, Lcom/bytedance/bdtracker/e3$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/bdtracker/e3$a;-><init>(Lcom/bytedance/bdtracker/e3;Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    return-void
.end method
