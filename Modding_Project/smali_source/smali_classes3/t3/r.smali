.class public final Lt3/r;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/r$a;,
        Lt3/r$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImagePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1154:1\n40#2,9:1155\n40#2,9:1164\n40#2,9:1180\n40#2,9:1189\n40#2,9:1198\n40#2,9:1207\n216#3,2:1173\n216#3,2:1175\n216#3,2:1178\n1#4:1177\n*S KotlinDebug\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n*L\n418#1:1155,9\n550#1:1164,9\n902#1:1180,9\n967#1:1189,9\n1005#1:1198,9\n1039#1:1207,9\n610#1:1173,2\n638#1:1175,2\n768#1:1178,2\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lt3/r$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Ljava/util/concurrent/CancellationException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final p:Ljava/util/concurrent/CancellationException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Ljava/util/concurrent/CancellationException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lt3/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lt3/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:La4/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:La4/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lr3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lr3/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lcom/facebook/imagepipeline/producers/n1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lt3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt3/r$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt3/r$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt3/r;->n:Lt3/r$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    const-string v1, "Prefetching is not enabled"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lt3/r;->o:Ljava/util/concurrent/CancellationException;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 19
    .line 20
    const-string v1, "ImageRequest is null"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt3/r;->p:Ljava/util/concurrent/CancellationException;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 28
    .line 29
    const-string v1, "Modified URL is null"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lt3/r;->q:Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lt3/s0;Ljava/util/Set;Ljava/util/Set;Lk2/k;Lr3/w;Lr3/w;Lk2/k;Lr3/j;Lcom/facebook/imagepipeline/producers/n1;Lk2/k;Lk2/k;Lcom/facebook/callercontext/a;Lt3/t;)V
    .locals 0
    .param p1    # Lt3/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lk2/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lr3/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lr3/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lk2/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lr3/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/facebook/imagepipeline/producers/n1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lk2/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lk2/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/facebook/callercontext/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lt3/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/s0;",
            "Ljava/util/Set<",
            "+",
            "La4/e;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "La4/d;",
            ">;",
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lr3/w<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lk2/k<",
            "Lt3/c;",
            ">;",
            "Lr3/j;",
            "Lcom/facebook/imagepipeline/producers/n1;",
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lk2/k<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/callercontext/a;",
            "Lt3/t;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p12, "producerSequenceFactory"

    .line 2
    .line 3
    invoke-static {p1, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p12, "requestListeners"

    .line 7
    .line 8
    invoke-static {p2, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p12, "requestListener2s"

    .line 12
    .line 13
    invoke-static {p3, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p12, "isPrefetchEnabledSupplier"

    .line 17
    .line 18
    invoke-static {p4, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p12, "bitmapMemoryCache"

    .line 22
    .line 23
    invoke-static {p5, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p12, "encodedMemoryCache"

    .line 27
    .line 28
    invoke-static {p6, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p12, "diskCachesStoreSupplier"

    .line 32
    .line 33
    invoke-static {p7, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p12, "cacheKeyFactory"

    .line 37
    .line 38
    invoke-static {p8, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p12, "threadHandoffProducerQueue"

    .line 42
    .line 43
    invoke-static {p9, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p12, "suppressBitmapPrefetchingSupplier"

    .line 47
    .line 48
    invoke-static {p10, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p12, "lazyDataSource"

    .line 52
    .line 53
    invoke-static {p11, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p12, "config"

    .line 57
    .line 58
    invoke-static {p13, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lt3/r;->a:Lt3/s0;

    .line 65
    .line 66
    iput-object p4, p0, Lt3/r;->b:Lk2/k;

    .line 67
    .line 68
    iput-object p7, p0, Lt3/r;->c:Lk2/k;

    .line 69
    .line 70
    new-instance p1, La4/c;

    .line 71
    .line 72
    invoke-direct {p1, p2}, La4/c;-><init>(Ljava/util/Set;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lt3/r;->d:La4/e;

    .line 76
    .line 77
    new-instance p1, La4/b;

    .line 78
    .line 79
    invoke-direct {p1, p3}, La4/b;-><init>(Ljava/util/Set;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lt3/r;->e:La4/d;

    .line 83
    .line 84
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lt3/r;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    .line 91
    iput-object p5, p0, Lt3/r;->f:Lr3/w;

    .line 92
    .line 93
    iput-object p6, p0, Lt3/r;->g:Lr3/w;

    .line 94
    .line 95
    iput-object p8, p0, Lt3/r;->h:Lr3/j;

    .line 96
    .line 97
    iput-object p9, p0, Lt3/r;->i:Lcom/facebook/imagepipeline/producers/n1;

    .line 98
    .line 99
    iput-object p10, p0, Lt3/r;->j:Lk2/k;

    .line 100
    .line 101
    iput-object p11, p0, Lt3/r;->l:Lk2/k;

    .line 102
    .line 103
    iput-object p13, p0, Lt3/r;->m:Lt3/t;

    .line 104
    .line 105
    return-void
.end method

.method public static synthetic a(Lf2/a;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lt3/r;->c(Lf2/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final c(Lf2/a;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public static synthetic f(Lt3/r;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;La4/e;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v4, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p3

    .line 9
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p4

    .line 16
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move-object v6, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v6, p5

    .line 23
    :goto_2
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lt3/r;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;La4/e;Ljava/lang/String;)Lcom/facebook/datasource/b;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private final m(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lt3/r;->c:Lk2/k;

    .line 2
    .line 3
    invoke-interface {v0}, Lk2/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lt3/c;

    .line 13
    .line 14
    iget-object v1, p0, Lt3/r;->h:Lr3/j;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v1, p1, v2}, Lr3/j;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lt3/c;->c()Lcom/facebook/common/internal/ImmutableMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lr3/i;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lr3/i;->h(Lf2/a;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :cond_0
    return v2

    .line 48
    :cond_1
    invoke-interface {v0}, Lt3/c;->c()Lcom/facebook/common/internal/ImmutableMap;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lr3/i;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lr3/i;->h(Lf2/a;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    return p1

    .line 89
    :cond_3
    return v2
.end method

.method private final s(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;La4/e;Ljava/lang/String;)Lcom/facebook/datasource/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "La4/e;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    const/4 v7, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lt3/r;->t(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;La4/e;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final t(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;La4/e;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Lo2/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "La4/e;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v13, p7

    .line 12
    .line 13
    invoke-static {}, Lf4/b;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    const-string v8, "getMax(...)"

    .line 20
    .line 21
    if-nez v5, :cond_2

    .line 22
    .line 23
    new-instance v14, Lcom/facebook/imagepipeline/producers/f0;

    .line 24
    .line 25
    invoke-virtual {v1, v3, v4}, Lt3/r;->k(Lcom/facebook/imagepipeline/request/ImageRequest;La4/e;)La4/e;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v5, v1, Lt3/r;->e:La4/d;

    .line 30
    .line 31
    invoke-direct {v14, v4, v5}, Lcom/facebook/imagepipeline/producers/f0;-><init>(La4/e;La4/d;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4, v2}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v15, Lcom/facebook/imagepipeline/producers/j1;

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lt3/r;->g()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lr2/d;->o(Landroid/net/Uri;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move v10, v7

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    move v10, v6

    .line 73
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/Priority;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    iget-object v12, v1, Lt3/r;->m:Lt3/t;

    .line 78
    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    move-object v2, v15

    .line 82
    move-object/from16 v3, p2

    .line 83
    .line 84
    move-object/from16 v5, p6

    .line 85
    .line 86
    move-object v6, v14

    .line 87
    move-object/from16 v7, p4

    .line 88
    .line 89
    move-object v8, v9

    .line 90
    move/from16 v9, v16

    .line 91
    .line 92
    invoke-direct/range {v2 .. v12}, Lcom/facebook/imagepipeline/producers/j1;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/e1;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lt3/t;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v15, v13}, Lcom/facebook/imagepipeline/producers/e;->putExtras(Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v15, v14}, Lu3/c;->F(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)Lcom/facebook/datasource/b;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    invoke-static {v0}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_3
    return-object v0

    .line 108
    :cond_2
    const-string v5, "ImagePipeline#submitFetchRequest"

    .line 109
    .line 110
    invoke-static {v5}, Lf4/b;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :try_start_1
    new-instance v14, Lcom/facebook/imagepipeline/producers/f0;

    .line 114
    .line 115
    invoke-virtual {v1, v3, v4}, Lt3/r;->k(Lcom/facebook/imagepipeline/request/ImageRequest;La4/e;)La4/e;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, v1, Lt3/r;->e:La4/d;

    .line 120
    .line 121
    invoke-direct {v14, v4, v5}, Lcom/facebook/imagepipeline/producers/f0;-><init>(La4/e;La4/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v4, v2}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v15, Lcom/facebook/imagepipeline/producers/j1;

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Lt3/r;->g()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_4

    .line 146
    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2}, Lr2/d;->o(Landroid/net/Uri;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_3

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_3
    move v10, v7

    .line 159
    goto :goto_5

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    goto :goto_8

    .line 162
    :catch_1
    move-exception v0

    .line 163
    goto :goto_6

    .line 164
    :cond_4
    :goto_4
    move v10, v6

    .line 165
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/Priority;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    iget-object v12, v1, Lt3/r;->m:Lt3/t;

    .line 170
    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    move-object v2, v15

    .line 174
    move-object/from16 v3, p2

    .line 175
    .line 176
    move-object/from16 v5, p6

    .line 177
    .line 178
    move-object v6, v14

    .line 179
    move-object/from16 v7, p4

    .line 180
    .line 181
    move-object v8, v9

    .line 182
    move/from16 v9, v16

    .line 183
    .line 184
    invoke-direct/range {v2 .. v12}, Lcom/facebook/imagepipeline/producers/j1;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/e1;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lt3/t;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15, v13}, Lcom/facebook/imagepipeline/producers/e;->putExtras(Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v15, v14}, Lu3/c;->F(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)Lcom/facebook/datasource/b;

    .line 191
    .line 192
    .line 193
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    goto :goto_7

    .line 195
    :goto_6
    :try_start_3
    invoke-static {v0}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 196
    .line 197
    .line 198
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :goto_7
    invoke-static {}, Lf4/b;->b()V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :goto_8
    invoke-static {}, Lf4/b;->b()V

    .line 204
    .line 205
    .line 206
    throw v0
.end method

.method private final u(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;La4/e;)Lcom/facebook/datasource/b;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "La4/e;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/producers/f0;

    .line 3
    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    invoke-virtual {p0, p2, v3}, Lt3/r;->k(Lcom/facebook/imagepipeline/request/ImageRequest;La4/e;)La4/e;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v1, Lt3/r;->e:La4/d;

    .line 12
    .line 13
    invoke-direct {v0, v3, v4}, Lcom/facebook/imagepipeline/producers/f0;-><init>(La4/e;La4/d;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "getSourceUri(...)"

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v4, Lcom/facebook/fresco/urimod/UriModifier;->INSTANCE:Lcom/facebook/fresco/urimod/UriModifierInterface;

    .line 26
    .line 27
    move-object/from16 v6, p4

    .line 28
    .line 29
    invoke-interface {v4, v3, v6}, Lcom/facebook/fresco/urimod/UriModifierInterface;->modifyPrefetchUri(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    sget-object v0, Lt3/r;->q:Ljava/util/concurrent/CancellationException;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "immediateFailedDataSource(...)"

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    :goto_0
    move-object v3, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->Q(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object/from16 v4, p3

    .line 73
    .line 74
    invoke-static {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-string v2, "getMax(...)"

    .line 79
    .line 80
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v12, Lcom/facebook/imagepipeline/producers/j1;

    .line 84
    .line 85
    invoke-virtual {p0}, Lt3/r;->g()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v2, v1, Lt3/r;->m:Lt3/t;

    .line 90
    .line 91
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v2}, Lt3/u;->b()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v5, 0x1

    .line 102
    if-ne v2, v5, :cond_2

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->q()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    move v9, v5

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    const/4 v2, 0x0

    .line 115
    move v9, v2

    .line 116
    :goto_2
    iget-object v11, v1, Lt3/r;->m:Lt3/t;

    .line 117
    .line 118
    const/4 v8, 0x1

    .line 119
    move-object v2, v12

    .line 120
    move-object v5, v0

    .line 121
    move-object/from16 v6, p4

    .line 122
    .line 123
    move-object/from16 v10, p5

    .line 124
    .line 125
    invoke-direct/range {v2 .. v11}, Lcom/facebook/imagepipeline/producers/j1;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/e1;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lt3/t;)V

    .line 126
    .line 127
    .line 128
    sget-object v2, Lu3/d;->j:Lu3/d$a;

    .line 129
    .line 130
    move-object v3, p1

    .line 131
    invoke-virtual {v2, p1, v12, v0}, Lu3/d$a;->a(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/producers/j1;La4/d;)Lcom/facebook/datasource/b;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_4

    .line 136
    :goto_3
    invoke-static {v0}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Lt3/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lt3/q;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lt3/r;->f:Lr3/w;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lr3/w;->b(Lk2/i;)I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lt3/r;->g:Lr3/w;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lr3/w;->b(Lk2/i;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;
    .locals 8
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v6, 0x18

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    invoke-static/range {v0 .. v7}, Lt3/r;->f(Lt3/r;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;La4/e;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;La4/e;Ljava/lang/String;)Lcom/facebook/datasource/b;
    .locals 8
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # La4/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "La4/e;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "immediateFailedDataSource(...)"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lt3/r;->a:Lt3/s0;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lt3/s0;->E(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/b1;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez p3, :cond_1

    .line 25
    .line 26
    sget-object p3, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 27
    .line 28
    :cond_1
    move-object v4, p3

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    move-object v1, p0

    .line 33
    move-object v3, p1

    .line 34
    move-object v5, p2

    .line 35
    move-object v6, p4

    .line 36
    move-object v7, p5

    .line 37
    invoke-direct/range {v1 .. v7}, Lt3/r;->s(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;La4/e;Ljava/lang/String;)Lcom/facebook/datasource/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-static {p1}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_2
    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/r;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final h()Lr3/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/r;->f:Lr3/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Le4/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lt3/r;->h:Lr3/j;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lr3/j;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    move-object v1, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lt3/r;->h:Lr3/j;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lr3/j;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-object v1

    .line 32
    :cond_2
    const-string v0, "ImagePipeline#getCacheKey"

    .line 33
    .line 34
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Le4/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lt3/r;->h:Lr3/j;

    .line 46
    .line 47
    invoke-interface {v0, p1, p2}, Lr3/j;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_2
    move-object v1, p1

    .line 52
    goto :goto_4

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    iget-object v0, p0, Lt3/r;->h:Lr3/j;

    .line 56
    .line 57
    invoke-interface {v0, p1, p2}, Lr3/j;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :goto_3
    invoke-static {}, Lf4/b;->b()V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_4
    :goto_4
    invoke-static {}, Lf4/b;->b()V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public final j()Lr3/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/r;->h:Lr3/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lcom/facebook/imagepipeline/request/ImageRequest;La4/e;)La4/e;
    .locals 6
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # La4/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()La4/e;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lt3/r;->d:La4/e;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, La4/c;

    .line 18
    .line 19
    iget-object v3, p0, Lt3/r;->d:La4/e;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()La4/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-array v2, v2, [La4/e;

    .line 26
    .line 27
    aput-object v3, v2, v1

    .line 28
    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    invoke-direct {p2, v2}, La4/c;-><init>([La4/e;)V

    .line 32
    .line 33
    .line 34
    move-object p1, p2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()La4/e;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    new-instance p1, La4/c;

    .line 43
    .line 44
    iget-object v3, p0, Lt3/r;->d:La4/e;

    .line 45
    .line 46
    new-array v2, v2, [La4/e;

    .line 47
    .line 48
    aput-object v3, v2, v1

    .line 49
    .line 50
    aput-object p2, v2, v0

    .line 51
    .line 52
    invoke-direct {p1, v2}, La4/c;-><init>([La4/e;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v3, La4/c;

    .line 57
    .line 58
    iget-object v4, p0, Lt3/r;->d:La4/e;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->r()La4/e;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v5, 0x3

    .line 65
    new-array v5, v5, [La4/e;

    .line 66
    .line 67
    aput-object v4, v5, v1

    .line 68
    .line 69
    aput-object p2, v5, v0

    .line 70
    .line 71
    aput-object p1, v5, v2

    .line 72
    .line 73
    invoke-direct {v3, v5}, La4/c;-><init>([La4/e;)V

    .line 74
    .line 75
    .line 76
    move-object p1, v3

    .line 77
    :goto_0
    return-object p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string p2, "Required value was null."

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final l(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt3/r;->c:Lk2/k;

    .line 7
    .line 8
    invoke-interface {v0}, Lk2/k;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "get(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lt3/c;

    .line 18
    .line 19
    iget-object v1, p0, Lt3/r;->h:Lr3/j;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v1, p1, v2}, Lr3/j;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->d()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "getCacheChoice(...)"

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :try_start_0
    sget-object v4, Lt3/r$b;->$EnumSwitchMapping$0:[I

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aget v2, v4, v2

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    if-eq v2, v4, :cond_2

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    if-eq v2, v4, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    if-ne v2, v0, :cond_0

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lt3/r;->m(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 64
    .line 65
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    invoke-interface {v0}, Lt3/c;->a()Lr3/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lr3/i;->h(Lf2/a;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v0}, Lt3/c;->b()Lr3/i;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lr3/i;->h(Lf2/a;)Z

    .line 89
    .line 90
    .line 91
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 93
    .line 94
    .line 95
    return p1

    .line 96
    :goto_1
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/r;->i:Lcom/facebook/imagepipeline/producers/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n1;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/r;->i:Lcom/facebook/imagepipeline/producers/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n1;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;La4/e;)Lcom/facebook/datasource/b;
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # La4/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "La4/e;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lt3/r;->q(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;La4/e;)Lcom/facebook/datasource/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final q(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;La4/e;)Lcom/facebook/datasource/b;
    .locals 8
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/Priority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La4/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "La4/e;",
            ")",
            "Lcom/facebook/datasource/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "priority"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt3/r;->b:Lk2/k;

    .line 7
    .line 8
    invoke-interface {v0}, Lk2/k;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lt3/r;->o:Ljava/util/concurrent/CancellationException;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "immediateFailedDataSource(...)"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/NullPointerException;

    .line 35
    .line 36
    const-string p2, "imageRequest is null"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    iget-object v0, p0, Lt3/r;->a:Lt3/s0;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lt3/s0;->G(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/b1;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    move-object v3, p1

    .line 59
    move-object v5, p2

    .line 60
    move-object v6, p3

    .line 61
    move-object v7, p4

    .line 62
    invoke-direct/range {v1 .. v7}, Lt3/r;->u(Lcom/facebook/imagepipeline/producers/b1;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;La4/e;)Lcom/facebook/datasource/b;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/facebook/datasource/c;->b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    return-object p1
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/r;->i:Lcom/facebook/imagepipeline/producers/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/n1;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
