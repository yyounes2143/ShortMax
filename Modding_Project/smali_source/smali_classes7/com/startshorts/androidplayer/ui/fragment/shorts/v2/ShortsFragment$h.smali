.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->H2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "onEpisodeEnablePlay -> isAd("

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ") shortPlayId("

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ") startPosition("

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x29

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 58
    .line 59
    sget-object v2, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PLAY_EPISODE_START:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 60
    .line 61
    new-instance v3, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lms/i;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v4}, Lms/i;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "shorts_job_manager"

    .line 77
    .line 78
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 87
    .line 88
    invoke-direct {v0, v2, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isProgrammaticAd()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 107
    .line 108
    new-instance v3, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p1, "ad_placement"

    .line 114
    .line 115
    const-string p2, "shorts_native"

    .line 116
    .line 117
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p1, "type"

    .line 121
    .line 122
    const-string p2, "3"

    .line 123
    .line 124
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x4

    .line 128
    const/4 v7, 0x0

    .line 129
    const-string v2, "ad_placement_show"

    .line 130
    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->j1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandPicAd()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_1

    .line 151
    .line 152
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 153
    .line 154
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->D1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 160
    .line 161
    .line 162
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 169
    .line 170
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->D1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->Q0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 192
    .line 193
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->H0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    if-eqz p2, :cond_3

    .line 198
    .line 199
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/shorts/a$c;

    .line 200
    .line 201
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$c;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->a0(Lcom/startshorts/androidplayer/viewmodel/shorts/a;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 210
    .line 211
    .line 212
    :goto_1
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 2

    .line 1
    const-string p1, "newEpisode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lud/b;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->l1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;ZZ)V
    .locals 0

    .line 1
    const-string p3, "episode"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "reason"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;->REASON_INVALID_URL:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->y1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 26
    .line 27
    sget p2, Lcom/startshorts/androidplayer/R$string;->common_play_failed:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->p1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;->REASON_URL_EXPIRED:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;

    .line 40
    .line 41
    if-ne p2, p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->s0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public d(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 5

    .line 1
    const-string v0, "lastEpisode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->C0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->e()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PLAY_EPISODE_END:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 23
    .line 24
    new-instance v3, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "last_episode"

    .line 30
    .line 31
    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v0, "real_watch_time"

    .line 39
    .line 40
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    new-instance p2, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 46
    .line 47
    invoke-direct {p2, v2, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 54
    .line 55
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->t0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
