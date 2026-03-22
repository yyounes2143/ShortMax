.class public final Lcom/startshorts/androidplayer/startup/FrescoInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "FrescoInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/FrescoInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/startup/FrescoInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/FrescoInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/FrescoInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->b:Lcom/startshorts/androidplayer/startup/FrescoInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Lr3/x;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->j()Lr3/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final g(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lkk/h;->a:Lkk/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkk/h;->b()Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lp3/a;->a(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lt3/s$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->h(Landroid/content/Context;Lt3/s$a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->l(Landroid/content/Context;Lt3/s$a;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->i(Lt3/s$a;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->k(Lt3/s$a;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lt3/s$a;->T(Z)Lt3/s$a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lt3/s$a;->Y(Z)Lt3/s$a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lt3/s$a;->R(Landroid/graphics/Bitmap$Config;)Lt3/s$a;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lkk/b;->a:Lkk/b$a;

    .line 39
    .line 40
    invoke-virtual {v3}, Lkk/b$a;->a()Lkk/b;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lt3/s$a;->S(Lr3/j;)Lt3/s$a;

    .line 45
    .line 46
    .line 47
    sget-object v2, Lt3/s;->M:Lt3/s$b;

    .line 48
    .line 49
    invoke-virtual {v2}, Lt3/s$b;->e()Lt3/s$c;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lt3/s$c;->b(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lt3/s$a;->a()Lt3/s;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lkk/a;->c(Landroid/content/Context;Lt3/s;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final h(Landroid/content/Context;Lt3/s$a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lg2/b;->m(Landroid/content/Context;)Lg2/b$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcf/a;->a:Lcf/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcf/a;->c()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lg2/b$b;->p(Ljava/io/File;)Lg2/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "image"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lg2/b$b;->o(Ljava/lang/String;)Lg2/b$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-wide/32 v0, 0xc800000

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->q(J)Lg2/b$b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-wide/32 v0, 0x6400000

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->r(J)Lg2/b$b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/32 v0, 0x3200000

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->s(J)Lg2/b$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lg2/b$b;->n()Lg2/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Lt3/s$a;->V(Lg2/b;)Lt3/s$a;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final i(Lt3/s$a;)V
    .locals 1

    .line 1
    new-instance v0, Loh/a;

    .line 2
    .line 3
    invoke-direct {v0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lt3/s$a;->Q(Lk2/k;)Lt3/s$a;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final j()Lr3/x;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    div-int/lit8 v4, v0, 0x5

    .line 11
    .line 12
    new-instance v0, Lr3/x;

    .line 13
    .line 14
    const/16 v9, 0x20

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const v3, 0x7fffffff

    .line 18
    .line 19
    .line 20
    const v5, 0x7fffffff

    .line 21
    .line 22
    .line 23
    const v6, 0x7fffffff

    .line 24
    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    move v2, v4

    .line 30
    invoke-direct/range {v1 .. v10}, Lr3/x;-><init>(IIIIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method private final k(Lt3/s$a;)V
    .locals 2

    .line 1
    invoke-static {}, Ln2/d;->b()Ln2/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getInstance(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Loh/b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Loh/b;-><init>(Lcom/startshorts/androidplayer/startup/FrescoInitializer;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ln2/c;->a(Ln2/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lt3/s$a;->W(Ln2/c;)Lt3/s$a;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final l(Landroid/content/Context;Lt3/s$a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lg2/b;->m(Landroid/content/Context;)Lg2/b$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcf/a;->a:Lcf/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcf/a;->c()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lg2/b$b;->p(Ljava/io/File;)Lg2/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "small_image"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lg2/b$b;->o(Ljava/lang/String;)Lg2/b$b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-wide/32 v0, 0x6400000

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->q(J)Lg2/b$b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-wide/32 v0, 0x3200000

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->r(J)Lg2/b$b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/32 v0, 0x1900000

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lg2/b$b;->s(J)Lg2/b$b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lg2/b$b;->n()Lg2/b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Lt3/s$a;->Z(Lg2/b;)Lt3/s$a;

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FrescoInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/startup/DataCacheInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkk/f;->a:Lkk/f;

    .line 7
    .line 8
    invoke-virtual {p2}, Lkk/f;->g()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/startup/FrescoInitializer;->g(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
