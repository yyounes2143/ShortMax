.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DiscoverTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

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
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->s0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    check-cast v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->t0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/16 v0, 0x8

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->J()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->K()V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->f1()V

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;

    .line 135
    .line 136
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_2
    return-void
.end method
