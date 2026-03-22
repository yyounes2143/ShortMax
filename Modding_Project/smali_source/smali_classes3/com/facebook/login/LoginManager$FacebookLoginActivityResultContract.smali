.class public final Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FacebookLoginActivityResultContract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Ljava/util/Collection<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lcom/facebook/i$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginManager.kt\ncom/facebook/login/LoginManager$FacebookLoginActivityResultContract\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1400:1\n1#2:1401\n*E\n"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic c:Lcom/facebook/login/LoginManager;


# direct methods
.method public constructor <init>(Lcom/facebook/login/LoginManager;Lcom/facebook/i;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/facebook/login/LoginManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/i;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->a:Lcom/facebook/i;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->b:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permissions"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/facebook/login/k;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/k;-><init>(Ljava/util/Collection;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/facebook/login/LoginManager;->j(Lcom/facebook/login/k;)Lcom/facebook/login/LoginClient$Request;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object p2, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v7, p2}, Lcom/facebook/login/LoginClient$Request;->A(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p2, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 32
    .line 33
    invoke-static {p2, p1, v7}, Lcom/facebook/login/LoginManager;->f(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 37
    .line 38
    invoke-virtual {p2, v7}, Lcom/facebook/login/LoginManager;->l(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 43
    .line 44
    invoke-static {v0, p2}, Lcom/facebook/login/LoginManager;->g(Lcom/facebook/login/LoginManager;Landroid/content/Intent;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    return-object p2

    .line 51
    :cond_1
    new-instance p2, Lcom/facebook/FacebookException;

    .line 52
    .line 53
    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 59
    .line 60
    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v2, p1

    .line 65
    move-object v5, p2

    .line 66
    invoke-static/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->e(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.method public b(ILandroid/content/Intent;)Lcom/facebook/i$a;
    .locals 6
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->c:Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/facebook/login/LoginManager;->w(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/k;ILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->a:Lcom/facebook/i;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v0, p1, p2}, Lcom/facebook/i;->onActivityResult(IILandroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/facebook/i$a;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/i$a;-><init>(IILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final c(Lcom/facebook/i;)V
    .locals 0
    .param p1    # Lcom/facebook/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->a:Lcom/facebook/i;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->a(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;->b(ILandroid/content/Intent;)Lcom/facebook/i$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
