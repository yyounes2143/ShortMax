.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
.source "ShortsTextView.kt"

# interfaces
.implements Lzj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->c:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$a;

    .line 8
    .line 9
    return-void
.end method

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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/startshorts/androidplayer/R$styleable;->ShortsTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->ShortsTextView_tv_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->b:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->k(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->g(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_1
    if-ge v3, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    instance-of v5, v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    check-cast v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-ne v5, p1, :cond_1

    .line 38
    .line 39
    return-object v4

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    return-object v2
.end method

.method private final h()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->g(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->g(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_more:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->i()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->h()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private final setTextLabelPadding(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final setTextLabelPaddingWithImg(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
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
    .locals 4
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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->b:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_8

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_5

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x5

    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$id;->tvLabelStyle:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 60
    .line 61
    if-eqz v0, :cond_b

    .line 62
    .line 63
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->m1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelText()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelStyle()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v2, 0x6

    .line 94
    if-ne p1, v2, :cond_3

    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0, v0, p1, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_3
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_4
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lzj/e;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lzj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    :goto_0
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->h()V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/16 v0, 0x20

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_9

    .line 192
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget v1, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_trailer:I

    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :goto_1
    move-object v0, p1

    .line 219
    goto :goto_2

    .line 220
    :cond_9
    const/4 p1, 0x0

    .line 221
    goto :goto_1

    .line 222
    :cond_a
    :goto_2
    sget p1, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 229
    .line 230
    if-eqz p1, :cond_b

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :cond_b
    :goto_3
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_member_only_label:I

    .line 31
    .line 32
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->setTextLabelPaddingWithImg(Landroid/widget/TextView;)V

    .line 40
    .line 41
    .line 42
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_short_label_style_member_only:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
