.class public Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordActivity;
.super Landroid/app/Activity;
.source "ForceChangePasswordActivity.java"


# instance fields
.field private a:Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public forceChangePassword(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordActivity;->a:Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->getPassword()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "password"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$layout;->a:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$id;->e:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordActivity;->a:Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;

    .line 18
    .line 19
    const-string p1, "input_method"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
