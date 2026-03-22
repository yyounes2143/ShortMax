.class public final Lio/ktor/client/plugins/c;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lsr/b;",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$b;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "io.ktor.client.plugins.HttpRequestRetry"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/c;->a:Ldu/a;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "MaxRetriesPerRequestAttributeKey"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/c;->b:Lyr/a;

    .line 17
    .line 18
    new-instance v0, Lyr/a;

    .line 19
    .line 20
    const-string v1, "ShouldRetryPerRequestAttributeKey"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lio/ktor/client/plugins/c;->c:Lyr/a;

    .line 26
    .line 27
    new-instance v0, Lyr/a;

    .line 28
    .line 29
    const-string v1, "ShouldRetryOnExceptionPerRequestAttributeKey"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lio/ktor/client/plugins/c;->d:Lyr/a;

    .line 35
    .line 36
    new-instance v0, Lyr/a;

    .line 37
    .line 38
    const-string v1, "ModifyRequestPerRequestAttributeKey"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lio/ktor/client/plugins/c;->e:Lyr/a;

    .line 44
    .line 45
    new-instance v0, Lyr/a;

    .line 46
    .line 47
    const-string v1, "RetryDelayPerRequestAttributeKey"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lio/ktor/client/plugins/c;->f:Lyr/a;

    .line 53
    .line 54
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->e:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->f:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->d:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/c;->c:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/plugins/c;->h(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final h(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lur/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lio/ktor/client/plugins/HttpRequestTimeoutException;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Lio/ktor/client/network/sockets/ConnectTimeoutException;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of p0, p0, Lio/ktor/client/network/sockets/SocketTimeoutException;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final i(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$Configuration;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v1, Lio/ktor/client/plugins/c;->c:Lyr/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->j()Lat/n;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {p1, v1, v2}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lio/ktor/client/plugins/c;->d:Lyr/a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->k()Lat/n;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p1, v1, v2}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v1, Lio/ktor/client/plugins/c;->f:Lyr/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->g()Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {p1, v1, v2}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v1, Lio/ktor/client/plugins/c;->b:Lyr/a;

    .line 63
    .line 64
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->h()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {p1, v1, v2}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-object p1, Lio/ktor/client/plugins/c;->e:Lyr/a;

    .line 80
    .line 81
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->i()Lkotlin/jvm/functions/Function2;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {p0, p1, v0}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
