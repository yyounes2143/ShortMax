.class public Lcom/amazonaws/mobile/auth/userpools/FormView;
.super Landroid/widget/LinearLayout;
.source "FormView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field private final a:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/amazonaws/mobile/auth/userpools/FormView;->b:I

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/amazonaws/mobile/auth/userpools/FormView;->c:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/auth/userpools/FormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/auth/userpools/FormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    sget p2, Lcom/amazonaws/mobile/auth/userpools/FormView;->b:I

    const/16 v1, 0xa

    const v2, -0xbbbbbc

    .line 6
    invoke-direct {p0, p2, v2, v1}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    const/16 v3, 0x14

    .line 7
    invoke-direct {p0, p2, v2, v3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    const/16 v4, 0x1e

    .line 8
    invoke-direct {p0, p2, v2, v4}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    const/16 v5, 0x32

    .line 9
    invoke-direct {p0, p2, v2, v5}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    const/16 v6, 0x50

    .line 10
    invoke-direct {p0, p2, v2, v6}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    const/16 v6, 0x64

    .line 11
    invoke-direct {p0, p2, p1, v6}, Lcom/amazonaws/mobile/auth/userpools/FormView;->c(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    const/4 p2, 0x6

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, p2, v0

    aput-object v3, p2, p3

    const/4 v0, 0x2

    aput-object v4, p2, v0

    const/4 v0, 0x3

    aput-object v5, p2, v0

    const/4 v0, 0x4

    aput-object v2, p2, v0

    const/4 v0, 0x5

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/amazonaws/mobile/auth/userpools/FormView;->a:[Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v0, v2

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 30
    .line 31
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    .line 33
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    .line 50
    .line 51
    move v0, v6

    .line 52
    :goto_0
    new-instance v2, Lcom/amazonaws/mobile/auth/userpools/FormEditText;

    .line 53
    .line 54
    invoke-direct {v2, p1, p2, p3}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .line 59
    const/4 p2, -0x2

    .line 60
    invoke-direct {p1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    sget p2, Lcom/amazonaws/mobile/auth/userpools/FormView;->c:I

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/mobile/auth/userpools/FormView;->getFormShadowMargin()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p1, p2, v0, p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/userpools/FormEditText;->getEditTextView()Landroid/widget/EditText;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method private c(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b(II)Landroid/graphics/drawable/ShapeDrawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    if-ge p3, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method private getFormBackground()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormView;->a:[Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-direct {v6, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v7, v0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormView;->a:[Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    if-ge v7, v0, :cond_0

    .line 14
    .line 15
    invoke-static {v7}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v7}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v7}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v7}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    move-object v0, v6

    .line 32
    move v1, v7

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v7, v7, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v6
.end method


# virtual methods
.method public b(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobile/auth/userpools/FormView;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getFormShadowMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormView;->a:[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
