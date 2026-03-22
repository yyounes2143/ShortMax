.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;
.super Ljava/lang/Object;
.source "RecentlyWatchedFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;I)V
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->j1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->q1()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 v1, 0x18

    .line 33
    .line 34
    if-lt p1, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    xor-int/2addr p1, v0

    .line 42
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 46
    .line 47
    const-string p2, "update_checkbox"

    .line 48
    .line 49
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of p2, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 69
    .line 70
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/4 p3, 0x0

    .line 75
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->i0(ZZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 80
    .line 81
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 82
    .line 83
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-string v1, "requireContext(...)"

    .line 88
    .line 89
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "recently"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 v0, 0x3

    .line 110
    :goto_1
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 124
    .line 125
    .line 126
    :cond_4
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayCode()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getCoverId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getUpack()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 167
    .line 168
    .line 169
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    invoke-virtual {p1, p3, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    return-void
.end method
