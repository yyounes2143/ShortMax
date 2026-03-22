.class public final synthetic Lcom/facebook/login/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$a;


# instance fields
.field public final synthetic a:Lcom/facebook/login/LoginManager;

.field public final synthetic b:Lcom/facebook/k;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginManager;Lcom/facebook/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/login/p;->a:Lcom/facebook/login/LoginManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/login/p;->b:Lcom/facebook/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/p;->a:Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/login/p;->b:Lcom/facebook/k;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/login/LoginManager;->a(Lcom/facebook/login/LoginManager;Lcom/facebook/k;ILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
