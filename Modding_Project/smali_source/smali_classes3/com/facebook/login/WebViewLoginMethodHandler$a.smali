.class public final Lcom/facebook/login/WebViewLoginMethodHandler$a;
.super Lcom/facebook/internal/WebDialog$a;
.source "WebViewLoginMethodHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Lcom/facebook/login/LoginBehavior;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Lcom/facebook/login/LoginTargetApp;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field final synthetic o:Lcom/facebook/login/WebViewLoginMethodHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/facebook/login/WebViewLoginMethodHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "applicationId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parameters"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->o:Lcom/facebook/login/WebViewLoginMethodHandler;

    .line 17
    .line 18
    const-string p1, "oauth"

    .line 19
    .line 20
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/facebook/internal/WebDialog$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "fbconnect://success"

    .line 24
    .line 25
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Ljava/lang/String;

    .line 26
    .line 27
    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i:Lcom/facebook/login/LoginBehavior;

    .line 30
    .line 31
    sget-object p1, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Lcom/facebook/login/LoginTargetApp;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/internal/WebDialog;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$a;->f()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    .line 6
    .line 7
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "redirect_uri"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "client_id"

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$a;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "e2e"

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Lcom/facebook/login/LoginTargetApp;

    .line 36
    .line 37
    sget-object v1, Lcom/facebook/login/LoginTargetApp;->INSTAGRAM:Lcom/facebook/login/LoginTargetApp;

    .line 38
    .line 39
    if-ne v0, v1, :cond_0

    .line 40
    .line 41
    const-string v0, "token,signed_request,graph_domain,granted_scopes"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "token,signed_request,graph_domain"

    .line 45
    .line 46
    :goto_0
    const-string v1, "response_type"

    .line 47
    .line 48
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "return_scopes"

    .line 52
    .line 53
    const-string v1, "true"

    .line 54
    .line 55
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "auth_type"

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i:Lcom/facebook/login/LoginBehavior;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "login_behavior"

    .line 74
    .line 75
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->k:Z

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Lcom/facebook/login/LoginTargetApp;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/facebook/login/LoginTargetApp;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "fx_app"

    .line 89
    .line 90
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->l:Z

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const-string v0, "skip_dedupe"

    .line 98
    .line 99
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    sget-object v0, Lcom/facebook/internal/WebDialog;->m:Lcom/facebook/internal/WebDialog$b;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$a;->d()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "null cannot be cast to non-null type android.content.Context"

    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$a;->g()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    iget-object v5, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Lcom/facebook/login/LoginTargetApp;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$a;->e()Lcom/facebook/internal/WebDialog$d;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    const-string v2, "oauth"

    .line 124
    .line 125
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/internal/WebDialog$b;->d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/LoginTargetApp;Lcom/facebook/internal/WebDialog$d;)Lcom/facebook/internal/WebDialog;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "authType"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "e2e"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final k(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->l(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->n:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final m(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "e2e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->n(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->m:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final o(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final p(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "fbconnect://chrome_os_success"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "fbconnect://success"

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final q(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 1
    .param p1    # Lcom/facebook/login/LoginBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "loginBehavior"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i:Lcom/facebook/login/LoginBehavior;

    .line 7
    .line 8
    return-object p0
.end method

.method public final r(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 1
    .param p1    # Lcom/facebook/login/LoginTargetApp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "targetApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Lcom/facebook/login/LoginTargetApp;

    .line 7
    .line 8
    return-object p0
.end method

.method public final s(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->l:Z

    .line 2
    .line 3
    return-object p0
.end method
