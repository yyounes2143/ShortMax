.class public final Lio/bidmachine/rendering/internal/animation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Leq/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/g0;Lio/bidmachine/rendering/internal/h;)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/internal/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coroutineScope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineDispatchers"

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
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 15
    .line 16
    iput-object p2, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method private final k(Landroid/view/View;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrs/c<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->i()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/animation/i$g;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Lio/bidmachine/rendering/internal/animation/i$g;-><init>(Landroid/view/View;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static final synthetic l(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i;->n(Ltp/f;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i;->o(Ltp/g;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n(Ltp/f;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltp/f;",
            "Lrs/c<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->i()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/animation/i$h;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Lio/bidmachine/rendering/internal/animation/i$h;-><init>(Ltp/f;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final o(Ltp/g;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltp/g;",
            "Lrs/c<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->i()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/animation/i$i;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Lio/bidmachine/rendering/internal/animation/i$i;-><init>(Ltp/g;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static final synthetic p(Lio/bidmachine/rendering/internal/animation/i;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    move-result-object v1

    new-instance v3, Lio/bidmachine/rendering/internal/animation/i$n;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lio/bidmachine/rendering/internal/animation/i$n;-><init>(Lio/bidmachine/rendering/internal/animation/i;Lrs/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public a(Ltp/f;)V
    .locals 7
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    move-result-object v2

    new-instance v4, Lio/bidmachine/rendering/internal/animation/i$l;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/rendering/internal/animation/i$l;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lrs/c;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leq/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leq/b;->g()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ltp/g;)V
    .locals 7
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adPhase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lio/bidmachine/rendering/internal/animation/i$m;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/rendering/internal/animation/i$m;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 12
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v8, p0

    .line 2
    const-string v0, "adPhase"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "eventType"

    .line 9
    .line 10
    move-object v3, p2

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v8, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 15
    .line 16
    iget-object v0, v8, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    new-instance v11, Lio/bidmachine/rendering/internal/animation/i$e;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v0, v11

    .line 26
    move-object v1, p0

    .line 27
    move v4, p3

    .line 28
    move-object/from16 v5, p4

    .line 29
    .line 30
    move-object/from16 v6, p5

    .line 31
    .line 32
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/animation/i$e;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v1, v9

    .line 39
    move-object v2, v10

    .line 40
    move-object v4, v11

    .line 41
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public e(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 12
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v8, p0

    .line 2
    const-string v0, "adElement"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "eventType"

    .line 9
    .line 10
    move-object v3, p2

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v8, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 15
    .line 16
    iget-object v0, v8, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    new-instance v11, Lio/bidmachine/rendering/internal/animation/i$d;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v0, v11

    .line 26
    move-object v1, p0

    .line 27
    move v4, p3

    .line 28
    move-object/from16 v5, p4

    .line 29
    .line 30
    move-object/from16 v6, p5

    .line 31
    .line 32
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/animation/i$d;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v1, v9

    .line 39
    move-object v2, v10

    .line 40
    move-object v4, v11

    .line 41
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public f(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 12
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v8, p0

    .line 2
    const-string v0, "adElement"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "eventType"

    .line 9
    .line 10
    move-object v3, p2

    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v8, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 15
    .line 16
    iget-object v0, v8, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    new-instance v11, Lio/bidmachine/rendering/internal/animation/i$j;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v0, v11

    .line 26
    move-object v1, p0

    .line 27
    move v4, p3

    .line 28
    move-object/from16 v5, p4

    .line 29
    .line 30
    move-object/from16 v6, p5

    .line 31
    .line 32
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/animation/i$j;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v1, v9

    .line 39
    move-object v2, v10

    .line 40
    move-object v4, v11

    .line 41
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public g(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;)V
    .locals 7
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adPhase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lio/bidmachine/rendering/internal/animation/i$b;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/animation/i$b;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public h(Ltp/f;ZLio/bidmachine/rendering/model/AnimationEventType;)V
    .locals 9
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adElement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i;->a:Lgt/g0;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i;->b:Lio/bidmachine/rendering/internal/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v0, Lio/bidmachine/rendering/internal/animation/i$a;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v3, v0

    .line 23
    move-object v4, p0

    .line 24
    move-object v5, p1

    .line 25
    move v6, p2

    .line 26
    move-object v7, p3

    .line 27
    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/internal/animation/i$a;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;ZLio/bidmachine/rendering/model/AnimationEventType;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v4, v0

    .line 34
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public i(Landroid/view/View;Leq/b;Lio/bidmachine/rendering/model/AnimationEventType;ZLrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leq/b;",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lio/bidmachine/rendering/internal/animation/i$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lio/bidmachine/rendering/internal/animation/i$c;

    .line 7
    .line 8
    iget v1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/bidmachine/rendering/internal/animation/i$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lio/bidmachine/rendering/internal/animation/i$c;-><init>(Lio/bidmachine/rendering/internal/animation/i;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lio/bidmachine/rendering/internal/animation/i$c;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/bidmachine/rendering/internal/animation/i$c;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->j:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p3, p1

    .line 41
    check-cast p3, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 42
    .line 43
    iget-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->i:Ljava/lang/Object;

    .line 44
    .line 45
    move-object p2, p1

    .line 46
    check-cast p2, Leq/b;

    .line 47
    .line 48
    iget-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Landroid/view/View;

    .line 51
    .line 52
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p5, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {p5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    if-eqz p4, :cond_3

    .line 81
    .line 82
    iput-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$c;->h:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$c;->i:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object p3, v0, Lio/bidmachine/rendering/internal/animation/i$c;->j:Ljava/lang/Object;

    .line 87
    .line 88
    iput v3, v0, Lio/bidmachine/rendering/internal/animation/i$c;->m:I

    .line 89
    .line 90
    invoke-direct {p0, p1, v0}, Lio/bidmachine/rendering/internal/animation/i;->k(Landroid/view/View;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    if-ne p4, v1, :cond_3

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {p2, p1, p3}, Leq/b;->d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1
.end method

.method public j(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "ZZ",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p7, Lio/bidmachine/rendering/internal/animation/i$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p7

    .line 6
    check-cast v0, Lio/bidmachine/rendering/internal/animation/i$f;

    .line 7
    .line 8
    iget v1, v0, Lio/bidmachine/rendering/internal/animation/i$f;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/bidmachine/rendering/internal/animation/i$f;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/bidmachine/rendering/internal/animation/i$f;

    .line 21
    .line 22
    invoke-direct {v0, p0, p7}, Lio/bidmachine/rendering/internal/animation/i$f;-><init>(Lio/bidmachine/rendering/internal/animation/i;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p7, v0, Lio/bidmachine/rendering/internal/animation/i$f;->n:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/bidmachine/rendering/internal/animation/i$f;->p:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p3, v0, Lio/bidmachine/rendering/internal/animation/i$f;->m:Z

    .line 39
    .line 40
    iget-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$f;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Leq/b;

    .line 43
    .line 44
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$f;->k:Ljava/lang/Object;

    .line 45
    .line 46
    move-object p6, p2

    .line 47
    check-cast p6, Ljava/lang/Runnable;

    .line 48
    .line 49
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$f;->j:Ljava/lang/Object;

    .line 50
    .line 51
    move-object p5, p2

    .line 52
    check-cast p5, Ljava/lang/Runnable;

    .line 53
    .line 54
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$f;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 57
    .line 58
    iget-object p4, v0, Lio/bidmachine/rendering/internal/animation/i$f;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p4, Landroid/view/View;

    .line 61
    .line 62
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v2, p1

    .line 66
    move-object v4, p2

    .line 67
    move v7, p3

    .line 68
    move-object v3, p4

    .line 69
    move-object v5, p5

    .line 70
    move-object v6, p6

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p7, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {p7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p7

    .line 97
    check-cast p7, Leq/b;

    .line 98
    .line 99
    if-nez p7, :cond_4

    .line 100
    .line 101
    if-eqz p5, :cond_3

    .line 102
    .line 103
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 104
    .line 105
    .line 106
    :cond_3
    if-eqz p6, :cond_6

    .line 107
    .line 108
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    if-eqz p4, :cond_5

    .line 113
    .line 114
    iput-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$f;->h:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$f;->i:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p5, v0, Lio/bidmachine/rendering/internal/animation/i$f;->j:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p6, v0, Lio/bidmachine/rendering/internal/animation/i$f;->k:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p7, v0, Lio/bidmachine/rendering/internal/animation/i$f;->l:Ljava/lang/Object;

    .line 123
    .line 124
    iput-boolean p3, v0, Lio/bidmachine/rendering/internal/animation/i$f;->m:Z

    .line 125
    .line 126
    iput v3, v0, Lio/bidmachine/rendering/internal/animation/i$f;->p:I

    .line 127
    .line 128
    invoke-direct {p0, p1, v0}, Lio/bidmachine/rendering/internal/animation/i;->k(Landroid/view/View;Lrs/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    if-ne p4, v1, :cond_5

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_5
    move-object v3, p1

    .line 136
    move-object v4, p2

    .line 137
    move v7, p3

    .line 138
    move-object v5, p5

    .line 139
    move-object v6, p6

    .line 140
    move-object v2, p7

    .line 141
    :goto_1
    invoke-virtual/range {v2 .. v7}, Leq/b;->e(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p1
.end method

.method public q(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "ZZ",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p7, Lio/bidmachine/rendering/internal/animation/i$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p7

    .line 6
    check-cast v0, Lio/bidmachine/rendering/internal/animation/i$k;

    .line 7
    .line 8
    iget v1, v0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/bidmachine/rendering/internal/animation/i$k;

    .line 21
    .line 22
    invoke-direct {v0, p0, p7}, Lio/bidmachine/rendering/internal/animation/i$k;-><init>(Lio/bidmachine/rendering/internal/animation/i;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p7, v0, Lio/bidmachine/rendering/internal/animation/i$k;->n:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p3, v0, Lio/bidmachine/rendering/internal/animation/i$k;->m:Z

    .line 39
    .line 40
    iget-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$k;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Leq/b;

    .line 43
    .line 44
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$k;->k:Ljava/lang/Object;

    .line 45
    .line 46
    move-object p6, p2

    .line 47
    check-cast p6, Ljava/lang/Runnable;

    .line 48
    .line 49
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$k;->j:Ljava/lang/Object;

    .line 50
    .line 51
    move-object p5, p2

    .line 52
    check-cast p5, Ljava/lang/Runnable;

    .line 53
    .line 54
    iget-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$k;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 57
    .line 58
    iget-object p4, v0, Lio/bidmachine/rendering/internal/animation/i$k;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p4, Landroid/view/View;

    .line 61
    .line 62
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v2, p1

    .line 66
    move-object v4, p2

    .line 67
    move v7, p3

    .line 68
    move-object v3, p4

    .line 69
    move-object v5, p5

    .line 70
    move-object v6, p6

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    invoke-static {p7}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p7, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {p7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p7

    .line 97
    check-cast p7, Leq/b;

    .line 98
    .line 99
    if-nez p7, :cond_4

    .line 100
    .line 101
    if-eqz p5, :cond_3

    .line 102
    .line 103
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 104
    .line 105
    .line 106
    :cond_3
    if-eqz p6, :cond_6

    .line 107
    .line 108
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    if-eqz p4, :cond_5

    .line 113
    .line 114
    iput-object p1, v0, Lio/bidmachine/rendering/internal/animation/i$k;->h:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p2, v0, Lio/bidmachine/rendering/internal/animation/i$k;->i:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p5, v0, Lio/bidmachine/rendering/internal/animation/i$k;->j:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p6, v0, Lio/bidmachine/rendering/internal/animation/i$k;->k:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p7, v0, Lio/bidmachine/rendering/internal/animation/i$k;->l:Ljava/lang/Object;

    .line 123
    .line 124
    iput-boolean p3, v0, Lio/bidmachine/rendering/internal/animation/i$k;->m:Z

    .line 125
    .line 126
    iput v3, v0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 127
    .line 128
    invoke-direct {p0, p1, v0}, Lio/bidmachine/rendering/internal/animation/i;->k(Landroid/view/View;Lrs/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    if-ne p4, v1, :cond_5

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_5
    move-object v3, p1

    .line 136
    move-object v4, p2

    .line 137
    move v7, p3

    .line 138
    move-object v5, p5

    .line 139
    move-object v6, p6

    .line 140
    move-object v2, p7

    .line 141
    :goto_1
    invoke-virtual {v2, v3, v4}, Leq/b;->d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {v2 .. v7}, Leq/b;->e(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method

.method public r(Landroid/view/View;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p2, p0, Lio/bidmachine/rendering/internal/animation/i;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Leq/b;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Leq/b;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
