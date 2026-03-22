.class public final Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;
.super Landroid/widget/FrameLayout;
.source "ContinuePlayLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 6
    iget-object p2, p1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->f:Landroid/widget/ImageView;

    new-instance p3, Lqj/a;

    invoke-direct {p3, p0}, Lqj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->g:Landroid/widget/ImageView;

    new-instance p3, Lqj/b;

    invoke-direct {p3, p0}, Lqj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p3, Lqj/c;

    invoke-direct {p3, p0}, Lqj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lqj/d;

    invoke-direct {p2, p0}, Lqj/d;-><init>(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance p1, Lqj/e;

    invoke-direct {p1, p0}, Lqj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->g(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->k(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->f(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->i(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->h(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->onClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->onClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final i(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;)V
    .locals 3

    .line 1
    sget-object v0, Lzg/c;->a:Lzg/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzg/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->k:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShowType(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->l(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->b()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final l(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getTotalEpisodes()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 99
    .line 100
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getCoverId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lid/c;->a:Lid/c;

    .line 113
    .line 114
    invoke-virtual {p1}, Lid/c;->b()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lid/c;->a()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 126
    .line 127
    .line 128
    const/high16 p1, 0x42880000    # 68.0f

    .line 129
    .line 130
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 135
    .line 136
    .line 137
    const/high16 p1, 0x42b80000    # 92.0f

    .line 138
    .line 139
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 144
    .line 145
    .line 146
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 152
    .line 153
    .line 154
    const/high16 p1, 0x40000000    # 2.0f

    .line 155
    .line 156
    invoke-static {p1}, Ljk/g;->b(F)F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->c:Ljava/lang/Runnable;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->c:Ljava/lang/Runnable;

    .line 174
    .line 175
    const-wide/16 v0, 0xdac

    .line 176
    .line 177
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->a:Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemCoverPlayBinding;->h:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 200
    .line 201
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 202
    .line 203
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getCoverId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object p1, Lid/c;->a:Lid/c;

    .line 214
    .line 215
    invoke-virtual {p1}, Lid/c;->b()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lid/c;->a()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 227
    .line 228
    .line 229
    const/high16 p1, 0x42ac0000    # 86.0f

    .line 230
    .line 231
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 236
    .line 237
    .line 238
    const/high16 p1, 0x42e60000    # 115.0f

    .line 239
    .line 240
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 245
    .line 246
    .line 247
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 248
    .line 249
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 250
    .line 251
    .line 252
    const/high16 p1, 0x3f800000    # 1.0f

    .line 253
    .line 254
    invoke-static {p1}, Ljk/g;->b(F)F

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderWidth(F)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    sget v4, Lcom/startshorts/androidplayer/R$color;->color_common_white_70:I

    .line 266
    .line 267
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setBorderColor(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 275
    .line 276
    .line 277
    const/high16 p1, 0x40800000    # 4.0f

    .line 278
    .line 279
    invoke-static {p1}, Ljk/g;->b(F)F

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 284
    .line 285
    .line 286
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 287
    .line 288
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 289
    .line 290
    .line 291
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lud/b;->D3(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    sget-object v0, Lzg/c;->a:Lzg/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzg/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->k:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShowType(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v2}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->n(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tabType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lzg/c;->a:Lzg/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lzg/c;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Lud/b;->a:Lud/b;

    .line 13
    .line 14
    invoke-virtual {v1}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 23
    .line 24
    if-eq p1, v0, :cond_5

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 27
    .line 28
    if-eq p1, v0, :cond_5

    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->k:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eq p1, v0, :cond_2

    .line 43
    .line 44
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 45
    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 50
    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShowType(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShowType(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->l(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;->b()V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    :goto_2
    const/16 p1, 0x8

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final setCallback(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->b:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;

    .line 2
    .line 3
    return-void
.end method
