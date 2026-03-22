.class public final Lcom/moloco/sdk/internal/services/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/r;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/moloco/sdk/internal/services/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I


# instance fields
.field public final a:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/g;->e:Lcom/moloco/sdk/internal/services/g$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/g;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fgBgListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/g;->a:Landroidx/lifecycle/Lifecycle;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/g;->b:Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    .line 17
    .line 18
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/moloco/sdk/internal/scheduling/a;->a()Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/g;->c:Lgt/g0;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/services/g;)Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/g;->b:Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/services/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/g;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 2
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AnalyticsApplicationLifecycleTrackerImpl"

    const-string v2, "Start observing application lifecycle events"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    iget-object v6, p0, Lcom/moloco/sdk/internal/services/g;->c:Lgt/g0;

    new-instance v9, Lcom/moloco/sdk/internal/services/g$b;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/moloco/sdk/internal/services/g$b;-><init>(Lcom/moloco/sdk/internal/services/g;Lrs/c;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/g;->c:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcom/moloco/sdk/internal/services/g$c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/moloco/sdk/internal/services/g$c;-><init>(Lcom/moloco/sdk/internal/services/g;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/services/g;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v2, "AnalyticsApplicationLifecycleTrackerImpl"

    .line 10
    .line 11
    const-string v3, "Observing application lifecycle events"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/g;->a:Landroidx/lifecycle/Lifecycle;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/g;->b:Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/moloco/sdk/internal/services/g;->d:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method
