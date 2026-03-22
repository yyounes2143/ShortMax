.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;
.super Ljava/lang/Object;
.source "MyListMixFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->G1()V
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
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;I)V
    .locals 3

    .line 1
    const-string p3, "v"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 14
    .line 15
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string v0, "requireContext(...)"

    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "mylist_recommended"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x3

    .line 43
    :goto_0
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getCoverId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getUpack()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 100
    .line 101
    .line 102
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
