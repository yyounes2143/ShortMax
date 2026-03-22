.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;
.super Lyd/d;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->n(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;",
            "Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->f:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->g:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lud/a;->a:Lud/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lud/a;->S()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "foldUp"

    .line 14
    .line 15
    const-string v2, "getContext(...)"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->f:Ljava/util/List;

    .line 22
    .line 23
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->g:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget v1, Lcom/startshorts/androidplayer/R$string;->rewards_daily_list_fold:I

    .line 56
    .line 57
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_up3:I

    .line 58
    .line 59
    invoke-static {v0, v3, v2, v1, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    new-instance v3, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->f:Ljava/util/List;

    .line 68
    .line 69
    check-cast v4, Ljava/lang/Iterable;

    .line 70
    .line 71
    const/16 v5, 0xa

    .line 72
    .line 73
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/util/Collection;

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->g:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->m()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleWatchAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 110
    .line 111
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget v1, Lcom/startshorts/androidplayer/R$string;->daily_watch_drama_task_more:I

    .line 115
    .line 116
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_arrow_down3:I

    .line 117
    .line 118
    invoke-static {v0, v3, v2, v1, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {p1}, Lud/a;->S()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    xor-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lud/a;->E0(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->g:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_1

    .line 137
    .line 138
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 139
    .line 140
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Ljava/util/List;

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-static {p1, v0, v3, v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    return-void
.end method
