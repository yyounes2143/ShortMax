.class public Lcom/facebook/internal/WebDialog$a;
.super Ljava/lang/Object;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Lcom/facebook/internal/WebDialog$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/AccessToken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/WebDialog$a;->g:Lcom/facebook/AccessToken;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken$c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/facebook/internal/u0;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, p0, Lcom/facebook/internal/WebDialog$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 7
    const-string p2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    .line 8
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/WebDialog$a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 11
    invoke-static {p1}, Lcom/facebook/internal/u0;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/v0;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$a;->b:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/WebDialog$a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$a;->c:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/internal/WebDialog;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->g:Lcom/facebook/AccessToken;

    .line 2
    .line 3
    const-string v1, "app_id"

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v3

    .line 20
    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$a;->g:Lcom/facebook/AccessToken;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_2
    const-string v1, "access_token"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Lcom/facebook/internal/WebDialog$a;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    sget-object v3, Lcom/facebook/internal/WebDialog;->m:Lcom/facebook/internal/WebDialog$b;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$a;->a:Landroid/content/Context;

    .line 53
    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$a;->c:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v6, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 59
    .line 60
    iget v7, p0, Lcom/facebook/internal/WebDialog$a;->d:I

    .line 61
    .line 62
    iget-object v8, p0, Lcom/facebook/internal/WebDialog$a;->e:Lcom/facebook/internal/WebDialog$d;

    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/internal/WebDialog$b;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$d;)Lcom/facebook/internal/WebDialog;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "Required value was null."

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/facebook/internal/WebDialog$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->e:Lcom/facebook/internal/WebDialog$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$a;->f:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/internal/WebDialog$a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(Lcom/facebook/internal/WebDialog$d;)Lcom/facebook/internal/WebDialog$a;
    .locals 0
    .param p1    # Lcom/facebook/internal/WebDialog$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$a;->e:Lcom/facebook/internal/WebDialog$d;

    .line 2
    .line 3
    return-object p0
.end method
