.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ShortsIconTextView.kt"

# interfaces
.implements Lzj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/startshorts/androidplayer/R$styleable;->ShortsIconTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->ShortsIconTextView_itv_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->d:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static final B(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->B(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->z(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final z(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lzj/b;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lzj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->d:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    const-string v1, "getString(...)"

    .line 15
    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_share:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->y(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_share:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->A(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_list:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->y(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_list:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->A(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_collected:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_uncollect:I

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->y(I)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lfk/w;->a:Lfk/w;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCollectNum()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {v0, v1, v2}, Lfk/w;->a(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->A(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_shorts_icon_text:I

    .line 2
    .line 3
    return v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->icon_iv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->b:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->text_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public y(I)V
    .locals 1

    .line 1
    new-instance v0, Lzj/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lzj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
