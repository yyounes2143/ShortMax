.class final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DailyTaskViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1506:1\n360#2,7:1507\n1863#2,2:1514\n1863#2,2:1516\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder\n*L\n1163#1:1507,7\n1370#1:1514,2\n1383#1:1516,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->o(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->hasCompleted()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->R(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->getAdAllCompletedGetBonus()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    const-string/jumbo v0, "watchAdValueTv"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget v2, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_all_ads_desc:I

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget v4, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_bonus_value:I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v0, "getString(...)"

    .line 107
    .line 108
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget v3, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_bonus_value:I

    .line 124
    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    filled-new-array {p1}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_rewards_activity_bonus:I

    .line 154
    .line 155
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    sget-object p1, Lyf/a;->a:Lyf/a;

    .line 160
    .line 161
    invoke-virtual {p1}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const/16 v9, 0x70

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    const/4 v8, 0x0

    .line 171
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void
.end method

.method private final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->hasCompleted()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-lez v0, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 35
    .line 36
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method private final n(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->l1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    sget-object v3, Lud/a;->a:Lud/a;

    .line 40
    .line 41
    invoke-virtual {v3}, Lud/a;->S()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "getContext(...)"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 69
    .line 70
    const-string v4, "foldUp"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget v4, Lcom/startshorts/androidplayer/R$string;->rewards_daily_list_fold:I

    .line 76
    .line 77
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_up3:I

    .line 78
    .line 79
    invoke-static {v1, v2, v3, v4, v5}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 80
    .line 81
    .line 82
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v4, "getContext(...)"

    .line 100
    .line 101
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 109
    .line 110
    const-string v5, "foldUp"

    .line 111
    .line 112
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget v5, Lcom/startshorts/androidplayer/R$string;->daily_watch_drama_task_more:I

    .line 116
    .line 117
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_down3:I

    .line 118
    .line 119
    invoke-static {v1, v3, v4, v5, v6}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    move-object v3, p1

    .line 125
    check-cast v3, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 137
    .line 138
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    monitor-exit p1

    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 146
    .line 147
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 155
    .line 156
    new-instance v2, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 159
    .line 160
    invoke-direct {v2, v0, p1, v3, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    monitor-exit p1

    .line 168
    throw v0

    .line 169
    :cond_1
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 176
    .line 177
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    :goto_2
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Ljava/util/List;

    .line 183
    .line 184
    return-object p1
.end method

.method private final o(Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;->b()Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->g0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 22
    .line 23
    sget-object v2, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;->b()Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->getTaskConfigModuleResponseList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;->b()Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->getAdAllCompletedGetBonus()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move v2, v1

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;->b()Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->getNextWatchAdWaitSecond()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v3, v1

    .line 83
    :goto_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->n(Ljava/util/List;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->p(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$e;->a()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-direct {p0, v0, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->r(Ljava/util/List;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-static {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->l(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->k(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 124
    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_6

    .line 131
    .line 132
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;

    .line 133
    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->f()V

    .line 145
    .line 146
    .line 147
    :cond_8
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->isNetworkError()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    const-string/jumbo v2, "watchAdStateViewGroup"

    .line 158
    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 169
    .line 170
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->i0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 184
    .line 185
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$f;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v0, v3, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->j0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_6

    .line 209
    .line 210
    :cond_a
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/reward/k$g;->a:Lcom/startshorts/androidplayer/viewmodel/reward/k$g;

    .line 211
    .line 212
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_b

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 223
    .line 224
    sget-object v0, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 234
    .line 235
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;

    .line 241
    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;->a()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$h;->b()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-interface {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->b(ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_6

    .line 264
    .line 265
    :cond_c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;

    .line 266
    .line 267
    if-eqz v0, :cond_13

    .line 268
    .line 269
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_d

    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-nez v0, :cond_e

    .line 282
    .line 283
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    move v3, v1

    .line 293
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_10

    .line 298
    .line 299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    check-cast v4, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    move-object v5, p1

    .line 310
    check-cast v5, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;

    .line 311
    .line 312
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;->a()I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-ne v4, v5, :cond_f

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_10
    const/4 v3, -0x1

    .line 323
    :goto_5
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 328
    .line 329
    if-eqz v2, :cond_15

    .line 330
    .line 331
    const/4 v3, 0x1

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->setCompleted(Ljava/lang/Integer;)V

    .line 337
    .line 338
    .line 339
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->k(Ljava/util/List;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 343
    .line 344
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    if-eqz v0, :cond_11

    .line 349
    .line 350
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 351
    .line 352
    .line 353
    :cond_11
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;->a()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    invoke-interface {v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->f(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$i;->b()Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdTaskComplete;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    if-eqz p1, :cond_12

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdTaskComplete;->getTaskBonus()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    :cond_12
    new-instance p1, Lek/a;

    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v2, "getContext(...)"

    .line 393
    .line 394
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sget-object v3, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->Companion:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;

    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v4}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v3, v4, v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;->getFormatBonus(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-direct {p1, v0, v1}, Lek/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_13
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$b;

    .line 430
    .line 431
    if-eqz v0, :cond_14

    .line 432
    .line 433
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 438
    .line 439
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->d()V

    .line 440
    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_14
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$c;

    .line 444
    .line 445
    if-eqz p1, :cond_15

    .line 446
    .line 447
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 452
    .line 453
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->e()V

    .line 454
    .line 455
    .line 456
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 457
    .line 458
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->k0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 459
    .line 460
    .line 461
    :cond_15
    :goto_6
    return-void
.end method

.method private final p(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    const-string/jumbo v0, "watchAdValueTv"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget v2, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_desc:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget v4, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_bonus_value:I

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v0, "getString(...)"

    .line 62
    .line 63
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget v3, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_ad_bonus_value:I

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    filled-new-array {p1}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget v0, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 109
    .line 110
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    sget-object p1, Lyf/a;->a:Lyf/a;

    .line 115
    .line 116
    invoke-virtual {p1}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const/16 v9, 0x70

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final r(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 19
    .line 20
    const-string/jumbo v3, "watchAdBonusRvViewstub"

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Ljk/e0;->e(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, v4

    .line 39
    :goto_0
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 42
    .line 43
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;

    .line 67
    .line 68
    invoke-direct {v5, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/recyclerview/widget/RecyclerView;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$2;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$2;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 89
    .line 90
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->J(I)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;

    .line 97
    .line 98
    invoke-direct {p2, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->I(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;)V

    .line 102
    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    const/4 v1, 0x2

    .line 106
    invoke-static {v0, p1, p2, v1, v4}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->h0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->q(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
    .locals 2
    .param p2    # Lcom/startshorts/androidplayer/bean/reward/RewardsModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "payloads"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 17
    .line 18
    const-string/jumbo v0, "watchAdStateViewGroup"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->n(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->getState()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p2, p1

    .line 42
    :goto_0
    instance-of p3, p2, Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    move-object p1, p2

    .line 47
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    :cond_1
    if-nez p1, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->s0()Landroidx/lifecycle/LifecycleOwner;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance p3, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$b;

    .line 59
    .line 60
    invoke-direct {p3, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$b;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;

    .line 64
    .line 65
    invoke-direct {v0, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
