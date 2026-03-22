.class public final Lio/ktor/client/plugins/HttpRequestRetry$c;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lio/ktor/client/plugins/HttpRequestRetry$Configuration;",
        "Lio/ktor/client/plugins/HttpRequestRetry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
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
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRequestRetry$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$c;->e(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRequestRetry;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpRequestRetry;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$c;->d(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Lvr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvr/a<",
            "Lio/ktor/client/plugins/HttpRequestRetry$d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestRetry;->c()Lvr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lio/ktor/client/plugins/HttpRequestRetry;Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lio/ktor/client/plugins/HttpRequestRetry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry;->l(Lio/ktor/client/HttpClient;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRequestRetry;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$Configuration;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/HttpRequestRetry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/ktor/client/plugins/HttpRequestRetry;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry;-><init>(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRequestRetry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestRetry;->d()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
