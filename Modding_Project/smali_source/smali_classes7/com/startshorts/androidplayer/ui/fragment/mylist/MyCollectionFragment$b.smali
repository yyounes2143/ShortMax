.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;
.super Ljava/lang/Object;
.source "MyCollectionFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/MyCollection;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/MyCollection;I)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    xor-int/2addr p1, v0

    .line 25
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 29
    .line 30
    const-string p2, "update_checkbox"

    .line 31
    .line 32
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->a:Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->d(I)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 46
    .line 47
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;

    .line 48
    .line 49
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    const-string v1, "requireContext(...)"

    .line 54
    .line 55
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ne v2, v0, :cond_1

    .line 68
    .line 69
    const-string v2, "coming_soon"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string v2, "collections"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x3

    .line 88
    :goto_1
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 105
    .line 106
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayCode()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCoverId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getUpack()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 145
    .line 146
    .line 147
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    invoke-virtual {p1, p3, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    return-void
.end method
