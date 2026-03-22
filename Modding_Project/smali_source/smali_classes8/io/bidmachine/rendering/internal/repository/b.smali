.class public final Lio/bidmachine/rendering/internal/repository/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/repository/b$a;,
        Lio/bidmachine/rendering/internal/repository/b$c;,
        Lio/bidmachine/rendering/internal/repository/b$b;,
        Lio/bidmachine/rendering/internal/repository/b$d;
    }
.end annotation

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

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/internal/h;
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
    const-string v0, "coroutineScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "coroutineDispatchers"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/b;->a:Lgt/g0;

    .line 20
    .line 21
    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/b;->c:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic h(Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/repository/b;->l(Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/repository/b;->m(Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final l(Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llq/a$a<",
            "TT;>;TT;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$f;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$f;-><init>(Llq/a$a;Ljava/lang/Object;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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

.method private final m(Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llq/a$a<",
            "TT;>;",
            "Lrq/t;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->g()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$e;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$e;-><init>(Llq/a$a;Lrq/t;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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


# virtual methods
.method public a(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V
    .locals 7
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resultCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b;->a:Lgt/g0;

    .line 12
    .line 13
    new-instance v4, Lio/bidmachine/rendering/internal/repository/b$i;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/repository/b$i;-><init>(Lio/bidmachine/rendering/internal/repository/b;Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V
    .locals 7
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resultCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b;->a:Lgt/g0;

    .line 12
    .line 13
    new-instance v4, Lio/bidmachine/rendering/internal/repository/b$g;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/repository/b$g;-><init>(Lio/bidmachine/rendering/internal/repository/b;Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public c(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V
    .locals 7
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mediaSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resultCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b;->a:Lgt/g0;

    .line 12
    .line 13
    new-instance v4, Lio/bidmachine/rendering/internal/repository/b$k;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/repository/b$k;-><init>(Lio/bidmachine/rendering/internal/repository/b;Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "base64"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v0, v1, v2}, Lyq/s;->f(Ljava/lang/String;IILjava/lang/Object;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {p1, p2}, Lyq/e;->b([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    return-object v2
.end method

.method public final e(Landroid/content/Context;Ljava/io/File;)Lio/bidmachine/rendering/utils/NetworkRequest$d;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$d<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

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
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/rendering/internal/repository/b$c;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lio/bidmachine/rendering/internal/repository/b$c;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final f(Landroid/content/Context;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Lio/bidmachine/rendering/utils/NetworkRequest$d;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$d<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

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
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "options"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lio/bidmachine/rendering/internal/repository/b$a;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/rendering/internal/repository/b$a;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lsq/e;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final j(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Landroid/graphics/Bitmap;",
            ">;",
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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$h;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p0, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$h;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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

.method public final k(Ljava/lang/String;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llq/a$a<",
            "Landroid/net/Uri;",
            ">;",
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
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/repository/b;->g(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lrq/t;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Can\'t create file for video by url ("

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x29

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p2, v0, p3}, Lio/bidmachine/rendering/internal/repository/b;->m(Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/b;->c:Landroid/content/Context;

    .line 49
    .line 50
    const-string v2, "applicationContext"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v0}, Lio/bidmachine/rendering/internal/repository/b;->e(Landroid/content/Context;Ljava/io/File;)Lio/bidmachine/rendering/utils/NetworkRequest$d;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1, v0}, Lio/bidmachine/rendering/utils/NetworkRequest$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/Uri;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, p2, v0, p3}, Lio/bidmachine/rendering/internal/repository/b;->l(Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p1, p2, :cond_2

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    new-instance p3, Lrq/t;

    .line 82
    .line 83
    const-string v0, "Uri is null"

    .line 84
    .line 85
    invoke-direct {p3, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v1, p2, p3}, Lio/bidmachine/rendering/internal/repository/b;->q(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$f;Llq/a$a;Lrq/t;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method

.method public final n(Lrq/h;Landroid/graphics/BitmapFactory$Options;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrq/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/h;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Llq/a$a<",
            "Landroid/graphics/Bitmap;",
            ">;",
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
    invoke-virtual {p1}, Lrq/h;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/b;->d(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, p3, p1, p4}, Lio/bidmachine/rendering/internal/repository/b;->l(Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    new-instance p1, Lrq/t;

    .line 26
    .line 27
    const-string p2, "Can\'t decode image from base64"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3, p1, p4}, Lio/bidmachine/rendering/internal/repository/b;->m(Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1
.end method

.method public final o(Lrq/o0;Landroid/graphics/BitmapFactory$Options;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrq/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/o0;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Llq/a$a<",
            "Landroid/graphics/Bitmap;",
            ">;",
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
    invoke-virtual {p1}, Lrq/o0;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/repository/b;->g(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x29

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance p2, Lrq/t;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Can\'t create file for image by url ("

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p3, p2, p4}, Lio/bidmachine/rendering/internal/repository/b;->m(Llq/a$a;Lrq/t;Lrs/c;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-ne p1, p2, :cond_0

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_1
    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/b;->c:Landroid/content/Context;

    .line 53
    .line 54
    const-string v3, "applicationContext"

    .line 55
    .line 56
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2, v0, p2}, Lio/bidmachine/rendering/internal/repository/b;->f(Landroid/content/Context;Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Lio/bidmachine/rendering/utils/NetworkRequest$d;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2, v0}, Lio/bidmachine/rendering/utils/NetworkRequest$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/graphics/Bitmap;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-direct {p0, p3, v0, p4}, Lio/bidmachine/rendering/internal/repository/b;->l(Llq/a$a;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-ne p1, p2, :cond_2

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    new-instance p4, Lrq/t;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v2, "Failed to load image from url ("

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p4, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/repository/b;->q(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$f;Llq/a$a;Lrq/t;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1
.end method

.method public final p(Lrq/o0;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrq/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/o0;",
            "Llq/a$a<",
            "Landroid/net/Uri;",
            ">;",
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
    invoke-virtual {p1}, Lrq/o0;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lrq/o0;->a()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lio/bidmachine/rendering/internal/repository/b$d;->a:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget p1, v1, p1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lio/bidmachine/rendering/internal/repository/b;->t(Ljava/lang/String;Llq/a$a;Lrs/c;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lio/bidmachine/rendering/internal/repository/b;->k(Ljava/lang/String;Llq/a$a;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p1, p2, :cond_3

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1
.end method

.method public final q(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$f;Llq/a$a;Lrq/t;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/utils/NetworkRequest$f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$f<",
            "TT;>;",
            "Llq/a$a<",
            "TT;>;",
            "Lrq/t;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "processor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "resultCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "error"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 22
    .line 23
    sget-object v1, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 24
    .line 25
    invoke-direct {v0, p1, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$a;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->e(Lio/bidmachine/rendering/utils/NetworkRequest$f;)Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lio/bidmachine/rendering/internal/repository/b;->a:Lgt/g0;

    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 35
    .line 36
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$n;

    .line 37
    .line 38
    invoke-direct {v1, p3, p4, p2, v0}, Lio/bidmachine/rendering/internal/repository/b$n;-><init>(Llq/a$a;Lrq/t;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->d(Lio/bidmachine/rendering/utils/NetworkRequest$e;)Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->c()Lio/bidmachine/rendering/utils/NetworkRequest;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final r(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lyq/r;->j(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return-object p1
.end method

.method public final s(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Ljava/lang/String;",
            ">;",
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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$j;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p0, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$j;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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

.method public final t(Ljava/lang/String;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llq/a$a<",
            "Landroid/net/Uri;",
            ">;",
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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$m;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$m;-><init>(Lio/bidmachine/rendering/internal/repository/b;Ljava/lang/String;Llq/a$a;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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

.method public final u(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/bidmachine/rendering/model/MediaSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/MediaSource;",
            "Llq/a$a<",
            "Landroid/net/Uri;",
            ">;",
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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/b;->b:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/h;->e()Lgt/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/rendering/internal/repository/b$l;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, p0, p2, v2}, Lio/bidmachine/rendering/internal/repository/b$l;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/b;Llq/a$a;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

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
