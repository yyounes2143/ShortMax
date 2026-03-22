.class public final Lcom/moloco/sdk/internal/publisher/nativead/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/c$a;,
        Lcom/moloco/sdk/internal/publisher/nativead/c$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,319:1\n808#2,11:320\n*S KotlinDebug\n*F\n+ 1 NativeAdLoader.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdLoader\n*L\n243#1:320,11\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/moloco/sdk/internal/publisher/nativead/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:I


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/publisher/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/publisher/nativead/parser/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/publisher/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/internal/services/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/acm/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/moloco/sdk/internal/scheduling/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->l:Lcom/moloco/sdk/internal/publisher/nativead/c$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->m:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/o;Lcom/moloco/sdk/internal/publisher/nativead/parser/a;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/l;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/publisher/nativead/parser/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/publisher/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/services/l;
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
    const-string v0, "adUnitId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bidLoader"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ortbResponseParser"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "createLoadTimeoutManager"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "metricsRecorder"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "timeProvider"

    .line 32
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->a:Landroid/content/Context;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->c:Lcom/moloco/sdk/internal/publisher/o;

    .line 51
    .line 52
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->d:Lcom/moloco/sdk/internal/publisher/nativead/parser/a;

    .line 53
    .line 54
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->e:Lcom/moloco/sdk/internal/publisher/w;

    .line 55
    .line 56
    iput-object p6, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 57
    .line 58
    iput-object p7, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->g:Lcom/moloco/sdk/internal/services/j;

    .line 59
    .line 60
    iput-object p8, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->h:Lcom/moloco/sdk/internal/services/l;

    .line 61
    .line 62
    sget-object p1, Lcom/moloco/sdk/publisher/AdFormatType;->NATIVE:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->i:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 65
    .line 66
    sget-object p2, Lcom/moloco/sdk/internal/client_metrics_data/d;->q:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p6, p2}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    sget-object p3, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 87
    .line 88
    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string/jumbo p4, "toLowerCase(...)"

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3, p1}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->j:Lcom/moloco/sdk/acm/e;

    .line 103
    .line 104
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->k:Lcom/moloco/sdk/internal/scheduling/a;

    .line 109
    .line 110
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->i:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c;->g(Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/moloco/sdk/internal/publisher/nativead/c;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c;->i(Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/internal/publisher/nativead/c;Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c;->j(Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/internal/publisher/nativead/c;Ljava/util/List;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c;->k(Ljava/util/List;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/moloco/sdk/internal/publisher/nativead/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/acm/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->j:Lcom/moloco/sdk/acm/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/scheduling/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->k:Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/acm/recorder/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/services/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->g:Lcom/moloco/sdk/internal/services/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/moloco/sdk/internal/publisher/nativead/c;)Lcom/moloco/sdk/internal/services/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->h:Lcom/moloco/sdk/internal/services/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/nativead/model/a;Lcom/moloco/sdk/internal/publisher/s0;JLrs/c;)Ljava/lang/Object;
    .locals 20
    .param p1    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/publisher/nativead/model/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "J",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-wide/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    instance-of v3, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$e;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/moloco/sdk/internal/publisher/nativead/c$e;

    .line 13
    .line 14
    iget v4, v3, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v7, v4, v5

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 24
    .line 25
    :goto_0
    move-object v7, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lcom/moloco/sdk/internal/publisher/nativead/c$e;

    .line 28
    .line 29
    invoke-direct {v3, v6, v2}, Lcom/moloco/sdk/internal/publisher/nativead/c$e;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->k:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    const/4 v10, 0x2

    .line 43
    const/4 v11, 0x1

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    if-eq v3, v11, :cond_3

    .line 47
    .line 48
    if-eq v3, v10, :cond_2

    .line 49
    .line 50
    if-ne v3, v9, :cond_1

    .line 51
    .line 52
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/moloco/sdk/internal/c0;

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/moloco/sdk/internal/c0;

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_3
    iget-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->j:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/moloco/sdk/internal/publisher/s0;

    .line 81
    .line 82
    iget-object v1, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->i:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 85
    .line 86
    iget-object v3, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 89
    .line 90
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v19, v1

    .line 94
    .line 95
    move-object v1, v0

    .line 96
    move-object/from16 v0, v19

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object v12, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "nativeAd load has "

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " to load the ad"

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    const/16 v17, 0xc

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    const-string v13, "NativeAdLoader"

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v6, Lcom/moloco/sdk/internal/publisher/nativead/c;->e:Lcom/moloco/sdk/internal/publisher/w;

    .line 139
    .line 140
    invoke-virtual {v2, v0, v1}, Lcom/moloco/sdk/internal/publisher/w;->a(J)J

    .line 141
    .line 142
    .line 143
    move-result-wide v12

    .line 144
    new-instance v14, Lcom/moloco/sdk/internal/publisher/nativead/c$f;

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    move-object v0, v14

    .line 148
    move-object/from16 v1, p0

    .line 149
    .line 150
    move-object/from16 v2, p2

    .line 151
    .line 152
    move-wide v3, v12

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/nativead/c$f;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)V

    .line 154
    .line 155
    .line 156
    iput-object v6, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 157
    .line 158
    move-object/from16 v0, p1

    .line 159
    .line 160
    iput-object v0, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->i:Ljava/lang/Object;

    .line 161
    .line 162
    move-object/from16 v1, p3

    .line 163
    .line 164
    iput-object v1, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->j:Ljava/lang/Object;

    .line 165
    .line 166
    iput v11, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 167
    .line 168
    invoke-static {v12, v13, v14, v7}, Lkotlinx/coroutines/TimeoutKt;->f(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-ne v2, v8, :cond_5

    .line 173
    .line 174
    return-object v8

    .line 175
    :cond_5
    move-object v3, v6

    .line 176
    :goto_2
    check-cast v2, Lcom/moloco/sdk/internal/g0;

    .line 177
    .line 178
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 179
    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v11, "Handling native ad load result: "

    .line 186
    .line 187
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    const/16 v16, 0xc

    .line 198
    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    const-string v12, "NativeAdLoader"

    .line 202
    .line 203
    const/4 v14, 0x0

    .line 204
    const/4 v15, 0x0

    .line 205
    move-object v11, v4

    .line 206
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    if-nez v2, :cond_7

    .line 211
    .line 212
    const/16 v16, 0xc

    .line 213
    .line 214
    const/16 v17, 0x0

    .line 215
    .line 216
    const-string v12, "NativeAdLoader"

    .line 217
    .line 218
    const-string v13, "Native ad load timeout"

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    const/4 v15, 0x0

    .line 222
    move-object v11, v4

    .line 223
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v3, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 227
    .line 228
    sget-object v4, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_TIMEOUT_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 229
    .line 230
    sget-object v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 231
    .line 232
    invoke-static {v2, v4, v9}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iput-object v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->i:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->j:Ljava/lang/Object;

    .line 241
    .line 242
    iput v10, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 243
    .line 244
    invoke-virtual {v3, v1, v2, v0, v7}, Lcom/moloco/sdk/internal/publisher/nativead/c;->h(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-ne v0, v8, :cond_6

    .line 249
    .line 250
    return-object v8

    .line 251
    :cond_6
    move-object v0, v2

    .line 252
    :goto_3
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/Exception;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/c0;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    goto :goto_5

    .line 272
    :cond_7
    instance-of v4, v2, Lcom/moloco/sdk/internal/g0$a;

    .line 273
    .line 274
    if-eqz v4, :cond_9

    .line 275
    .line 276
    iget-object v4, v3, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 277
    .line 278
    sget-object v10, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 279
    .line 280
    check-cast v2, Lcom/moloco/sdk/internal/g0$a;

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 287
    .line 288
    invoke-static {v4, v10, v2}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iput-object v2, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->h:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->i:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v5, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->j:Ljava/lang/Object;

    .line 297
    .line 298
    iput v9, v7, Lcom/moloco/sdk/internal/publisher/nativead/c$e;->m:I

    .line 299
    .line 300
    invoke-virtual {v3, v1, v2, v0, v7}, Lcom/moloco/sdk/internal/publisher/nativead/c;->h(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-ne v0, v8, :cond_8

    .line 305
    .line 306
    return-object v8

    .line 307
    :cond_8
    move-object v0, v2

    .line 308
    :goto_4
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 309
    .line 310
    new-instance v1, Ljava/lang/Exception;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/c0;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    goto :goto_5

    .line 328
    :cond_9
    instance-of v0, v2, Lcom/moloco/sdk/internal/g0$b;

    .line 329
    .line 330
    if-eqz v0, :cond_a

    .line 331
    .line 332
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 333
    .line 334
    check-cast v2, Lcom/moloco/sdk/internal/g0$b;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    :goto_5
    return-object v0

    .line 345
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 346
    .line 347
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 348
    .line 349
    .line 350
    throw v0
.end method

.method public final g(Lcom/moloco/sdk/internal/publisher/nativead/model/a;JLrs/c;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/d;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 3
    .line 4
    instance-of v2, v1, Lcom/moloco/sdk/internal/publisher/nativead/c$c;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;

    .line 10
    .line 11
    iget v3, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 12
    .line 13
    const/high16 v4, -0x80000000

    .line 14
    .line 15
    and-int v5, v3, v4

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    iput v3, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/c$c;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->k:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v4, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const-string/jumbo v6, "toLowerCase(...)"

    .line 38
    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    iget-object v3, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->j:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lcom/moloco/sdk/acm/e;

    .line 47
    .line 48
    iget-object v4, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->i:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->h:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->g:Lcom/moloco/sdk/internal/services/j;

    .line 73
    .line 74
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->g:Lcom/moloco/sdk/internal/services/j;

    .line 79
    .line 80
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    sub-long/2addr v9, v7

    .line 85
    invoke-static/range {p2 .. p3}, Lkotlin/time/b;->q(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    sub-long/2addr v7, v9

    .line 90
    const-wide/16 v9, 0x0

    .line 91
    .line 92
    invoke-static {v7, v8, v9, v10}, Lkotlin/ranges/e;->f(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 97
    .line 98
    invoke-static {v7, v8, v1}, Lkotlin/time/c;->t(JLkotlin/time/DurationUnit;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;->a()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    instance-of v10, v9, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 126
    .line 127
    if-eqz v10, :cond_3

    .line 128
    .line 129
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    const-string/jumbo v1, "video"

    .line 140
    .line 141
    .line 142
    :goto_2
    move-object v4, v1

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    const-string v1, "image"

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :goto_3
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 148
    .line 149
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/d;->k:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 150
    .line 151
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-interface {v1, v9}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v9, v0, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 160
    .line 161
    new-instance v10, Lcom/moloco/sdk/acm/b;

    .line 162
    .line 163
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/a;->m:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 164
    .line 165
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-direct {v10, v11}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 173
    .line 174
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 179
    .line 180
    invoke-virtual {v4, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10, v11, v12}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-interface {v9, v10}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;->a()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    iput-object v0, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->h:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v4, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->i:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v1, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->j:Ljava/lang/Object;

    .line 203
    .line 204
    iput v5, v2, Lcom/moloco/sdk/internal/publisher/nativead/c$c;->m:I

    .line 205
    .line 206
    invoke-virtual {p0, v9, v7, v8, v2}, Lcom/moloco/sdk/internal/publisher/nativead/c;->k(Ljava/util/List;JLrs/c;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-ne v2, v3, :cond_6

    .line 211
    .line 212
    return-object v3

    .line 213
    :cond_6
    move-object v3, v1

    .line 214
    move-object v1, v2

    .line 215
    move-object v2, v0

    .line 216
    :goto_4
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    .line 217
    .line 218
    instance-of v5, v1, Lcom/moloco/sdk/internal/g0$a;

    .line 219
    .line 220
    if-eqz v5, :cond_7

    .line 221
    .line 222
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 223
    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v8, "NativeAd load failed: "

    .line 230
    .line 231
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    check-cast v1, Lcom/moloco/sdk/internal/g0$a;

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    check-cast v8, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 241
    .line 242
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    const/16 v12, 0xc

    .line 254
    .line 255
    const/4 v13, 0x0

    .line 256
    const-string v8, "NativeAdLoader"

    .line 257
    .line 258
    const/4 v10, 0x0

    .line 259
    const/4 v11, 0x0

    .line 260
    invoke-static/range {v7 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v5, v2, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 264
    .line 265
    new-instance v7, Lcom/moloco/sdk/acm/b;

    .line 266
    .line 267
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/a;->n:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 268
    .line 269
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-direct {v7, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 277
    .line 278
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    const-string v10, "failure"

    .line 283
    .line 284
    invoke-virtual {v7, v9, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 289
    .line 290
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 295
    .line 296
    invoke-virtual {v4, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v11, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    sget-object v11, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 308
    .line 309
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    check-cast v14, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 318
    .line 319
    invoke-virtual {v14}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-interface {v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;->a()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    invoke-virtual {v7, v13, v14}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    check-cast v13, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 336
    .line 337
    invoke-virtual {v13}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->b()I

    .line 338
    .line 339
    .line 340
    move-result v13

    .line 341
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    const-string v14, "asset_id"

    .line 346
    .line 347
    invoke-virtual {v7, v14, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-interface {v5, v7}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 352
    .line 353
    .line 354
    iget-object v2, v2, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 355
    .line 356
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v3, v5, v10}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v4, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v11}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 388
    .line 389
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-interface {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;->a()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 406
    .line 407
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->b()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v3, v14, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 420
    .line 421
    .line 422
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;

    .line 429
    .line 430
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/nativead/parser/b;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    goto :goto_5

    .line 438
    :cond_7
    instance-of v5, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 439
    .line 440
    if-eqz v5, :cond_8

    .line 441
    .line 442
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 443
    .line 444
    const/16 v12, 0xc

    .line 445
    .line 446
    const/4 v13, 0x0

    .line 447
    const-string v8, "NativeAdLoader"

    .line 448
    .line 449
    const-string v9, "NativeAd load successfully parsed and loaded all assets"

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    const/4 v11, 0x0

    .line 453
    invoke-static/range {v7 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    iget-object v5, v2, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 457
    .line 458
    new-instance v7, Lcom/moloco/sdk/acm/b;

    .line 459
    .line 460
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/a;->n:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 461
    .line 462
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-direct {v7, v8}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    sget-object v8, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 470
    .line 471
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    const-string/jumbo v10, "success"

    .line 476
    .line 477
    .line 478
    invoke-virtual {v7, v9, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 483
    .line 484
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 489
    .line 490
    invoke-virtual {v4, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v13

    .line 494
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7, v11, v13}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    invoke-interface {v5, v7}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 502
    .line 503
    .line 504
    iget-object v2, v2, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 505
    .line 506
    invoke-virtual {v8}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v3, v5, v10}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-virtual {v4, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v5, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 530
    .line 531
    .line 532
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 533
    .line 534
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    :goto_5
    return-object v2

    .line 544
    :cond_8
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 545
    .line 546
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 547
    .line 548
    .line 549
    throw v1
.end method

.method public final h(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lcom/moloco/sdk/internal/c0;",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->k:Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/moloco/sdk/internal/publisher/nativead/c$d;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/moloco/sdk/internal/publisher/nativead/c$d;-><init>(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p4}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1
.end method

.method public final i(Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/e;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/c$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->m:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c$g;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->m:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 44
    .line 45
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->j:Ljava/lang/Object;

    .line 59
    .line 60
    move-object p3, p1

    .line 61
    check-cast p3, Lcom/moloco/sdk/internal/publisher/s0;

    .line 62
    .line 63
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->i:Ljava/lang/Object;

    .line 64
    .line 65
    move-object p2, p1

    .line 66
    check-cast p2, Lcom/moloco/sdk/acm/e;

    .line 67
    .line 68
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 71
    .line 72
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->c:Lcom/moloco/sdk/internal/publisher/o;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 82
    .line 83
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->h:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->i:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object p3, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->j:Ljava/lang/Object;

    .line 88
    .line 89
    iput v4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->m:I

    .line 90
    .line 91
    invoke-virtual {p4, v2, p1, v0}, Lcom/moloco/sdk/internal/publisher/o;->b(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    if-ne p4, v1, :cond_4

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_4
    move-object p1, p0

    .line 99
    :goto_1
    check-cast p4, Lcom/moloco/sdk/internal/g0;

    .line 100
    .line 101
    instance-of v2, p4, Lcom/moloco/sdk/internal/g0$a;

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    iget-object v2, p1, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 106
    .line 107
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v5, "failure"

    .line 114
    .line 115
    invoke-virtual {p2, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    sget-object v6, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {p2, v5, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    iget-object v8, p1, Lcom/moloco/sdk/internal/publisher/nativead/c;->i:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 146
    .line 147
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 152
    .line 153
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const-string/jumbo v10, "toLowerCase(...)"

    .line 158
    .line 159
    .line 160
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v7, v8}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-interface {v2, p2}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p1, Lcom/moloco/sdk/internal/publisher/nativead/c;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 171
    .line 172
    new-instance v2, Lcom/moloco/sdk/acm/b;

    .line 173
    .line 174
    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/a;->l:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 175
    .line 176
    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-direct {v2, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v6}, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->getErrorCode()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v2, v4, v6}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    iget-object v5, p1, Lcom/moloco/sdk/internal/publisher/nativead/c;->i:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v4, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {p2, v2}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 221
    .line 222
    .line 223
    move-object p2, p4

    .line 224
    check-cast p2, Lcom/moloco/sdk/internal/g0$a;

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Lcom/moloco/sdk/internal/c0;

    .line 231
    .line 232
    iput-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->h:Ljava/lang/Object;

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->i:Ljava/lang/Object;

    .line 236
    .line 237
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->j:Ljava/lang/Object;

    .line 238
    .line 239
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$g;->m:I

    .line 240
    .line 241
    invoke-virtual {p1, p3, p2, v2, v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->h(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-ne p1, v1, :cond_5

    .line 246
    .line 247
    return-object v1

    .line 248
    :cond_5
    move-object p1, p4

    .line 249
    :goto_2
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 250
    .line 251
    new-instance p2, Ljava/lang/Exception;

    .line 252
    .line 253
    check-cast p1, Lcom/moloco/sdk/internal/g0$a;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Lcom/moloco/sdk/internal/c0;

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    goto :goto_3

    .line 277
    :cond_6
    instance-of p1, p4, Lcom/moloco/sdk/internal/g0$b;

    .line 278
    .line 279
    if-eqz p1, :cond_7

    .line 280
    .line 281
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 282
    .line 283
    check-cast p4, Lcom/moloco/sdk/internal/g0$b;

    .line 284
    .line 285
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    :goto_3
    return-object p1

    .line 294
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 295
    .line 296
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 297
    .line 298
    .line 299
    throw p1
.end method

.method public final j(Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/c$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c$h;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->l:I

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
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->h:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->d:Lcom/moloco/sdk/internal/publisher/nativead/parser/a;

    .line 56
    .line 57
    invoke-virtual {p4, p1}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 68
    .line 69
    const/16 v9, 0x8

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const-string v5, "NativeAdLoader"

    .line 73
    .line 74
    const-string v6, "handleOrtbParsing"

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->b:Ljava/lang/String;

    .line 81
    .line 82
    sget-object v2, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 83
    .line 84
    sget-object v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/f;

    .line 85
    .line 86
    invoke-static {p4, v2, v4}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->h:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->i:Ljava/lang/Object;

    .line 93
    .line 94
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$h;->l:I

    .line 95
    .line 96
    invoke-virtual {p0, p3, p4, p2, v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->h(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;Lrs/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-ne p2, v1, :cond_3

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final k(Ljava/util/List;JLrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            ">;J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/d;",
            "Lcom/moloco/sdk/internal/publisher/nativead/parser/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/c$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c$k;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;->j:I

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
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->a:Landroid/content/Context;

    .line 54
    .line 55
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$k;->j:I

    .line 56
    .line 57
    invoke-static {p4, p1, p2, p3, v0}, Lcom/moloco/sdk/internal/publisher/nativead/parser/c;->b(Landroid/content/Context;Ljava/util/List;JLrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    if-ne p4, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    check-cast p4, Lcom/moloco/sdk/internal/g0;

    .line 65
    .line 66
    instance-of p1, p4, Lcom/moloco/sdk/internal/g0$b;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    new-instance p1, Lcom/moloco/sdk/internal/g0$b;

    .line 71
    .line 72
    check-cast p4, Lcom/moloco/sdk/internal/g0$b;

    .line 73
    .line 74
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    instance-of p1, p4, Lcom/moloco/sdk/internal/g0$a;

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 87
    .line 88
    check-cast p4, Lcom/moloco/sdk/internal/g0$a;

    .line 89
    .line 90
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Ljava/lang/Throwable;

    .line 96
    .line 97
    const/16 v5, 0x8

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    const-string v1, "NativeAdLoader"

    .line 101
    .line 102
    const-string v2, "NativeAd prepareAssets failed"

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/moloco/sdk/internal/g0$a;

    .line 109
    .line 110
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-direct {p1, p2}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-object p1

    .line 118
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 119
    .line 120
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method public final l(Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/acm/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/e;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/moloco/sdk/internal/publisher/nativead/c$b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/publisher/nativead/c$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/publisher/nativead/c$i;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;->j:I

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
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c;->k:Lcom/moloco/sdk/internal/scheduling/a;

    .line 54
    .line 55
    invoke-interface {p4}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    new-instance v2, Lcom/moloco/sdk/internal/publisher/nativead/c$j;

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    move-object v4, v2

    .line 63
    move-object v5, p0

    .line 64
    move-object v6, p2

    .line 65
    move-object v7, p1

    .line 66
    move-object v8, p3

    .line 67
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/internal/publisher/nativead/c$j;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/acm/e;Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/s0;Lrs/c;)V

    .line 68
    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/nativead/c$i;->j:I

    .line 71
    .line 72
    invoke-static {p4, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    if-ne p4, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Result;

    .line 80
    .line 81
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method
