.class final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RewardsModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckInTaskViewHolder"
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
        "SMAP\nRewardsModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1506:1\n360#2,7:1507\n360#2,7:1516\n256#3,2:1514\n1#4:1523\n*S KotlinDebug\n*F\n+ 1 RewardsModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder\n*L\n442#1:1507,7\n507#1:1516,7\n498#1:1514,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 12
    .line 13
    return-void
.end method

.method private final C(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, -0x1

    .line 40
    :goto_1
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getBonus()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :cond_2
    return v2
.end method

.method private final D()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e0()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->f:Landroidx/databinding/ViewStubProxy;

    .line 14
    .line 15
    const-string v1, "checkInButtonViewstub"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->a0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/startshorts/androidplayer/R$id;->check_in_tv:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Z(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 40
    .line 41
    .line 42
    sget v2, Lcom/startshorts/androidplayer/R$id;->check_in_ad_double_rewards_iv:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->X(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    sget v2, Lcom/startshorts/androidplayer/R$id;->check_in_earn_tv:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 60
    .line 61
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->b0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->J(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroid/widget/ImageView;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_check_in_tv_new:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_rewards_fragment_double_rewards:I

    .line 88
    .line 89
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method private final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->w0()Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->n:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 42
    .line 43
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->n:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 61
    .line 62
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 70
    .line 71
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->n:Landroid/widget/ImageView;

    .line 79
    .line 80
    new-instance v1, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$a;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 83
    .line 84
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$a;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private final G()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->s:Landroid/view/View;

    .line 6
    .line 7
    const-string/jumbo v0, "toolbarView"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v6, 0xd

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v1 .. v7}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final H(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    :cond_1
    if-eqz v1, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->J(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 p2, 0x8

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void
.end method

.method private static final J(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "CheckInAndYourBonusViewHolder -> observeForever"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final K(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "CheckInAndYourBonusViewHolder -> removeObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final L(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, -0x1

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v5

    .line 58
    :goto_1
    if-ne v3, v5, :cond_3

    .line 59
    .line 60
    :cond_2
    move v0, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 76
    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->D0(Z)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->E()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 102
    .line 103
    invoke-direct {p0, v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget v5, Lcom/startshorts/androidplayer/R$string;->rewards_activity_check_in:I

    .line 119
    .line 120
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    instance-of v2, v1, Landroid/view/View;

    .line 132
    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    check-cast v1, Landroid/view/View;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    const/4 v1, 0x0

    .line 139
    :goto_3
    if-eqz v1, :cond_5

    .line 140
    .line 141
    new-instance v2, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;

    .line 142
    .line 143
    invoke-direct {v2, v0, p1, v3, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$c;-><init>(ZLjava/util/List;ILcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    return v0
.end method

.method private final M(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->O(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 17
    .line 18
    const-string v3, "checkInRvViewstub"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljk/e0;->e(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    :goto_0
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 38
    .line 39
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x7

    .line 46
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 62
    .line 63
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    new-instance v5, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$showCheckInRV$1$1;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$showCheckInRV$1$1;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v4, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;

    .line 76
    .line 77
    invoke-direct {v4}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->Y(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->K(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object v2, v1

    .line 92
    :goto_1
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->d0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->K(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-static {v0, p1, v2, v3, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->m0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->E()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->J(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_check_in_ad_double_rewards_new:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_b

    .line 29
    .line 30
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v4, "format(...)"

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    const-string v6, "getString(...)"

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, v2, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sget v8, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now:I

    .line 63
    .line 64
    invoke-static {v3, v8}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    sget v7, Lcom/startshorts/androidplayer/R$string;->rewards_check_in_dialog_earn_up_progress:I

    .line 93
    .line 94
    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_8

    .line 106
    .line 107
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumBonus()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-ge v3, v8, :cond_6

    .line 162
    .line 163
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    sget v8, Lcom/startshorts/androidplayer/R$string;->rewards_check_in_dialog_earn_up_progress:I

    .line 185
    .line 186
    invoke-static {v3, v8}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-eqz v6, :cond_4

    .line 198
    .line 199
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumBonus()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getInterval()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-lez v3, :cond_5

    .line 248
    .line 249
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->P(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_5

    .line 254
    .line 255
    invoke-direct {p0, v7, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 256
    .line 257
    .line 258
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getInterval()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    new-instance v5, Lcom/startshorts/androidplayer/adapter/rewards/e;

    .line 265
    .line 266
    invoke-direct {v5, p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/e;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 267
    .line 268
    .line 269
    new-instance v6, Lcom/startshorts/androidplayer/adapter/rewards/f;

    .line 270
    .line 271
    invoke-direct {v6, p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/f;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v4, v5, v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlinx/coroutines/r;)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_5
    invoke-direct {p0, v2, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    sget v4, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now:I

    .line 298
    .line 299
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_6
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->N(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-eqz v3, :cond_7

    .line 312
    .line 313
    const/16 v4, 0x8

    .line 314
    .line 315
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    :cond_7
    invoke-direct {p0, v7, v7}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    sget v4, Lcom/startshorts/androidplayer/R$string;->rewards_activity_check_in_btn_comeback_tomorrow:I

    .line 334
    .line 335
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->y()V

    .line 343
    .line 344
    .line 345
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskDescription()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    :cond_9
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->e0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    instance-of v2, v0, Landroid/view/View;

    .line 366
    .line 367
    if-eqz v2, :cond_a

    .line 368
    .line 369
    check-cast v0, Landroid/view/View;

    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_a
    const/4 v0, 0x0

    .line 373
    :goto_1
    if-eqz v0, :cond_b

    .line 374
    .line 375
    new-instance v2, Lcom/startshorts/androidplayer/adapter/rewards/g;

    .line 376
    .line 377
    invoke-direct {v2, p1, v1}, Lcom/startshorts/androidplayer/adapter/rewards/g;-><init>(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    :cond_b
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/view/View;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->k(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    new-instance v2, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p0, "ad_active"

    .line 18
    .line 19
    const-string p1, "check_in"

    .line 20
    .line 21
    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo p0, "type"

    .line 25
    .line 26
    .line 27
    const-string p1, "1"

    .line 28
    .line 29
    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string/jumbo v1, "watch_ad_click"

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;I)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$string;->rewards_check_in_dialog_check_more_countdown:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getString(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "format(...)"

    .line 44
    .line 45
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget v0, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now:I

    .line 61
    .line 62
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 p0, 0x20

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method

.method private static final Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->H(ZZ)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now:I

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->J(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->P(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->K(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->O(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->Q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->C(Ljava/util/List;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->L(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->M(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->N(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 6
    .line 7
    const-string v1, "foldUpModule"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget v2, Lcom/startshorts/androidplayer/R$id;->check_in_comeback_tomorrow_desc_bonus:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 45
    .line 46
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "getString(...)"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 56
    .line 57
    iget v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->i:I

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "format(...)"

    .line 76
    .line 77
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    .line 89
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 97
    .line 98
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 106
    .line 107
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->g:Landroid/view/View;

    .line 115
    .line 116
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->O(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->M(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->e:Landroid/view/View;

    .line 142
    .line 143
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 151
    .line 152
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 160
    .line 161
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lud/a;->a:Lud/a;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lud/a;->D0(Z)V

    .line 167
    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public I(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 17
    .line 18
    const-string v0, "checkInStateViewGroup"

    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 24
    .line 25
    const-string v1, "1"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->n(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->G()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->F()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->D()V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->getState()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object p2, p1

    .line 51
    :goto_0
    instance-of p3, p2, Landroidx/lifecycle/LiveData;

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    move-object p1, p2

    .line 56
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    :cond_1
    if-nez p1, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->s0()Landroidx/lifecycle/LifecycleOwner;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance p3, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 70
    .line 71
    invoke-direct {p3, v0, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;

    .line 75
    .line 76
    invoke-direct {v0, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V

    .line 85
    .line 86
    .line 87
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 88
    .line 89
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/c;

    .line 90
    .line 91
    invoke-direct {v0, p3, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/c;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->k:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->l:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 97
    .line 98
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/d;

    .line 99
    .line 100
    invoke-direct {v0, p3, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/d;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Landroidx/lifecycle/LiveData;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$setItem$observer$1;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->j:Lkotlin/jvm/functions/Function0;

    .line 104
    .line 105
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->I(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method
