.class public final Lio/ktor/client/plugins/a$a;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"

# interfaces
.implements Lsr/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/a;->a(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/plugins/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/ktor/http/Url;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lwr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic e:Lio/ktor/client/request/HttpRequestBuilder;


# direct methods
.method constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/a$a;->e:Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->h()Lwr/m;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/ktor/client/plugins/a$a;->a:Lwr/m;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lio/ktor/http/h;->b()Lio/ktor/http/Url;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lio/ktor/client/plugins/a$a;->b:Lio/ktor/http/Url;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lio/ktor/client/plugins/a$a;->c:Lyr/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lwr/g;->n()Lwr/f;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/ktor/client/plugins/a$a;->d:Lwr/f;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/a$a;->d:Lwr/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lsr/b$a;->a(Lsr/b;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMethod()Lwr/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/a$a;->a:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/a$a;->b:Lio/ktor/http/Url;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/a$a;->c:Lyr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lio/ktor/client/call/HttpClientCall;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Call is not initialized"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
