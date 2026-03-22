.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->N2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initSeekbar$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2950:1\n1863#2,2:2951\n*S KotlinDebug\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initSeekbar$1\n*L\n1667#1:2951,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "onClickTracking -> from("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x29

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    if-eqz p3, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Iterable;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    new-instance v8, Lcom/startshorts/androidplayer/bean/eventbus/MainTabClickEvent;

    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "obtain(...)"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v8, v0}, Lcom/startshorts/androidplayer/bean/eventbus/MainTabClickEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v8}, Lau/c;->l(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-nez v3, :cond_1

    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 130
    .line 131
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string p2, "scene"

    .line 136
    .line 137
    const-string p3, "shorts"

    .line 138
    .line 139
    invoke-virtual {v6, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "from"

    .line 143
    .line 144
    const-string v1, "below"

    .line 145
    .line 146
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const-string v11, "upack"

    .line 158
    .line 159
    if-nez v2, :cond_2

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v6, v11, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    const/4 v9, 0x4

    .line 171
    const/4 v10, 0x0

    .line 172
    const-string v5, "short_menu_click"

    .line 173
    .line 174
    const-wide/16 v7, 0x0

    .line 175
    .line 176
    move-object v4, p1

    .line 177
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-nez p2, :cond_3

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {v6, v11, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    const/4 v9, 0x4

    .line 208
    const/4 v10, 0x0

    .line 209
    const-string v5, "shorts_feed_enter_immersion"

    .line 210
    .line 211
    const-wide/16 v7, 0x0

    .line 212
    .line 213
    move-object v4, p1

    .line 214
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 218
    .line 219
    const/4 v5, 0x2

    .line 220
    const/4 v6, 0x0

    .line 221
    const/4 v1, 0x2

    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v4, 0x1

    .line 224
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->U3(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 1
    const-string p2, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getMax()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p2, p3, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V
    .locals 2

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const-string v1, "onLongPressTracking"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getMax()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;II)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->S(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V
    .locals 5

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const-string v1, "onStartTrackingTouch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->SEEKBAR_START_TOUCH:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 23
    .line 24
    const-string v4, "seekbar"

    .line 25
    .line 26
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v4, "episode"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->u1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getMax()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;II)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->S(I)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V
    .locals 5

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const-string v1, "onStopTrackingTouch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->SEEKBAR_STOP_TOUCH:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 23
    .line 24
    const-string v4, "seekbar"

    .line 25
    .line 26
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v4, "episode"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->t1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->g0(I)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->I0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, -0x1

    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->I0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    sub-int/2addr v0, p1

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/16 v2, 0x3e8

    .line 106
    .line 107
    if-lt v0, v2, :cond_1

    .line 108
    .line 109
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->m1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 123
    .line 124
    const-string v0, "auto resumePlay -> stop tracking touch"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 135
    .line 136
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
