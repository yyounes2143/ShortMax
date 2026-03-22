.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;
.super Ljava/lang/Object;
.source "ImmersionEpisodeListFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->b:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;I)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v1

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string v2, "EpisodeListDialog"

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V4(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v2, v0

    .line 37
    :goto_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVirtual()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 49
    .line 50
    sget p3, Lcom/startshorts/androidplayer/R$string;->episode_list_dialog_fragment_follow_reminder:I

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void

    .line 64
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->getPlaying()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const-string v0, "short_menu"

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    instance-of p3, p1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 85
    .line 86
    if-eqz p3, :cond_5

    .line 87
    .line 88
    move-object v1, p1

    .line 89
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 90
    .line 91
    :cond_5
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance p3, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;

    .line 101
    .line 102
    invoke-direct {p3, p2, v0}, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3}, Lau/c;->l(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    return-void

    .line 109
    :cond_8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_a

    .line 114
    .line 115
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->J0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/4 v2, 0x1

    .line 122
    if-eq p1, v2, :cond_9

    .line 123
    .line 124
    if-nez p3, :cond_9

    .line 125
    .line 126
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->I0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->J0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    sub-int/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-direct {p3, v0, p2, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$b;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/a;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->b:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;

    .line 161
    .line 162
    sub-int/2addr p3, v2

    .line 163
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 168
    .line 169
    if-eqz p1, :cond_a

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_a

    .line 176
    .line 177
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance p2, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;

    .line 182
    .line 183
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_a
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 191
    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    instance-of p3, p1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 197
    .line 198
    if-eqz p3, :cond_b

    .line 199
    .line 200
    move-object v1, p1

    .line 201
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 202
    .line 203
    :cond_b
    if-eqz v1, :cond_c

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 206
    .line 207
    .line 208
    :cond_c
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance p3, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;

    .line 213
    .line 214
    invoke-direct {p3, p2, v0}, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p3}, Lau/c;->l(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method
