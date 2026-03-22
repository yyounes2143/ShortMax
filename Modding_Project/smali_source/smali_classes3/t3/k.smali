.class public final Lt3/k;
.super Ljava/lang/Object;
.source "DiskCachesStoreFactory.kt"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/k<",
        "Lt3/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lt3/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lb4/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lt3/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lr3/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I

.field private final f:Lg2/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lg2/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg2/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt3/p;Lb4/d0;Lt3/o;Lr3/s;ILg2/b;Lg2/b;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lt3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb4/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lt3/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lr3/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lg2/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lg2/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/p;",
            "Lb4/d0;",
            "Lt3/o;",
            "Lr3/s;",
            "I",
            "Lg2/b;",
            "Lg2/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lg2/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileCacheFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "poolFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageCacheStatsTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDiskCacheConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smallImageDiskCacheConfig"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt3/k;->a:Lt3/p;

    .line 3
    iput-object p2, p0, Lt3/k;->b:Lb4/d0;

    .line 4
    iput-object p3, p0, Lt3/k;->c:Lt3/o;

    .line 5
    iput-object p4, p0, Lt3/k;->d:Lr3/s;

    .line 6
    iput p5, p0, Lt3/k;->e:I

    .line 7
    iput-object p6, p0, Lt3/k;->f:Lg2/b;

    .line 8
    iput-object p7, p0, Lt3/k;->g:Lg2/b;

    .line 9
    iput-object p8, p0, Lt3/k;->h:Ljava/util/Map;

    .line 10
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lt3/d;

    invoke-direct {p2, p0}, Lt3/d;-><init>(Lt3/k;)V

    invoke-static {p1, p2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lt3/k;->i:Lms/i;

    return-void
.end method

.method public constructor <init>(Lt3/p;Lt3/t;)V
    .locals 10
    .param p1    # Lt3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt3/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fileCacheFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Lt3/t;->i()Lb4/d0;

    move-result-object v3

    .line 12
    invoke-interface {p2}, Lt3/t;->H()Lt3/o;

    move-result-object v4

    .line 13
    invoke-interface {p2}, Lt3/t;->k()Lr3/s;

    move-result-object v5

    .line 14
    invoke-interface {p2}, Lt3/t;->z()I

    move-result v6

    .line 15
    invoke-interface {p2}, Lt3/t;->p()Lg2/b;

    move-result-object v7

    .line 16
    invoke-interface {p2}, Lt3/t;->t()Lg2/b;

    move-result-object v8

    .line 17
    invoke-interface {p2}, Lt3/t;->d()Ljava/util/Map;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v9}, Lt3/k;-><init>(Lt3/p;Lb4/d0;Lt3/o;Lr3/s;ILg2/b;Lg2/b;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lt3/k;)Lt3/k$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lt3/k;->j(Lt3/k;)Lt3/k$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lt3/k;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lt3/k;)Lt3/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->c:Lt3/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lt3/k;)Lt3/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->a:Lt3/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lt3/k;)Lr3/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->d:Lr3/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lt3/k;)Lg2/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->f:Lg2/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lt3/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lt3/k;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Lt3/k;)Lb4/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->b:Lb4/d0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lt3/k;)Lg2/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lt3/k;->g:Lg2/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final j(Lt3/k;)Lt3/k$a;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt3/k$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lt3/k$a;-><init>(Lt3/k;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final l()Lt3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/k;->i:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt3/c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt3/k;->k()Lt3/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Lt3/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lt3/k;->l()Lt3/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
