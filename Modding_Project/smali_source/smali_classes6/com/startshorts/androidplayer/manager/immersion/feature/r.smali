.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/r;
.super Ljava/lang/Object;
.source "SeekbarLoggerFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/r$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/r$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/manager/immersion/feature/r$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/r$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/r$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 19
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lcom/startshorts/androidplayer/manager/immersion/feature/r$b;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const-string v3, "ms"

    .line 23
    .line 24
    const-string v4, "SeekbarLoggerFeature"

    .line 25
    .line 26
    const-string v5, "seekbar"

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, -0x1

    .line 31
    if-eq v1, v6, :cond_8

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    if-eq v1, v9, :cond_0

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    iget v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 39
    .line 40
    if-ne v1, v8, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v1, v7

    .line 55
    :goto_0
    instance-of v5, v1, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    move-object v7, v1

    .line 60
    check-cast v7, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;

    .line 61
    .line 62
    :cond_3
    if-eqz v7, :cond_4

    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v1, v8

    .line 70
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 75
    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v9, "stopTouch -> "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v5, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    if-eq v1, v8, :cond_5

    .line 101
    .line 102
    if-nez v2, :cond_6

    .line 103
    .line 104
    :cond_5
    move v1, v8

    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_6
    iget v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    if-ge v1, v3, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    move v6, v4

    .line 114
    :goto_2
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    const-string v5, "scene"

    .line 121
    .line 122
    const-string v7, "immersion"

    .line 123
    .line 124
    invoke-virtual {v11, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v15, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 128
    .line 129
    iget v9, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 130
    .line 131
    int-to-long v9, v9

    .line 132
    const-wide/16 v16, 0x3e8

    .line 133
    .line 134
    div-long v9, v9, v16

    .line 135
    .line 136
    invoke-virtual {v15, v9, v10, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    const-string v10, "drag_start_time"

    .line 141
    .line 142
    invoke-virtual {v11, v10, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    const/4 v14, 0x4

    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const-string/jumbo v10, "video_drag_start"

    .line 151
    .line 152
    .line 153
    const-wide/16 v12, 0x0

    .line 154
    .line 155
    move-object v9, v3

    .line 156
    move-object v8, v15

    .line 157
    move-object/from16 v15, v18

    .line 158
    .line 159
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v11, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    int-to-long v9, v1

    .line 170
    div-long v9, v9, v16

    .line 171
    .line 172
    invoke-virtual {v8, v9, v10, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v4, "drag_end_time"

    .line 177
    .line 178
    invoke-virtual {v11, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 182
    .line 183
    sub-int/2addr v1, v2

    .line 184
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    int-to-long v1, v1

    .line 189
    div-long v1, v1, v16

    .line 190
    .line 191
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v2, "drag_duration"

    .line 196
    .line 197
    invoke-virtual {v11, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v1, "is_rewind"

    .line 201
    .line 202
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v11, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/4 v15, 0x0

    .line 210
    const-string/jumbo v10, "video_drag_end"

    .line 211
    .line 212
    .line 213
    move-object v9, v3

    .line 214
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const/4 v1, -0x1

    .line 218
    iput v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :goto_3
    iput v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 222
    .line 223
    return-void

    .line 224
    :cond_8
    move v1, v8

    .line 225
    iget v6, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 226
    .line 227
    if-ne v6, v1, :cond_c

    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    goto :goto_4

    .line 240
    :cond_9
    move-object v2, v7

    .line 241
    :goto_4
    instance-of v5, v2, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;

    .line 242
    .line 243
    if-eqz v5, :cond_a

    .line 244
    .line 245
    move-object v7, v2

    .line 246
    check-cast v7, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;

    .line 247
    .line 248
    :cond_a
    if-eqz v7, :cond_b

    .line 249
    .line 250
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    move v8, v1

    .line 256
    :goto_5
    iput v8, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 257
    .line 258
    :cond_c
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 259
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v5, "startTouch -> "

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget v5, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/r;->a:I

    .line 272
    .line 273
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_6
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->SEEKBAR_LOGGER:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
