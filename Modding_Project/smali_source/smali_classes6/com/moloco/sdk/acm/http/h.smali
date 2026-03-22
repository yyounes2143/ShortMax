.class public final Lcom/moloco/sdk/acm/http/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/acm/http/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/acm/http/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/acm/http/h;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lio/ktor/client/HttpClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/acm/http/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/acm/http/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lmr/b;->a(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static final b(Lio/ktor/client/HttpClientConfig;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "$this$HttpClient"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->b:Lio/ktor/client/plugins/UserAgent$Plugin;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p0, v0, v1, v2, v1}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 14
    .line 15
    invoke-static {p0, v0, v1, v2, v1}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final c()Lio/ktor/client/HttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/acm/http/h;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/ktor/client/HttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final d()Lio/ktor/client/HttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/acm/http/h;->c()Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
