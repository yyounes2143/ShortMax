.class public final Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/analytics/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/analytics/a;Lcom/moloco/sdk/internal/services/j;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/analytics/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "analyticsService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "timeProviderService"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->a:Lcom/moloco/sdk/internal/services/analytics/a;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->b:Lcom/moloco/sdk/internal/services/j;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "SingleObserverBackgroundThenForegroundAnalyticsListener"

    .line 14
    .line 15
    const-string v3, "Application onStart"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->c:Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v2, "SingleObserverBackgroundThenForegroundAnalyticsListener"

    .line 29
    .line 30
    const-string v3, "Background event has been recorded, recording foreground"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->b:Lcom/moloco/sdk/internal/services/j;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/j;->invoke()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->a:Lcom/moloco/sdk/internal/services/analytics/a;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/moloco/sdk/internal/services/analytics/a;->a(JJ)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->c:Ljava/lang/Long;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->d:Z

    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "SingleObserverBackgroundThenForegroundAnalyticsListener"

    .line 14
    .line 15
    const-string v3, "Application onStop"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->d:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v2, "SingleObserverBackgroundThenForegroundAnalyticsListener"

    .line 29
    .line 30
    const-string v3, "Tracking of event is true. Recording background"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->b:Lcom/moloco/sdk/internal/services/j;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/j;->invoke()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->c:Ljava/lang/Long;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;->a:Lcom/moloco/sdk/internal/services/analytics/a;

    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Lcom/moloco/sdk/internal/services/analytics/a;->a(J)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
