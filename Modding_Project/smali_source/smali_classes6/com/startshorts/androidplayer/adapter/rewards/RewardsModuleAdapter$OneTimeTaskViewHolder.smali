.class final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneTimeTaskViewHolder"
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
        "SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1506:1\n1863#2,2:1507\n1863#2,2:1509\n360#2,7:1511\n360#2,7:1518\n360#2,7:1525\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder\n*L\n697#1:1507,2\n707#1:1509,2\n970#1:1511,7\n987#1:1518,7\n1001#1:1525,7\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->o(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ne v5, p1, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/2addr v4, v0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v4, v2

    .line 47
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v1

    .line 50
    goto :goto_3

    .line 51
    :goto_2
    monitor-exit v1

    .line 52
    throw p1

    .line 53
    :cond_2
    move v4, v2

    .line 54
    :goto_3
    const/4 p1, 0x2

    .line 55
    if-eq v4, v2, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-static {v1, v4, v2, p1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->i(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;ILjava/lang/Object;ILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->t()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v1, v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method private final m(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/task/Task;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/2addr v4, v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move v4, v2

    .line 55
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit v1

    .line 58
    goto :goto_3

    .line 59
    :goto_2
    monitor-exit v1

    .line 60
    throw p1

    .line 61
    :cond_2
    move v4, v2

    .line 62
    :goto_3
    const/4 p1, 0x2

    .line 63
    if-eq v4, v2, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-static {v1, v4, v2, p1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->i(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;ILjava/lang/Object;ILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->t()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v1, v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 92
    .line 93
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method private final n(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/task/Task;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/task/Task;",
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
    const/4 v2, 0x5

    .line 11
    if-le v1, v2, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->l1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    sget-object v1, Lud/a;->a:Lud/a;

    .line 36
    .line 37
    invoke-virtual {v1}, Lud/a;->T()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v3, "foldUp"

    .line 42
    .line 43
    const-string v4, "getContext(...)"

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 69
    .line 70
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget v3, Lcom/startshorts/androidplayer/R$string;->rewards_daily_list_fold:I

    .line 74
    .line 75
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_up3:I

    .line 76
    .line 77
    invoke-static {v1, v2, v4, v3, v5}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 78
    .line 79
    .line 80
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 105
    .line 106
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget v3, Lcom/startshorts/androidplayer/R$string;->daily_watch_drama_task_more:I

    .line 110
    .line 111
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_down3:I

    .line 112
    .line 113
    invoke-static {v1, v5, v4, v3, v6}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    .line 117
    .line 118
    move-object v3, p1

    .line 119
    check-cast v3, Ljava/lang/Iterable;

    .line 120
    .line 121
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 146
    .line 147
    new-instance v2, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$a;

    .line 148
    .line 149
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 150
    .line 151
    invoke-direct {v2, v0, p1, v3, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_1
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 165
    .line 166
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Ljava/util/List;

    .line 172
    .line 173
    return-object p1
.end method

.method private final o(Ljava/lang/Object;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$f;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 14
    .line 15
    sget-object v5, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$f;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$f;->a()Lcom/startshorts/androidplayer/bean/task/TaskModuleList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/task/TaskModuleList;->getTaskModuleResponseList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/startshorts/androidplayer/bean/task/TaskModule;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/task/TaskModule;->getAppTaskReponseList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_0
    check-cast v3, Ljava/util/Collection;

    .line 47
    .line 48
    if-eqz v3, :cond_9

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$f;->a()Lcom/startshorts/androidplayer/bean/task/TaskModuleList;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_8

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/TaskModuleList;->getTaskModuleResponseList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_8

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/startshorts/androidplayer/bean/task/TaskModule;

    .line 75
    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/TaskModule;->getAppTaskReponseList()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    sget-object v0, Lud/b;->a:Lud/b;

    .line 85
    .line 86
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v0, v3}, Lud/b;->x1(Ljava/lang/String;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_2
    move-object v3, v0

    .line 103
    check-cast v3, Ljava/util/Collection;

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_5

    .line 110
    .line 111
    move-object v3, p1

    .line 112
    check-cast v3, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/task/Task;->setCompleteTaskTimes(I)V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-ne v5, v1, :cond_3

    .line 152
    .line 153
    invoke-direct {p0, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->s(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    move-object v0, p1

    .line 158
    check-cast v0, Ljava/lang/Iterable;

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-ne v3, v1, :cond_6

    .line 181
    .line 182
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->s(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->n(Ljava/util/List;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->r(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->k0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->c:Landroid/view/View;

    .line 203
    .line 204
    const/16 v0, 0x8

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 212
    .line 213
    invoke-static {p1, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;I)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$g;

    .line 219
    .line 220
    const-string/jumbo v5, "taskStateViewGroup"

    .line 221
    .line 222
    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$g;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$g;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->isNetworkError()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_b

    .line 236
    .line 237
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 244
    .line 245
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->i0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 260
    .line 261
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$g;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->j0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$h;

    .line 278
    .line 279
    if-eqz v0, :cond_d

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 286
    .line 287
    sget-object v0, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_d
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$a;

    .line 295
    .line 296
    if-eqz v0, :cond_f

    .line 297
    .line 298
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$a;

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->isNetworkError()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_e

    .line 309
    .line 310
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 317
    .line 318
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->i0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 333
    .line 334
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->j0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :cond_f
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;

    .line 351
    .line 352
    const/4 v5, 0x5

    .line 353
    const/4 v6, 0x0

    .line 354
    if-eqz v0, :cond_13

    .line 355
    .line 356
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;->a()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-eqz v0, :cond_10

    .line 363
    .line 364
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->m(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$b;->b()Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_11

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->l(I)V

    .line 378
    .line 379
    .line 380
    :cond_11
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 381
    .line 382
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    if-eqz p1, :cond_12

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    :cond_12
    if-gt v6, v5, :cond_1e

    .line 393
    .line 394
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 395
    .line 396
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->l1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    check-cast p1, Ljava/lang/Boolean;

    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-nez p1, :cond_1e

    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 421
    .line 422
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_3

    .line 426
    .line 427
    :cond_13
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$k;

    .line 428
    .line 429
    if-eqz v0, :cond_14

    .line 430
    .line 431
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 432
    .line 433
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->k0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_3

    .line 437
    .line 438
    :cond_14
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$l;

    .line 439
    .line 440
    if-eqz v0, :cond_15

    .line 441
    .line 442
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 443
    .line 444
    invoke-static {p1, v1, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_3

    .line 448
    .line 449
    :cond_15
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$j;

    .line 450
    .line 451
    if-eqz v0, :cond_16

    .line 452
    .line 453
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 454
    .line 455
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$j;

    .line 456
    .line 457
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$j;->a()I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    invoke-static {v0, p1, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto :goto_3

    .line 465
    :cond_16
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;

    .line 466
    .line 467
    if-eqz v0, :cond_1b

    .line 468
    .line 469
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;

    .line 470
    .line 471
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;->a()I

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-eq p1, v2, :cond_1a

    .line 476
    .line 477
    if-eq p1, v4, :cond_19

    .line 478
    .line 479
    const/4 v0, 0x3

    .line 480
    if-eq p1, v0, :cond_18

    .line 481
    .line 482
    const/4 v0, 0x4

    .line 483
    if-eq p1, v0, :cond_17

    .line 484
    .line 485
    goto :goto_3

    .line 486
    :cond_17
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 487
    .line 488
    invoke-static {p1, v5, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    goto :goto_3

    .line 492
    :cond_18
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 493
    .line 494
    invoke-static {p1, v0, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto :goto_3

    .line 498
    :cond_19
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 499
    .line 500
    invoke-static {p1, v4, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    goto :goto_3

    .line 504
    :cond_1a
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 505
    .line 506
    invoke-static {p1, v2, v6, v4, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->u0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;IIILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_1b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$e;

    .line 511
    .line 512
    if-eqz v0, :cond_1c

    .line 513
    .line 514
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$e;

    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$e;->a()I

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->p(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_1c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$c;

    .line 525
    .line 526
    if-eqz v0, :cond_1d

    .line 527
    .line 528
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 533
    .line 534
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->d()V

    .line 535
    .line 536
    .line 537
    goto :goto_3

    .line 538
    :cond_1d
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/reward/j$d;

    .line 539
    .line 540
    if-eqz p1, :cond_1e

    .line 541
    .line 542
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 547
    .line 548
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->e()V

    .line 549
    .line 550
    .line 551
    :cond_1e
    :goto_3
    return-void
.end method

.method private final p(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, p1, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v3, v1

    .line 47
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    goto :goto_3

    .line 51
    :goto_2
    monitor-exit v0

    .line 52
    throw p1

    .line 53
    :cond_2
    move v3, v1

    .line 54
    :goto_3
    if-eq v3, v1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method private final r(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/task/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->d:Landroidx/databinding/ViewStubProxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->d:Landroidx/databinding/ViewStubProxy;

    .line 18
    .line 19
    const-string/jumbo v1, "taskRvViewstub"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljk/e0;->e(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v2

    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 41
    .line 42
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    new-instance v3, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$showTaskRV$1$1;

    .line 64
    .line 65
    invoke-direct {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$showTaskRV$1$1;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance v3, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 72
    .line 73
    invoke-direct {v3}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v4, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;

    .line 77
    .line 78
    invoke-direct {v4, v1, p0, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$c;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->G(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;)V

    .line 82
    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x2

    .line 86
    invoke-static {v3, p1, v4, v5, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->f0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 2

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/task/Task;->getCompleteTaskTimes()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/task/Task;->setCompleteTaskTimes(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->q(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
    .locals 1
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->k()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleTaskBinding;->e:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 17
    .line 18
    const-string/jumbo v0, "taskStateViewGroup"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$i;->a:Lcom/startshorts/androidplayer/viewmodel/reward/c$i;

    .line 25
    .line 26
    invoke-interface {p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->n(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->getState()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p2, p1

    .line 38
    :goto_0
    instance-of p3, p2, Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    move-object p1, p2

    .line 43
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    :cond_1
    if-nez p1, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->s0()Landroidx/lifecycle/LifecycleOwner;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance p3, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$b;

    .line 55
    .line 56
    invoke-direct {p3, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder$b;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$OneTimeTaskViewHolder;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;

    .line 60
    .line 61
    invoke-direct {v0, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
