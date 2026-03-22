.class final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
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


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->k(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
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
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->g(ILjava/lang/Object;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->getPayloads()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p2, p1

    .line 18
    :goto_0
    instance-of p3, p2, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    move-object p1, p2

    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleDailyWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 33
    .line 34
    new-instance p3, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f$a;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f;->h:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 37
    .line 38
    invoke-direct {p3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$f$a;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1, p3}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->H(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
