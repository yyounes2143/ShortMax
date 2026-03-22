.class public Lsr/a;
.super Ljava/lang/Object;
.source "DefaultHttpRequest.kt"

# interfaces
.implements Lsr/b;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/client/call/HttpClientCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/ktor/http/Url;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lxr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lwr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lsr/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/HttpClientCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lsr/a;->a:Lio/ktor/client/call/HttpClientCall;

    .line 15
    .line 16
    invoke-virtual {p2}, Lsr/c;->f()Lwr/m;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lsr/a;->b:Lwr/m;

    .line 21
    .line 22
    invoke-virtual {p2}, Lsr/c;->h()Lio/ktor/http/Url;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lsr/a;->c:Lio/ktor/http/Url;

    .line 27
    .line 28
    invoke-virtual {p2}, Lsr/c;->b()Lxr/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lsr/a;->d:Lxr/b;

    .line 33
    .line 34
    invoke-virtual {p2}, Lsr/c;->e()Lwr/f;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lsr/a;->e:Lwr/f;

    .line 39
    .line 40
    invoke-virtual {p2}, Lsr/c;->a()Lyr/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lsr/a;->f:Lyr/b;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lsr/a;->e:Lwr/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsr/a;->x()Lio/ktor/client/call/HttpClientCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMethod()Lwr/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lsr/a;->b:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Lio/ktor/http/Url;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lsr/a;->c:Lio/ktor/http/Url;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lsr/a;->f:Lyr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lio/ktor/client/call/HttpClientCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lsr/a;->a:Lio/ktor/client/call/HttpClientCall;

    .line 2
    .line 3
    return-object v0
.end method
