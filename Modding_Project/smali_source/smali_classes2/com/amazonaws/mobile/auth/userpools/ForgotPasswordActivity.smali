.class public Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;
.super Landroid/app/Activity;
.source "ForgotPasswordActivity.java"


# static fields
.field private static final b:Ljava/lang/String; = "ForgotPasswordActivity"


# instance fields
.field private a:Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;


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
.method public forgotPassword(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;->a:Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;->getPassword()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;->a:Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;->getVerificationCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;->b:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "verificationCode = "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "password"

    .line 42
    .line 43
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string/jumbo p1, "verification_code"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$layout;->b:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$id;->h:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordActivity;->a:Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;

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
