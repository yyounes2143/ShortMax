.class public final Lio/bidmachine/rendering/internal/view/privacy/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$d;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$d;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->a:Lms/i;

    .line 19
    .line 20
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$c;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$c;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->b:Lms/i;

    .line 30
    .line 31
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$b;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$b;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->c:Lms/i;

    .line 41
    .line 42
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$a;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$a;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->d:Lms/i;

    .line 52
    .line 53
    sget v0, Lpp/d;->a:I

    .line 54
    .line 55
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    .line 61
    .line 62
    sget v0, Lpp/b;->b:I

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    const/high16 v0, 0x41800000    # 16.0f

    .line 68
    .line 69
    invoke-static {p1, v0}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, p1, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->f(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->e(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "$clickListener"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final f(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "$clickListener"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final getActionButtonsContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-actionButtonsContainer>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getCloseButton()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-closeButton>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getSubtitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-subtitleTextView>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-titleTextView>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V
    .locals 4
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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/a;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "context"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lio/bidmachine/rendering/internal/view/privacy/a;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Lio/bidmachine/rendering/internal/view/privacy/a;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lpq/d;

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lpq/d;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    const/4 p2, -0x2

    .line 45
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setOnCloseButtonClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 2
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
    const-string v0, "clickListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getCloseButton()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lpq/c;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lpq/c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getSubtitleTextView()Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getTitleTextView()Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
