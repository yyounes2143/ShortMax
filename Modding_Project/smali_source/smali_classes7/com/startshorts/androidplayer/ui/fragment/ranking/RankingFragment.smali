.class public final Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;
.source "RankingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final y:Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:I

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->y:Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_ranking:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->o:I

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 9
    .line 10
    new-instance v1, Lui/a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lui/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 19
    .line 20
    new-instance v0, Lui/b;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lui/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->x:Lms/i;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->g0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->c0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->P()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    return-object v1
.end method

.method private final d0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->x:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final e0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 2
    .line 3
    new-instance v1, Lui/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lui/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->f(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 18
    .line 19
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 38
    .line 39
    new-instance v1, Lui/d;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lui/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->setLoadMoreListener(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final g0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v2, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->s:I

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    const-string v4, "tab_id"

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->t:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const-string v2, "tab_name"

    .line 35
    .line 36
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->t:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const-string v2, "module_name"

    .line 42
    .line 43
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->w:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "module_id"

    .line 49
    .line 50
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->v:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "scene"

    .line 56
    .line 57
    const-string v8, "discover_more"

    .line 58
    .line 59
    invoke-virtual {v3, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    add-int/lit8 v14, p2, 0x1

    .line 64
    .line 65
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v4, "position_id"

    .line 70
    .line 71
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "module_type"

    .line 75
    .line 76
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->u:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v2, "type"

    .line 82
    .line 83
    const-string v4, "positive"

    .line 84
    .line 85
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v2, "reel_id"

    .line 89
    .line 90
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    const-string v2, "upack"

    .line 108
    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    const/4 v6, 0x4

    .line 119
    const/4 v7, 0x0

    .line 120
    const-string v2, "discover_module_click"

    .line 121
    .line 122
    const-wide/16 v4, 0x0

    .line 123
    .line 124
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "requireContext(...)"

    .line 134
    .line 135
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 139
    .line 140
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_4

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    const/4 v9, 0x3

    .line 154
    :goto_0
    invoke-virtual {v3, v9}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 168
    .line 169
    .line 170
    :cond_5
    new-instance v4, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 171
    .line 172
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 211
    .line 212
    .line 213
    sget-object v10, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->Companion:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;

    .line 214
    .line 215
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->u:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->v:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v13, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->w:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v15, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 222
    .line 223
    iget v4, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->q:I

    .line 224
    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->r:Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v15, v4, v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 235
    .line 236
    iget v5, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->s:I

    .line 237
    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v17

    .line 242
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->t:Ljava/lang/String;

    .line 243
    .line 244
    const/16 v23, 0x3a

    .line 245
    .line 246
    const/16 v24, 0x0

    .line 247
    .line 248
    const/16 v18, 0x0

    .line 249
    .line 250
    const/16 v20, 0x0

    .line 251
    .line 252
    const/16 v21, 0x0

    .line 253
    .line 254
    const/16 v22, 0x0

    .line 255
    .line 256
    move-object/from16 v16, v4

    .line 257
    .line 258
    move-object/from16 v19, v0

    .line 259
    .line 260
    invoke-direct/range {v16 .. v24}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v17

    .line 267
    const/16 v20, 0x180

    .line 268
    .line 269
    const/16 v19, 0x0

    .line 270
    .line 271
    invoke-static/range {v10 .. v21}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;->create$default(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->d0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lfk/x;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->i0(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final i0(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->d0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->C()Lfk/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lfk/x;->a(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->R()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 v0, 0x0

    .line 47
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->d0()Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;

    .line 52
    .line 53
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->q:I

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v2, v3, v0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;-><init>(ILjava/lang/Integer;II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/ranking/a;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lui/e;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lui/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lui/f;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lui/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;Lcom/startshorts/androidplayer/viewmodel/ranking/b;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->a()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->J()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$b;->c()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->b()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ne v0, v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 130
    .line 131
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p0
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_lib:I

    .line 2
    .line 3
    return v0
.end method

.method public R()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->i0(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "rankingId"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, p2

    .line 24
    :goto_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->q:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string v1, "rankingName"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object p1, v0

    .line 41
    :goto_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->r:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string p2, "tabId"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    :cond_2
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->s:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const-string p2, "tabName"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move-object p1, v0

    .line 71
    :goto_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->t:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    const-string p2, "moduleType"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move-object p1, v0

    .line 87
    :goto_3
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->u:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    const-string p2, "moduleId"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    move-object p1, v0

    .line 103
    :goto_4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->v:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    const-string p2, "moduleName"

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->w:Ljava/lang/String;

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->f0()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->e0()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final refreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->p:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getShortsId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->r(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
