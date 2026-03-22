.class public final Lio/ktor/client/request/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequest.kt"

# interfaces
.implements Lwr/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/request/HttpRequestBuilder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lio/ktor/client/request/HttpRequestBuilder$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/ktor/http/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lwr/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/request/HttpRequestBuilder$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/request/HttpRequestBuilder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/request/HttpRequestBuilder;->g:Lio/ktor/client/request/HttpRequestBuilder$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v12, Lio/ktor/http/h;

    .line 5
    .line 6
    const/16 v10, 0x1ff

    .line 7
    .line 8
    const/4 v11, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v0, v12

    .line 19
    invoke-direct/range {v0 .. v11}, Lio/ktor/http/h;-><init>(Lio/ktor/http/k;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/e;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    iput-object v12, p0, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 23
    .line 24
    sget-object v0, Lwr/m;->b:Lwr/m$a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lwr/m$a;->a()Lwr/m;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 31
    .line 32
    new-instance v0, Lwr/g;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lwr/g;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->c:Lwr/g;

    .line 41
    .line 42
    sget-object v0, Lur/b;->a:Lur/b;

    .line 43
    .line 44
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v3, v2, v3}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 51
    .line 52
    invoke-static {v2}, Lyr/d;->a(Z)Lyr/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public a()Lwr/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->c:Lwr/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lsr/c;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lsr/c;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/http/h;->b()Lio/ktor/http/Url;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lwr/g;->n()Lwr/f;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 20
    .line 21
    instance-of v4, v0, Lxr/b;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v0, Lxr/b;

    .line 26
    .line 27
    :goto_0
    move-object v4, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v5, p0, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 34
    .line 35
    iget-object v6, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 36
    .line 37
    move-object v0, v7

    .line 38
    invoke-direct/range {v0 .. v6}, Lsr/c;-><init>(Lio/ktor/http/Url;Lwr/m;Lwr/f;Lxr/b;Lkotlinx/coroutines/r;Lyr/b;)V

    .line 39
    .line 40
    .line 41
    return-object v7

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "No request transformation found: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final c()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Les/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 2
    .line 3
    invoke-static {}, Lsr/g;->a()Lyr/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Les/a;

    .line 12
    .line 13
    return-object v0
.end method

.method public final f(Lor/b;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lor/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lor/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 7
    .line 8
    invoke-static {}, Lor/c;->a()Lyr/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/Map;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return-object p1
.end method

.method public final g()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lwr/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lio/ktor/http/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public final k(Les/a;)V
    .locals 2
    .param p1    # Les/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 4
    .line 5
    invoke-static {}, Lsr/g;->a()Lyr/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1, p1}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 14
    .line 15
    invoke-static {}, Lsr/g;->a()Lyr/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Lyr/b;->g(Lyr/a;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final l(Lor/b;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lor/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lor/b<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "capability"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 12
    .line 13
    invoke-static {}, Lor/c;->a()Lyr/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;->d:Lio/ktor/client/request/HttpRequestBuilder$setCapability$capabilities$1;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lyr/b;->c(Lyr/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final m(Lkotlinx/coroutines/r;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    return-void
.end method

.method public final n(Lwr/m;)V
    .locals 1
    .param p1    # Lwr/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 7
    .line 8
    return-void
.end method

.method public final o(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 2
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 7
    .line 8
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->b:Lwr/m;

    .line 9
    .line 10
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->d:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->e()Les/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 22
    .line 23
    iget-object v1, p1, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lio/ktor/http/URLUtilsKt;->g(Lio/ktor/http/h;Lio/ktor/http/h;)Lio/ktor/http/h;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->a:Lio/ktor/http/h;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lio/ktor/http/h;->u(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lyr/s;->c(Lyr/q;Lyr/q;)Lyr/q;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 49
    .line 50
    iget-object p1, p1, Lio/ktor/client/request/HttpRequestBuilder;->f:Lyr/b;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lyr/e;->a(Lyr/b;Lyr/b;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public final p(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;
    .locals 1
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    iput-object v0, p0, Lio/ktor/client/request/HttpRequestBuilder;->e:Lkotlinx/coroutines/r;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/client/request/HttpRequestBuilder;->o(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
