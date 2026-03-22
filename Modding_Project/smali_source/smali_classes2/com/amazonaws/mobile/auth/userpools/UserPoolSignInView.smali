.class public Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;
.super Landroid/widget/LinearLayout;
.source "UserPoolSignInView.java"


# static fields
.field private static final k:Ljava/lang/String; = "UserPoolSignInView"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/amazonaws/mobile/auth/userpools/FormView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    sget p2, Lcom/amazonaws/mobile/auth/userpools/R$id;->r:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupCredentialsForm(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupSignInButton(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupLayoutForSignUpAndForgotPassword(Landroid/content/Context;)V

    .line 10
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupFontFamily(Landroid/app/Activity;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupBackgroundColor(Landroid/app/Activity;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->setupBackgroundColorFullScreen(Landroid/app/Activity;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b()Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->e(Ljava/lang/Class;Landroid/view/View;)Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->k:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "Cannot initialize the SignInButton. Please check if IdentityManager : startUpAuth and setUpToAuthenticate are invoked"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private setupBackgroundColor(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "signInBackgroundColor"

    .line 6
    .line 7
    const v1, -0xbbbbbc

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->h:I

    .line 15
    .line 16
    return-void
.end method

.method private setupBackgroundColorFullScreen(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "fullScreenBackgroundColor"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->j:Z

    .line 13
    .line 14
    return-void
.end method

.method private setupCredentialsForm(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/auth/userpools/FormView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 7
    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 16
    .line 17
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->p:I

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v3, 0x21

    .line 24
    .line 25
    invoke-virtual {v1, p1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->d:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 32
    .line 33
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->n:I

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v3, 0x81

    .line 40
    .line 41
    invoke-virtual {v1, p1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->e:Landroid/widget/EditText;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private setupFontFamily(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "fontFamily"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->i:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->k:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Setup font in UserPoolSignInView: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->i:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->d:Landroid/widget/EditText;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->e:Landroid/widget/EditText;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private setupLayoutForSignUpAndForgotPassword(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, -0x2

    .line 14
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v5, 0xa

    .line 24
    .line 25
    invoke-static {v5}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v6, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 40
    .line 41
    new-instance v1, Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 47
    .line 48
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$string;->m:I

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 54
    .line 55
    const v3, 0x1030046

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 62
    .line 63
    const v5, 0x800003

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 70
    .line 71
    const v5, -0xba6601

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .line 79
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    const/high16 v6, 0x3f800000    # 1.0f

    .line 83
    .line 84
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 85
    .line 86
    iget-object v7, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 97
    .line 98
    sget v7, Lcom/amazonaws/mobile/auth/userpools/R$string;->k:I

    .line 99
    .line 100
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 109
    .line 110
    const v1, 0x800005

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .line 123
    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .line 125
    .line 126
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    .line 128
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private setupSignInButton(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 13
    .line 14
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->j:I

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 30
    .line 31
    sget v2, Lcom/amazonaws/mobile/auth/userpools/UserPoolFormConstants;->a:I

    .line 32
    .line 33
    const v3, -0xba6601

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b(II)Landroid/graphics/drawable/ShapeDrawable;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .line 49
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$dimen;->a:I

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    sget v1, Lcom/amazonaws/mobile/auth/userpools/R$dimen;->b:I

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/2addr p1, v3

    .line 77
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v2, v1, p1, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->f:Landroid/widget/Button;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getCredentialsFormView()Lcom/amazonaws/mobile/auth/userpools/FormView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnteredPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->e:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEnteredUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->d:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method getFontFamily()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForgotPasswordTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignUpTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-double v0, p1

    .line 6
    const-wide v2, 0x3feb333333333333L    # 0.85

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    mul-double/2addr v0, v2

    .line 12
    double-to-int p1, v0

    .line 13
    sget v0, Lcom/amazonaws/mobile/auth/userpools/UserPoolFormConstants;->b:I

    .line 14
    .line 15
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 v0, -0x80000000

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/UserPoolSignInView;->a()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
