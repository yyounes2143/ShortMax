.class public final Lt3/s$b;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,577:1\n40#2,9:578\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n*L\n537#1:578,9\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/s$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lt3/s$b;Landroid/content/Context;)Lg2/b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lt3/s$b;->f(Landroid/content/Context;)Lg2/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lt3/s$b;Lt3/s$a;)Lg4/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lt3/s$b;->g(Lt3/s$a;)Lg4/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lt3/s$b;Lt3/s$a;Lt3/u;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt3/s$b;->h(Lt3/s$a;Lt3/u;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Lt3/s$b;Ls2/b;Lt3/u;Ls2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lt3/s$b;->j(Ls2/b;Lt3/u;Ls2/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Landroid/content/Context;)Lg2/b;
    .locals 1

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lg2/b;->m(Landroid/content/Context;)Lg2/b$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lg2/b$b;->n()Lg2/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 17
    .line 18
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lg2/b;->m(Landroid/content/Context;)Lg2/b$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lg2/b$b;->n()Lg2/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Lf4/b;->b()V

    .line 30
    .line 31
    .line 32
    :goto_0
    const-string v0, "traceSection(...)"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-static {}, Lf4/b;->b()V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method private final g(Lt3/s$a;)Lg4/d;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lt3/s$a;->B()Lg4/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lt3/s$a;->C()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lt3/s$a;->B()Lg4/d;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private final h(Lt3/s$a;Lt3/u;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lt3/s$a;->E()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lt3/u;->n()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v0, 0x1b

    .line 25
    .line 26
    if-lt p1, v0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p2}, Lt3/u;->n()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/16 v2, 0x1

    .line 35
    .line 36
    cmp-long p1, v0, v2

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p2}, Lt3/u;->n()J

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    :goto_0
    return p1
.end method

.method private final j(Ls2/b;Lt3/u;Ls2/a;)V
    .locals 0

    .line 1
    sput-object p1, Ls2/c;->c:Ls2/b;

    .line 2
    .line 3
    invoke-virtual {p2}, Lt3/u;->z()Ls2/b$a;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p3}, Ls2/b;->a(Ls2/a;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public final e()Lt3/s$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lt3/s;->I()Lt3/s$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final i(Landroid/content/Context;)Lt3/s$a;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt3/s$a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt3/s$a;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
