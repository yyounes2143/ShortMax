.class public final Lye/b;
.super Ljava/lang/Object;
.source "VideoPreviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lye/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lye/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lye/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lye/b;->d:Lye/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lye/b;->a:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lye/a;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lye/a;-><init>(Lye/b;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lye/b$d;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Lye/b$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static synthetic a(Lye/b;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lye/b;->e(Lye/b;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lye/b;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lye/b;->h(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lye/b;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$g;

    .line 2
    .line 3
    const-string v1, "VideoPreviewManager"

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object p0, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v2

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, ""

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    move-object p1, v0

    .line 59
    :cond_2
    const-string v2, "reel_id"

    .line 60
    .line 61
    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "scene"

    .line 65
    .line 66
    const-string v2, "discover"

    .line 67
    .line 68
    invoke-virtual {v5, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getDiscoverModule()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v2, "module_name"

    .line 80
    .line 81
    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getDiscoverModule()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v2, "module_id"

    .line 93
    .line 94
    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getDiscoverModule()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    add-int/lit8 p1, p1, 0x1

    .line 106
    .line 107
    const-string v2, "position_id"

    .line 108
    .line 109
    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getDiscoverModule()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-nez p0, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move-object v0, p0

    .line 130
    :cond_4
    :goto_1
    const-string p0, "audiences_recommend_id"

    .line 131
    .line 132
    invoke-virtual {v5, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    const/4 v8, 0x4

    .line 138
    const/4 v9, 0x0

    .line 139
    const-string v4, "reel_video_preview_play"

    .line 140
    .line 141
    const-wide/16 v6, 0x0

    .line 142
    .line 143
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 147
    .line 148
    const-string p1, "onPrepared"

    .line 149
    .line 150
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 160
    .line 161
    const-string p1, "onTimeInfo"

    .line 162
    .line 163
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 169
    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 173
    .line 174
    const-string v0, "onRenderStart"

    .line 175
    .line 176
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p0, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 180
    .line 181
    if-eqz p0, :cond_e

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    if-eqz p0, :cond_e

    .line 188
    .line 189
    const/4 p1, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setSoundViewVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_2

    .line 194
    .line 195
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$f;

    .line 196
    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 200
    .line 201
    const-string p1, "onPlaying"

    .line 202
    .line 203
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$e;

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 212
    .line 213
    const-string p1, "onPaused"

    .line 214
    .line 215
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 224
    .line 225
    const-string p1, "OnBufferStart"

    .line 226
    .line 227
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$a;

    .line 232
    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 236
    .line 237
    const-string p1, "OnBufferEnd"

    .line 238
    .line 239
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 248
    .line 249
    const-string v0, "OnCompleted"

    .line 250
    .line 251
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 255
    .line 256
    if-eqz p1, :cond_e

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_e

    .line 263
    .line 264
    invoke-direct {p0}, Lye/b;->k()V

    .line 265
    .line 266
    .line 267
    iget-object p0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 268
    .line 269
    if-eqz p0, :cond_e

    .line 270
    .line 271
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_d
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 278
    .line 279
    if-eqz p1, :cond_e

    .line 280
    .line 281
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 282
    .line 283
    const-string v0, "OnError"

    .line 284
    .line 285
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p0}, Lye/b;->k()V

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 292
    .line 293
    if-eqz p0, :cond_e

    .line 294
    .line 295
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 296
    .line 297
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 298
    .line 299
    .line 300
    :cond_e
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 301
    .line 302
    return-object p0
.end method

.method private static final h(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 8
    .line 9
    invoke-virtual {v2}, Lfk/u;->b()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Llf/s;

    .line 14
    .line 15
    invoke-direct {v3}, Llf/s;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "preview"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Llf/s;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMTextureView()Landroid/view/TextureView;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Llf/s;->u(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lpf/l;->a:Lpf/l;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lpf/l;->b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Llf/s;->w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v1}, Llf/s;->v(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v4}, Llf/s;->p(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Llf/s;->r(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getDisplayMode()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v3, v4}, Llf/s;->n(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getNeedDecrypt()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    new-instance p1, Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 74
    .line 75
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;-><init>()V

    .line 76
    .line 77
    .line 78
    new-array v0, v0, [Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 79
    .line 80
    aput-object p1, v0, v1

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v3, p1}, Llf/s;->o(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 92
    .line 93
    invoke-direct {p1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;-><init>(Landroid/content/Context;Llf/s;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method private final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMControllerListener(Lz2/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v1, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final d()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "pause,url: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ",view: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "VideoPreviewManager"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final g(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "VideoPreviewManager"

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lye/b;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string v1, "play : videoPreviewInfo null -> release"

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v2, v3

    .line 41
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, ",view: "

    .line 46
    .line 47
    if-nez v1, :cond_7

    .line 48
    .line 49
    invoke-direct {p0}, Lye/b;->k()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setSoundViewVisibility(I)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->k(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lye/b$b;

    .line 68
    .line 69
    invoke-direct {v5, p0}, Lye/b$b;-><init>(Lye/b;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setListener(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMBgUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMHasBgLoaded()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMControllerListener(Lz2/a;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Lye/b;->h(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 106
    .line 107
    .line 108
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 109
    .line 110
    const-string v5, "play: doPlay by mHasBgLoaded true"

    .line 111
    .line 112
    invoke-virtual {v3, v0, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    new-instance v3, Lye/b$c;

    .line 117
    .line 118
    invoke-direct {v3, p1, v1, p0}, Lye/b$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;Lye/b;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMControllerListener(Lz2/a;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    sget v6, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_horizontal_image_video_preview_bg:I

    .line 140
    .line 141
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-static {p0, p1}, Lye/b;->h(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v4, "play: play new video,url: "

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, ",mHasBgLoaded:"

    .line 184
    .line 185
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMHasBgLoaded()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "play:no play -> videoPreviewInfo is same,,url: "

    .line 215
    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v4, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 220
    .line 221
    if-eqz v4, :cond_8

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    goto :goto_3

    .line 228
    :cond_8
    move-object v4, v3

    .line 229
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 236
    .line 237
    if-eqz v2, :cond_9

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_4
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "release,url: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v3

    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",view: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v2, v3

    .line 42
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "VideoPreviewManager"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lye/b;->k()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iput-object v3, p0, Lye/b;->a:Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    return-void
.end method

.method public final j(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "videoPreviewInfo"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lye/b;->g(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lye/b;->c:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$g;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "resume,url: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ",view: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lye/b;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "VideoPreviewManager"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
