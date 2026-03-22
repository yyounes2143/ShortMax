.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->r(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic d:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/recyclerview/widget/RecyclerView;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->d:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->b(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->S(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 13
    .line 14
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iput-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez p2, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 29
    .line 30
    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    if-eq p2, v0, :cond_2

    .line 34
    .line 35
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$showWatchAdBonusRV$1$1;->d:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 38
    .line 39
    new-instance v1, Lcom/startshorts/androidplayer/adapter/rewards/i;

    .line 40
    .line 41
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/i;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
