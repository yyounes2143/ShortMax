.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DiscoverTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->w0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "is_show_tab_view"

    .line 14
    .line 15
    const-string v3, "tab"

    .line 16
    .line 17
    const-string v4, "from"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 31
    .line 32
    new-instance v8, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v8, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v8, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-le v0, v6, :cond_0

    .line 56
    .line 57
    move v5, v6

    .line 58
    :cond_0
    invoke-virtual {v8, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabFlagName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v7, "library_tab"

    .line 71
    .line 72
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 84
    .line 85
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 86
    .line 87
    new-instance v8, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v8, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v8, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-le v0, v6, :cond_2

    .line 111
    .line 112
    move v5, v6

    .line 113
    :cond_2
    invoke-virtual {v8, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isTabRanking()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    sget-object p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-le v1, v6, :cond_4

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    move v6, v5

    .line 138
    :goto_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    const-string v0, ""

    .line 155
    .line 156
    :cond_6
    invoke-virtual {p1, v6, v5, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;->b(ZILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    goto :goto_1

    .line 161
    :cond_7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 162
    .line 163
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 167
    .line 168
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->k:Ljava/util/List;

    .line 169
    .line 170
    new-instance v9, Landroid/os/Bundle;

    .line 171
    .line 172
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {v7}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v9, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v9, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-le v0, v6, :cond_8

    .line 194
    .line 195
    move v5, v6

    .line 196
    :cond_8
    invoke-virtual {v9, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    const-string v0, "position"

    .line 200
    .line 201
    invoke-virtual {v9, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v9}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    move-object p1, v1

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 215
    .line 216
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
