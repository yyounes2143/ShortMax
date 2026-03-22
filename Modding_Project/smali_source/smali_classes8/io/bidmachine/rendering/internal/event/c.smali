.class public final Lio/bidmachine/rendering/internal/event/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq/b;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljq/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljq/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/rendering/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/EventType;",
            "Ljava/util/List<",
            "Lrq/v;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljq/d;Ljq/d;Ljq/c;Lgt/g0;Lio/bidmachine/rendering/internal/h;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljq/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljq/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/internal/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljq/d;",
            "Ljq/d;",
            "Ljq/c;",
            "Lgt/g0;",
            "Lio/bidmachine/rendering/internal/h;",
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/EventType;",
            "+",
            "Ljava/util/List<",
            "Lrq/v;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "sourceName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "stateGroupEventInterceptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "animationEventInterceptor"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callbackProcessor"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "coroutineScope"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "coroutineDispatchers"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/c;->a:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/c;->b:Ljq/d;

    .line 37
    .line 38
    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/c;->c:Ljq/d;

    .line 39
    .line 40
    iput-object p4, p0, Lio/bidmachine/rendering/internal/event/c;->d:Ljq/c;

    .line 41
    .line 42
    iput-object p5, p0, Lio/bidmachine/rendering/internal/event/c;->e:Lgt/g0;

    .line 43
    .line 44
    iput-object p6, p0, Lio/bidmachine/rendering/internal/event/c;->f:Lio/bidmachine/rendering/internal/h;

    .line 45
    .line 46
    if-nez p7, :cond_0

    .line 47
    .line 48
    new-instance p7, Ljava/util/EnumMap;

    .line 49
    .line 50
    const-class p1, Lio/bidmachine/rendering/model/EventType;

    .line 51
    .line 52
    invoke-direct {p7, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iput-object p7, p0, Lio/bidmachine/rendering/internal/event/c;->g:Ljava/util/Map;

    .line 56
    .line 57
    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/event/c;)Ljq/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/c;->c:Ljq/d;

    return-object p0
.end method

.method public static final synthetic f(Lio/bidmachine/rendering/internal/event/c;)Ljq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/c;->d:Ljq/c;

    return-object p0
.end method

.method public static final synthetic g(Lio/bidmachine/rendering/internal/event/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/c;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic h(Lio/bidmachine/rendering/internal/event/c;)Ljq/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/event/c;->b:Ljq/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 4
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final varargs e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lio/bidmachine/rendering/model/EventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/c;->e:Lgt/g0;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c;->f:Lio/bidmachine/rendering/internal/h;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->c()Lgt/c0;

    move-result-object v2

    new-instance v4, Lio/bidmachine/rendering/internal/event/c$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lio/bidmachine/rendering/internal/event/c$a;-><init>(Lio/bidmachine/rendering/internal/event/c;[Ljava/lang/Object;Lio/bidmachine/rendering/model/EventType;Lrs/c;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
