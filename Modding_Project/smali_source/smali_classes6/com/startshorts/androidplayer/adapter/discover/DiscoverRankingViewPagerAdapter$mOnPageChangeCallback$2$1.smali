.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DiscoverRankingViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;-><init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPageSelected -> position("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setCategoryTabSelectedPos(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object p1, v1

    .line 71
    :goto_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object p1, v1

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v1, v0

    .line 112
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 113
    .line 114
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 115
    .line 116
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string p1, "scene"

    .line 129
    .line 130
    const-string v0, "discover"

    .line 131
    .line 132
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    const/4 v7, 0x4

    .line 138
    const/4 v8, 0x0

    .line 139
    const-string v3, "ranking_list_tag_show"

    .line 140
    .line 141
    const-wide/16 v5, 0x0

    .line 142
    .line 143
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
