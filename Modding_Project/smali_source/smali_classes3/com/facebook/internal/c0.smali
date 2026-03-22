.class public final Lcom/facebook/internal/c0;
.super Ljava/lang/Object;
.source "ImageResponseCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/facebook/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/c0;->a:Lcom/facebook/internal/c0;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/internal/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/internal/c0;->b:Ljava/lang/String;

    .line 15
    .line 16
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

.method public static final declared-synchronized a()Lcom/facebook/internal/w;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/internal/c0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/internal/c0;->c:Lcom/facebook/internal/w;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/facebook/internal/w;

    .line 9
    .line 10
    sget-object v2, Lcom/facebook/internal/c0;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "TAG"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/facebook/internal/w$e;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/facebook/internal/w$e;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/w;-><init>(Ljava/lang/String;Lcom/facebook/internal/w$e;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/facebook/internal/c0;->c:Lcom/facebook/internal/w;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    sget-object v1, Lcom/facebook/internal/c0;->c:Lcom/facebook/internal/w;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, "imageCache"

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method public static final b(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .param p0    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/facebook/internal/c0;->a:Lcom/facebook/internal/c0;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/facebook/internal/c0;->d(Landroid/net/Uri;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/c0;->a()Lcom/facebook/internal/w;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v2, "uri.toString()"

    .line 21
    .line 22
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v1, p0, v0, v2, v0}, Lcom/facebook/internal/w;->g(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object v1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 33
    .line 34
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 35
    .line 36
    sget-object v3, Lcom/facebook/internal/c0;->b:Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "TAG"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v4, 0x5

    .line 48
    invoke-virtual {v1, v2, v4, v3, p0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static final c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xc8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :try_start_0
    sget-object v2, Lcom/facebook/internal/c0;->a:Lcom/facebook/internal/c0;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/facebook/internal/c0;->d(Landroid/net/Uri;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/facebook/internal/c0;->a()Lcom/facebook/internal/w;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, "uri.toString()"

    .line 47
    .line 48
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/facebook/internal/c0$a;

    .line 52
    .line 53
    invoke-direct {v3, v1, p0}, Lcom/facebook/internal/c0$a;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0, v3}, Lcom/facebook/internal/w;->h(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private final d(Landroid/net/Uri;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const-string v1, "fbcdn.net"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, ".fbcdn.net"

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "fbcdn"

    .line 31
    .line 32
    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v1, ".akamaihd.net"

    .line 39
    .line 40
    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    :cond_1
    :goto_0
    return v2

    .line 47
    :cond_2
    return v0
.end method
