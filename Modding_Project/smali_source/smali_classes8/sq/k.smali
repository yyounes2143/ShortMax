.class public final Lsq/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lsq/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ltp/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lgq/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lgq/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgq/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lsq/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lsq/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsq/k;->a:Lsq/k;

    .line 7
    .line 8
    new-instance v0, Ltp/p;

    .line 9
    .line 10
    invoke-direct {v0}, Ltp/p;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lsq/k;->b:Ltp/p;

    .line 14
    .line 15
    new-instance v1, Lio/bidmachine/iab/mraid/l;

    .line 16
    .line 17
    invoke-direct {v1}, Lio/bidmachine/iab/mraid/l;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lio/bidmachine/rendering/internal/r;

    .line 21
    .line 22
    invoke-direct {v2}, Lio/bidmachine/rendering/internal/r;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lgq/c;

    .line 26
    .line 27
    invoke-direct {v3, v1, v0}, Lgq/c;-><init>(Lio/bidmachine/iab/mraid/l;Ltp/p;)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Lsq/k;->c:Lgq/b;

    .line 31
    .line 32
    new-instance v0, Lgq/d;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lgq/d;-><init>(Lio/bidmachine/iab/mraid/l;Lio/bidmachine/rendering/internal/r;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lsq/k;->d:Lgq/b;

    .line 38
    .line 39
    new-instance v1, Lgq/a;

    .line 40
    .line 41
    invoke-direct {v1}, Lgq/a;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    new-array v2, v2, [Lgq/b;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    aput-object v3, v2, v4

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    aput-object v0, v2, v3

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v1, v2, v0

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lsq/k;->e:Ljava/util/List;

    .line 61
    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uri"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsq/k;->b:Ltp/p;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1, p2}, Ltp/p;->e(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsq/k;->c:Lgq/b;

    .line 12
    .line 13
    invoke-interface {v0, p0, p1, p2}, Lgq/b;->a(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lsq/k;->d(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lsq/k;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lgq/b;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lgq/b;->a(Landroid/net/Uri;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1, p0, p1, p2}, Lgq/b;->b(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {p0, p1, p2}, Lsq/k;->a(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final d(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "parse(url)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    :cond_0
    const-string v1, "/"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Lyq/r;->j(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-lez v5, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "newUri.toString()"

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    :goto_0
    return-object p0

    .line 73
    :cond_2
    return-object v0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsq/k;->d:Lgq/b;

    .line 12
    .line 13
    invoke-interface {v0, p0, p1, p2}, Lgq/b;->a(Landroid/content/Context;Ljava/lang/String;Lyq/d;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final f(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lyq/r;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 14
    .line 15
    sget-object v1, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$a;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lpp/f;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->f(Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest$a;->c()Lio/bidmachine/rendering/utils/NetworkRequest;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
