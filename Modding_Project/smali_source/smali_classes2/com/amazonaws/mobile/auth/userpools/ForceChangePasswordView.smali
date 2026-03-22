.class public Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;
.super Landroid/widget/LinearLayout;
.source "ForceChangePasswordView.java"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Lcom/amazonaws/mobile/auth/userpools/FormView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

.field private e:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/graphics/Typeface;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobile/auth/userpools/ForgotPasswordView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->j:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    sget-object p3, Lcom/amazonaws/mobile/auth/userpools/R$styleable;->v:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/amazonaws/mobile/auth/userpools/R$styleable;->w:I

    const p3, -0xbbbbbc

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :goto_0
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->f:Ljava/lang/String;

    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->h:Landroid/graphics/Typeface;

    .line 11
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->z()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->g:Z

    .line 12
    invoke-static {}, Lcom/amazonaws/mobile/auth/userpools/CognitoUserPoolsSignInProvider;->v()I

    move-result p1

    iput p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->i:I

    .line 13
    iget-boolean p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->g:Z

    if-eqz p1, :cond_1

    .line 14
    new-instance p1, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

    iget p2, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->i:I

    invoke-direct {p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->e:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    iget p3, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->i:I

    invoke-direct {p1, p2, p3}, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;-><init>(II)V

    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->d:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    :goto_1
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->d:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a:Lcom/amazonaws/mobile/auth/userpools/FormView;

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
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->d:Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;

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
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->e:Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;

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
    .locals 5

    .line 1
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$id;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/Button;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->c:Landroid/widget/Button;

    .line 10
    .line 11
    sget v1, Lcom/amazonaws/mobile/auth/userpools/UserPoolFormConstants;->a:I

    .line 12
    .line 13
    const v2, -0xba6601

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b(II)Landroid/graphics/drawable/ShapeDrawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->c:Landroid/widget/Button;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a:Lcom/amazonaws/mobile/auth/userpools/FormView;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->h:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->j:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Setup font in ForceChangePasswordView: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->f:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->b:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->h:Landroid/graphics/Typeface;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->b:Landroid/widget/EditText;

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
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$id;->d:I

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
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a:Lcom/amazonaws/mobile/auth/userpools/FormView;

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
    sget v3, Lcom/amazonaws/mobile/auth/userpools/R$string;->n:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x81

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazonaws/mobile/auth/userpools/FormView;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->b:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->b()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->c()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/ForceChangePasswordView;->a()V

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
