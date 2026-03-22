.class public final Lcom/moloco/sdk/internal/publisher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/AdLoad;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/d$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/moloco/sdk/internal/publisher/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:I


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/time/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/ortb/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/publisher/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/internal/services/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/moloco/sdk/internal/ortb/model/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lcom/moloco/sdk/acm/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/d;->o:Lcom/moloco/sdk/internal/publisher/d$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/d;->p:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lgt/g0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/ortb/a;Lcom/moloco/sdk/internal/publisher/k0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/internal/services/l;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/ortb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/publisher/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/services/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/time/b;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;",
            ">;",
            "Lcom/moloco/sdk/internal/ortb/a;",
            "Lcom/moloco/sdk/internal/publisher/k0;",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            "Lcom/moloco/sdk/internal/services/l;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "timeout"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "adUnitId"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "recreateXenossAdLoader"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "parseBidResponse"

    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "adLoadPreprocessor"

    .line 28
    .line 29
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "adFormatType"

    .line 33
    .line 34
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "webViewChecker"

    .line 38
    .line 39
    .line 40
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "metricsRecorder"

    .line 44
    .line 45
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/d;->a:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/d;->b:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/d;->c:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/d;->d:Lcom/moloco/sdk/internal/ortb/a;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/moloco/sdk/internal/publisher/d;->e:Lcom/moloco/sdk/internal/publisher/k0;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/moloco/sdk/internal/publisher/d;->f:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/moloco/sdk/internal/publisher/d;->g:Lcom/moloco/sdk/internal/services/l;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/moloco/sdk/internal/publisher/d;->h:Lcom/moloco/sdk/acm/recorder/a;

    .line 66
    .line 67
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p1, p2}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->i:Lgt/g0;

    .line 80
    .line 81
    sget-object p1, Lcom/moloco/sdk/internal/client_metrics_data/d;->j:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p9, p1}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->m:Lcom/moloco/sdk/acm/e;

    .line 92
    .line 93
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->m:Lcom/moloco/sdk/acm/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/d;->b(Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d;->e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/d;->i(Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/moloco/sdk/internal/publisher/d;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/publisher/d;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->f:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->l:Lcom/moloco/sdk/internal/ortb/model/e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->l:Lcom/moloco/sdk/internal/ortb/model/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/moloco/sdk/internal/publisher/d;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->n:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/acm/recorder/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->h:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->d:Lcom/moloco/sdk/internal/ortb/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/moloco/sdk/internal/publisher/d;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/moloco/sdk/internal/publisher/d;)Lgt/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->i:Lgt/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic t(Lcom/moloco/sdk/internal/publisher/d;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/d;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/e;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/moloco/sdk/internal/ortb/model/s;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/s;->c()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return-object p1
.end method

.method public final e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/internal/publisher/d$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/d$c;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/d$c;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/d$c;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/d$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/moloco/sdk/internal/publisher/d$c;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/internal/publisher/d$c;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/d$c;->k:I

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
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/d$c;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/moloco/sdk/internal/publisher/d;->e:Lcom/moloco/sdk/internal/publisher/k0;

    .line 58
    .line 59
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/d$c;->h:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/d$c;->k:I

    .line 62
    .line 63
    invoke-interface {p2, p1, v0}, Lcom/moloco/sdk/internal/publisher/k0;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-ne p2, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    return-object p2

    .line 75
    :cond_4
    return-object p1
.end method

.method public final i(Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d;->n:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d;->i:Lgt/g0;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/internal/publisher/d$d;

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    move-object v4, v0

    .line 16
    move-object v5, p0

    .line 17
    move-object v6, p1

    .line 18
    move-wide v7, p2

    .line 19
    move-object v9, p4

    .line 20
    invoke-direct/range {v4 .. v10}, Lcom/moloco/sdk/internal/publisher/d$d;-><init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;JLcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v6, v0

    .line 28
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->n:Lkotlinx/coroutines/r;

    .line 33
    .line 34
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/internal/publisher/d;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/AdLoad$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "bidResponseJson"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d;->g:Lcom/moloco/sdk/internal/services/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/l;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "WebView Error: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "AdLoad"

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/moloco/sdk/internal/MolocoLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d;->b:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_WEBVIEW_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/moloco/sdk/publisher/MolocoAdErrorKt;->createAdErrorInfo(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;)Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p2, p1}, Lcom/moloco/sdk/publisher/AdLoad$Listener;->onAdLoadFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "load() called with bidResponseJson: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const/4 v11, 0x4

    .line 91
    const/4 v12, 0x0

    .line 92
    const-string v8, "AdLoadImpl"

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    invoke-static/range {v7 .. v12}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d;->m:Lcom/moloco/sdk/acm/e;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/moloco/sdk/acm/e;->d()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d;->h:Lcom/moloco/sdk/acm/recorder/a;

    .line 104
    .line 105
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 106
    .line 107
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->j:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/d;->f:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const-string/jumbo v4, "toLowerCase(...)"

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d;->i:Lgt/g0;

    .line 148
    .line 149
    new-instance v10, Lcom/moloco/sdk/internal/publisher/d$b;

    .line 150
    .line 151
    const/4 v7, 0x0

    .line 152
    move-object v1, v10

    .line 153
    move-object v2, p0

    .line 154
    move-object v3, p1

    .line 155
    move-object v4, p2

    .line 156
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/d$b;-><init>(Lcom/moloco/sdk/internal/publisher/d;Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;JLrs/c;)V

    .line 157
    .line 158
    .line 159
    const/4 v11, 0x3

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    move-object v7, v0

    .line 163
    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 164
    .line 165
    .line 166
    return-void
.end method
