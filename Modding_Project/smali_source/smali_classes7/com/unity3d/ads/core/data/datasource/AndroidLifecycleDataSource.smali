.class public final Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;
.super Ljava/lang/Object;
.source "AndroidLifecycleDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final _appActive:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appActive:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->_appActive:Lkt/e;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->appActive:Lkt/i;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->registerAppLifecycle()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final registerAppLifecycle()V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/i;->b()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource$registerAppLifecycle$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource$registerAppLifecycle$1;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public appIsForeground()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->getAppActive()Lkt/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getAppActive()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->appActive:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->_appActive:Lkt/e;

    .line 12
    .line 13
    sget-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    aget p2, v0, p2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p2, v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidLifecycleDataSource;->getAppActive()Lkt/i;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p1, p2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
