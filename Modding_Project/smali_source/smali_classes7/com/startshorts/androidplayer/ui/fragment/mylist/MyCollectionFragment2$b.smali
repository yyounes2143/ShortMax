.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;
.super Ljava/lang/Object;
.source "MyCollectionFragment2.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->i0()V
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
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/mylist/MyCollection;I)V

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->g1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Z

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->m1()I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->b:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 46
    .line 47
    const-string p2, "update_checkbox"

    .line 48
    .line 49
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of p2, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 69
    .line 70
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->f1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/4 p3, 0x0

    .line 75
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->p0(ZZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->a:Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->d(I)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 89
    .line 90
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    const-string v1, "requireContext(...)"

    .line 97
    .line 98
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isReservation()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v2, v0, :cond_3

    .line 111
    .line 112
    const-string v2, "coming_soon"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string v2, "collections"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v0, 0x3

    .line 131
    :goto_2
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 145
    .line 146
    .line 147
    :cond_5
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 148
    .line 149
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayCode()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCoverId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getUpack()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 188
    .line 189
    .line 190
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    invoke-virtual {p1, p3, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    :goto_3
    return-void
.end method
