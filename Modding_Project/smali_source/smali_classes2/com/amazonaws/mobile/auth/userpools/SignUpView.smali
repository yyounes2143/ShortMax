.class public Lcom/amazonaws/mobile/auth/userpools/SignUpView;
.super Landroid/widget/LinearLayout;
.source "SignUpView.java"


# static fields
.field private static final o:Ljava/lang/String; = "SignUpView"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Lcom/amazonaws/mobile/auth/userpools/FormView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

.field private j:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/graphics/Typeface;

.field private n:I


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
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Lcom/amazonaws/mobile/auth/userpools/R$styleable;->O:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/amazonaws/mobile/auth/userpools/R$styleable;->P:I

    const p3, -0xbbbbbc

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :goto_0
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->k:Ljava/lang/String;

    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 11
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->l:Z

    .line 12
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->v()I

    move-result p1

    iput p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->n:I

    .line 13
    iget-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->l:Z

    if-eqz p1, :cond_1

    .line 14
    new-instance p1, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

    iget p2, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->n:I

    invoke-direct {p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->j:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    iget p3, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->n:I

    invoke-direct {p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;-><init>(II)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->i:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    :goto_1
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->i:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    add-int/2addr v1, v2

    .line 22
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->i:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->j:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->o:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Setup font in SignUpView: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->k:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->d:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->e:Landroid/widget/EditText;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->f:Landroid/widget/EditText;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->g:Landroid/widget/EditText;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->h:Landroid/widget/EditText;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->a:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->b:Landroid/widget/Button;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->m:Landroid/graphics/Typeface;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->b:Landroid/widget/Button;

    .line 2
    .line 3
    sget v1, Lcom/amazonaws/mobile/auth/userpools/UserPoolFormConstants;->a:I

    .line 4
    .line 5
    const v2, -0xba6601

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b(II)Landroid/graphics/drawable/ShapeDrawable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->b:Landroid/widget/Button;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 30
    .line 31
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->g:Landroid/widget/EditText;

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

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->f:Landroid/widget/EditText;

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

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->e:Landroid/widget/EditText;

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

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->h:Landroid/widget/EditText;

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

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->d:Landroid/widget/EditText;

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

.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$id;->o:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$string;->z:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x61

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->d:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget v4, Lcom/amazonaws/mobile/auth/userpools/R$string;->n:I

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v4, 0x81

    .line 53
    .line 54
    invoke-virtual {v0, v1, v4, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->e:Landroid/widget/EditText;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget v4, Lcom/amazonaws/mobile/auth/userpools/R$string;->c:I

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->f:Landroid/widget/EditText;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$string;->a:I

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/16 v3, 0x21

    .line 99
    .line 100
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->g:Landroid/widget/EditText;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$string;->h:I

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const/4 v3, 0x3

    .line 123
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->h:Landroid/widget/EditText;

    .line 128
    .line 129
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$id;->p:I

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->a:Landroid/widget/TextView;

    .line 138
    .line 139
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$id;->l:I

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/Button;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->b:Landroid/widget/Button;

    .line 148
    .line 149
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->c()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->b()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
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
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->e:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
