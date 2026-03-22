.class public final Lio/bidmachine/rendering/internal/view/privacy/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b$c;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/b$c;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->a:Lms/i;

    .line 19
    .line 20
    sget-object p1, Lio/bidmachine/rendering/internal/view/privacy/b$b;->d:Lio/bidmachine/rendering/internal/view/privacy/b$b;

    .line 21
    .line 22
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    new-instance p1, Lpq/a;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lpq/a;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/b$a;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/view/privacy/c;->setOnCloseButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    const/4 v2, -0x2

    .line 48
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x51

    .line 52
    .line 53
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    .line 55
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->g()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/view/privacy/b;->c(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/b;->e(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<anonymous parameter 0>"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "insets"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v0, 0x1e

    .line 19
    .line 20
    if-lt p2, v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/applovin/impl/g9;->a()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p3, p2}, Landroidx/core/view/v1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-static {p2}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/Insets;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {p2}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/Insets;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {p2}, Landroidx/appcompat/widget/l;->a(Landroid/graphics/Insets;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {p2}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/Insets;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-direct {v0, p2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    add-int/2addr p1, v4

    .line 104
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    .line 112
    .line 113
    return-object p3
.end method

.method private static final e(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Lpq/b;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lpq/b;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/privacy/c;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clickListener"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/rendering/internal/view/privacy/c;->d(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getOnCloseClickListener()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "context"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/high16 v3, 0x44160000    # 600.0f

    .line 20
    .line 21
    invoke-static {v1, v3}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/high16 v2, 0x42000000    # 32.0f

    .line 33
    .line 34
    invoke-static {v3, v2}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    if-lt v0, v2, :cond_0

    .line 40
    .line 41
    const/high16 p2, 0x40000000    # 2.0f

    .line 42
    .line 43
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :cond_0
    move v2, p2

    .line 48
    move-object v0, p0

    .line 49
    move-object v1, p1

    .line 50
    move v3, p3

    .line 51
    move v4, p4

    .line 52
    move v5, p5

    .line 53
    invoke-super/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "subtitle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->setSubtitle(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->setTitle(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
