.class final Lio/ktor/client/HttpClientConfig$install$3;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/HttpClientConfig;->i(Lqr/d;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/HttpClient;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lqr/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqr/d<",
            "TTBuilder;TTPlugin;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lqr/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqr/d<",
            "+TTBuilder;TTPlugin;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/HttpClientConfig$install$3;->d:Lqr/d;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/HttpClient;)V
    .locals 3
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->m()Lyr/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lqr/e;->a()Lyr/a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lio/ktor/client/HttpClientConfig$install$3$attributes$1;->d:Lio/ktor/client/HttpClientConfig$install$3$attributes$1;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lyr/b;->c(Lyr/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lyr/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->d()Lio/ktor/client/HttpClientConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lio/ktor/client/HttpClientConfig;->a(Lio/ktor/client/HttpClientConfig;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lio/ktor/client/HttpClientConfig$install$3;->d:Lqr/d;

    .line 31
    .line 32
    invoke-interface {v2}, Lqr/d;->getKey()Lyr/a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v2, p0, Lio/ktor/client/HttpClientConfig$install$3;->d:Lqr/d;

    .line 46
    .line 47
    invoke-interface {v2, v1}, Lqr/d;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lio/ktor/client/HttpClientConfig$install$3;->d:Lqr/d;

    .line 52
    .line 53
    invoke-interface {v2, v1, p1}, Lqr/d;->b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lio/ktor/client/HttpClientConfig$install$3;->d:Lqr/d;

    .line 57
    .line 58
    invoke-interface {p1}, Lqr/d;->getKey()Lyr/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1, v1}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/HttpClientConfig$install$3;->b(Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
