.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;
.super Ljava/lang/Object;
.source "DiscoverRankingViewPagerAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->K(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "d"

    .line 8
    .line 9
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getCategoryTabSelectedPos()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-int/2addr p1, p2

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p3, 0x1

    .line 35
    if-gt p1, p3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p3, 0x0

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleRankingPageBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    instance-of p3, p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-object p1, v0

    .line 69
    :goto_1
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-object p1, v0

    .line 83
    :goto_2
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;

    .line 84
    .line 85
    invoke-static {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    move-object v0, p2

    .line 100
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 101
    .line 102
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p1, p2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string p1, "scene"

    .line 117
    .line 118
    const-string p2, "discover"

    .line 119
    .line 120
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v7, 0x0

    .line 127
    const-string v2, "ranking_list_tag_click"

    .line 128
    .line 129
    const-wide/16 v4, 0x0

    .line 130
    .line 131
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
