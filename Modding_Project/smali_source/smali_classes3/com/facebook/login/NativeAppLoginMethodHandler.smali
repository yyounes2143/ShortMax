.class public abstract Lcom/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "NativeAppLoginMethodHandler.kt"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final d:Lcom/facebook/AccessTokenSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 4
    sget-object p1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->d:Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    sget-object p1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->d:Lcom/facebook/AccessTokenSource;

    return-void
.end method

.method private final E(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x10000

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "getApplicationContext()\n\u2026nager.MATCH_DEFAULT_ONLY)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    return p1
.end method

.method private final G(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/facebook/login/s;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/login/s;-><init>(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->D(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private static final H(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$request"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$extras"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->l(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->D(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/facebook/FacebookServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p2

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception p2

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->C(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->e()Lcom/facebook/FacebookRequestError;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->c()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->b()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->C(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public static synthetic w(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->H(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->g(Lcom/facebook/login/LoginClient$Result;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->I()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->d:Lcom/facebook/AccessTokenSource;

    .line 2
    .line 3
    return-object v0
.end method

.method protected B(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->y(Landroid/os/Bundle;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string v1, "error_code"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {}, Lcom/facebook/internal/o0;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->z(Landroid/os/Bundle;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v2, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 45
    .line 46
    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/facebook/login/LoginClient$Result$b;->c(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    sget-object p2, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Lcom/facebook/login/LoginClient$Result$b;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method protected C(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const-string v1, "logged_out"

    .line 5
    .line 6
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->l:Z

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/facebook/internal/o0;->d()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/facebook/internal/o0;->e()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Iterable;

    .line 40
    .line 41
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    sget-object p2, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 48
    .line 49
    invoke-virtual {p2, p1, v0}, Lcom/facebook/login/LoginClient$Result$b;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/login/LoginClient$Result$b;->c(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method protected D(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "extras"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginMethodHandler;->c:Lcom/facebook/login/LoginMethodHandler$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->o()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->A()Lcom/facebook/AccessTokenSource;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/facebook/login/LoginMethodHandler$a;->b(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->n()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, p2, v2}, Lcom/facebook/login/LoginMethodHandler$a;->d(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/login/LoginClient$Result$b;->b(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p2

    .line 50
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/16 v5, 0x8

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    move-object v1, p1

    .line 62
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method protected I(Landroid/content/Intent;I)Z
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;->E(Landroid/content/Intent;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->l()Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/facebook/login/LoginFragment;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/facebook/login/LoginFragment;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v0, v2

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/facebook/login/LoginFragment;->j()Landroidx/activity/result/ActivityResultLauncher;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    :cond_2
    if-nez v2, :cond_3

    .line 42
    .line 43
    return p2

    .line 44
    :cond_3
    const/4 p1, 0x1

    .line 45
    return p1

    .line 46
    :cond_4
    :goto_1
    return p2
.end method

.method public k(IILandroid/content/Intent;)Z
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->p()Lcom/facebook/login/LoginClient$Request;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 p1, 0x1

    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    sget-object p2, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 13
    .line 14
    const-string p3, "Operation canceled"

    .line 15
    .line 16
    invoke-virtual {p2, v1, p3}, Lcom/facebook/login/LoginClient$Result$b;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1, p3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, -0x1

    .line 31
    if-eq p2, v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 34
    .line 35
    const/16 v5, 0x8

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v2, "Unexpected resultCode from authorization."

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->i:Lcom/facebook/login/LoginClient$Result$b;

    .line 57
    .line 58
    const/16 v5, 0x8

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const-string v2, "Unexpected null from returned authorization data."

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$b;->d(Lcom/facebook/login/LoginClient$Result$b;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Result;)V

    .line 70
    .line 71
    .line 72
    return p1

    .line 73
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->y(Landroid/os/Bundle;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v0, "error_code"

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->z(Landroid/os/Bundle;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "e2e"

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0, v3}, Lcom/facebook/login/LoginMethodHandler;->h(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    if-nez p3, :cond_6

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    if-nez v2, :cond_6

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    invoke-direct {p0, v1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->G(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->C(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    return p1
.end method

.method protected y(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "error"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string v0, "error_type"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected z(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "error_message"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string v0, "error_description"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    return-object v0
.end method
