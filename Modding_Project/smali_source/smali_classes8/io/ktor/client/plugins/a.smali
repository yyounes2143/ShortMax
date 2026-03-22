.class public final Lio/ktor/client/plugins/a;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"


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
            "Ljava/lang/Boolean;",
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
    const-string v0, "io.ktor.client.plugins.HttpCallValidator"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/a;->a:Ldu/a;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "ExpectSuccessAttributeKey"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/a;->b:Lyr/a;

    .line 17
    .line 18
    return-void
.end method

.method private static final a(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/a$a;
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/plugins/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/a$a;-><init>(Lio/ktor/client/request/HttpRequestBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lio/ktor/client/HttpClientConfig;
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
            "Lio/ktor/client/HttpClientConfig<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpCallValidator$a;",
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
    sget-object v0, Lio/ktor/client/plugins/HttpCallValidator;->d:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lio/ktor/client/HttpClientConfig;->i(Lqr/d;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic c(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/plugins/a;->a(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/a;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/plugins/a;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method
