.class public final Lio/ktor/client/plugins/HttpRequestRetry;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRequestRetry$Configuration;,
        Lio/ktor/client/plugins/HttpRequestRetry$a;,
        Lio/ktor/client/plugins/HttpRequestRetry$b;,
        Lio/ktor/client/plugins/HttpRequestRetry$c;,
        Lio/ktor/client/plugins/HttpRequestRetry$d;,
        Lio/ktor/client/plugins/HttpRequestRetry$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lio/ktor/client/plugins/HttpRequestRetry$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRequestRetry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lvr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr/a<",
            "Lio/ktor/client/plugins/HttpRequestRetry$d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lsr/b;",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$a;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I

.field private final f:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$b;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->g:Lio/ktor/client/plugins/HttpRequestRetry$c;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "RetryFeature"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->h:Lyr/a;

    .line 17
    .line 18
    new-instance v0, Lvr/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lvr/a;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->i:Lvr/a;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)V
    .locals 1
    .param p1    # Lio/ktor/client/plugins/HttpRequestRetry$Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "configuration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->j()Lat/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->a:Lat/n;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->k()Lat/n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->b:Lat/n;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->g()Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->c:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->f()Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->d:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->h()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->e:I

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->i()Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry;->f:Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c()Lvr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->i:Lvr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->h:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lio/ktor/client/plugins/HttpRequestRetry;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lio/ktor/client/plugins/HttpRequestRetry;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lio/ktor/client/plugins/HttpRequestRetry;)Lat/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->a:Lat/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lio/ktor/client/plugins/HttpRequestRetry;)Lat/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpRequestRetry;->b:Lat/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry;->m(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lio/ktor/client/plugins/HttpRequestRetry;IILat/n;Lio/ktor/client/call/HttpClientCall;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/client/plugins/HttpRequestRetry;->n(IILat/n;Lio/ktor/client/call/HttpClientCall;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Lio/ktor/client/plugins/HttpRequestRetry;IILat/n;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/ktor/client/plugins/HttpRequestRetry;->o(IILat/n;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final m(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->o(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->g()Lkotlinx/coroutines/r;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$prepareRequest$1;-><init>(Lio/ktor/client/request/HttpRequestBuilder;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private final n(IILat/n;Lio/ktor/client/call/HttpClientCall;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lsr/b;",
            "-",
            "Ltr/c;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/client/call/HttpClientCall;",
            ")Z"
        }
    .end annotation

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lio/ktor/client/plugins/HttpRequestRetry$e;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    invoke-direct {p2, p1}, Lio/ktor/client/plugins/HttpRequestRetry$e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p4}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    invoke-interface {p3, p2, p1, p4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private final o(IILat/n;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lat/n<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$e;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lio/ktor/client/plugins/HttpRequestRetry$e;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    invoke-direct {p2, p1}, Lio/ktor/client/plugins/HttpRequestRetry$e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p2, p4, p5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public final l(Lio/ktor/client/HttpClient;)V
    .locals 3
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->c:Lio/ktor/client/plugins/HttpSend$Plugin;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lqr/e;->b(Lio/ktor/client/HttpClient;Lqr/d;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/ktor/client/plugins/HttpSend;

    .line 13
    .line 14
    new-instance v1, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, p1, v2}, Lio/ktor/client/plugins/HttpRequestRetry$intercept$1;-><init>(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/HttpSend;->d(Lat/n;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
