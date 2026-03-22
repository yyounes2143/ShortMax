.class public final Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RewardPendantView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lms/i;
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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x43600000    # 224.0f

    .line 4
    invoke-static {p2}, Ljk/g;->a(F)I

    move-result p3

    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->a:I

    .line 5
    invoke-static {p2}, Ljk/g;->a(F)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->b:I

    .line 6
    new-instance p2, Luj/c;

    invoke-direct {p2, p1, p0}, Luj/c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->c:Lms/i;

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

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->w(Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->v(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->t(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final t(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method private static final v(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v1, "position_click"

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v4, Lce/j;->a:Lce/j;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v0, "getContext(...)"

    .line 26
    .line 27
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v9, 0x8

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const-string v6, "task_center_float"

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v7, p0

    .line 37
    invoke-static/range {v4 .. v10}, Lce/j;->o(Lce/j;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final w(Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lud/a;->K0(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final u(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v8, 0x0

    .line 11
    invoke-static {v1, p1, v0, v2, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v2, "position_show"

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 29
    .line 30
    new-instance v1, Luj/d;

    .line 31
    .line 32
    invoke-direct {v1, p1, p0}, Luj/d;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    :cond_0
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 59
    .line 60
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->a:I

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 71
    .line 72
    .line 73
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->a:I

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->a:I

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->b:I

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 98
    .line 99
    .line 100
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewRewardsPendantBinding;->b:Landroid/widget/ImageView;

    .line 110
    .line 111
    new-instance v0, Luj/e;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Luj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/RewardPendantView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
