.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/b;
.super Ljava/lang/Object;
.source "CDNFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b:J

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c:I

    .line 17
    .line 18
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d:I

    .line 19
    .line 20
    return-void
.end method

.method private final b(Ljava/lang/Integer;)Lcom/ss/ttvideoengine/Resolution;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1e0

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x2d0

    .line 23
    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    sget-object p1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/16 v0, 0x438

    .line 37
    .line 38
    if-ne p1, v0, :cond_5

    .line 39
    .line 40
    sget-object p1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 44
    :goto_3
    return-object p1
.end method

.method private final c(II)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "PLAY"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "SWITCH"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string p1, "SEEK"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string p1, "FIRST_FRAME"

    .line 19
    .line 20
    :goto_0
    return-object p1
.end method

.method private final e()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/startshorts/androidplayer/startup/NetworkInitializer;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v2

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->j()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->A()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_3
    if-eqz v2, :cond_a

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const v1, -0x3fb56f5e

    .line 53
    .line 54
    .line 55
    if-eq v0, v1, :cond_8

    .line 56
    .line 57
    const v1, -0x3e01e1e1

    .line 58
    .line 59
    .line 60
    if-eq v0, v1, :cond_6

    .line 61
    .line 62
    const v1, 0x37af15

    .line 63
    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const-string/jumbo v0, "wifi"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move-object v2, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const-string v0, "no_net"

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    const-string v2, "no_network"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_8
    const-string v0, "mobile"

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_9
    const-string v2, "cellular"

    .line 102
    .line 103
    :cond_a
    :goto_1
    return-object v2
.end method

.method private final h()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b:J

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c:I

    .line 7
    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 18
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
    sget-object v3, Lcom/startshorts/androidplayer/manager/immersion/feature/b$a;->$EnumSwitchMapping$0:[I

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
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, -0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_11

    .line 30
    .line 31
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 46
    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v1, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->q(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_11

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 71
    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v1, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->j(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_11

    .line 80
    .line 81
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    const-string/jumbo v3, "switch_resolution_from"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    move-object v1, v6

    .line 96
    :goto_0
    instance-of v3, v1, Ljava/lang/Integer;

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v1, v6

    .line 104
    :goto_1
    if-eqz v1, :cond_6

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    :cond_6
    const/4 v1, 0x2

    .line 111
    if-ne v5, v1, :cond_30

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v1, :cond_7

    .line 118
    .line 119
    return-void

    .line 120
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    const-string v4, "player_error_resolution_value"

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move-object v3, v6

    .line 134
    :goto_2
    instance-of v4, v3, Ljava/lang/Integer;

    .line 135
    .line 136
    if-eqz v4, :cond_9

    .line 137
    .line 138
    move-object v6, v3

    .line 139
    check-cast v6, Ljava/lang/Integer;

    .line 140
    .line 141
    :cond_9
    invoke-direct {v0, v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b(Ljava/lang/Integer;)Lcom/ss/ttvideoengine/Resolution;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 148
    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v2, v1, v3, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->o(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_11

    .line 157
    .line 158
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_30

    .line 163
    .line 164
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 165
    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v3, v1, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_11

    .line 174
    .line 175
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->h()V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    const-string v7, "err_code"

    .line 185
    .line 186
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    goto :goto_3

    .line 191
    :cond_b
    move-object v1, v6

    .line 192
    :goto_3
    instance-of v7, v1, Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v7, :cond_c

    .line 195
    .line 196
    check-cast v1, Ljava/lang/String;

    .line 197
    .line 198
    move-object v11, v1

    .line 199
    goto :goto_4

    .line 200
    :cond_c
    move-object v11, v6

    .line 201
    :goto_4
    if-nez v11, :cond_d

    .line 202
    .line 203
    return-void

    .line 204
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    if-nez v8, :cond_e

    .line 209
    .line 210
    return-void

    .line 211
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_f

    .line 216
    .line 217
    return-void

    .line 218
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const-string v9, "err_msg"

    .line 223
    .line 224
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    instance-of v9, v7, Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v9, :cond_10

    .line 231
    .line 232
    move-object v6, v7

    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    :cond_10
    move-object v12, v6

    .line 236
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    if-nez v2, :cond_13

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_12

    .line 247
    .line 248
    sget-object v1, Lpf/k;->a:Lpf/k;

    .line 249
    .line 250
    invoke-virtual {v1, v8}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-eqz v1, :cond_11

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    :goto_5
    move v10, v1

    .line 261
    goto :goto_6

    .line 262
    :cond_11
    move v10, v5

    .line 263
    goto :goto_6

    .line 264
    :cond_12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    goto :goto_5

    .line 269
    :cond_13
    invoke-static {v2}, Ljk/p;->a(Lcom/ss/ttvideoengine/Resolution;)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    goto :goto_5

    .line 274
    :goto_6
    if-ne v10, v5, :cond_14

    .line 275
    .line 276
    const-string v1, ""

    .line 277
    .line 278
    :goto_7
    move-object v9, v1

    .line 279
    goto :goto_8

    .line 280
    :cond_14
    invoke-virtual {v8, v10}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    goto :goto_7

    .line 285
    :goto_8
    if-eqz v9, :cond_16

    .line 286
    .line 287
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_15

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_15
    move v3, v4

    .line 295
    :cond_16
    :goto_9
    if-nez v3, :cond_30

    .line 296
    .line 297
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 298
    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    invoke-virtual/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->n(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_11

    .line 307
    .line 308
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-eqz v1, :cond_17

    .line 313
    .line 314
    const-string v3, "error_header_info"

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    goto :goto_a

    .line 321
    :cond_17
    move-object v1, v6

    .line 322
    :goto_a
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 323
    .line 324
    if-eqz v3, :cond_18

    .line 325
    .line 326
    move-object v6, v1

    .line 327
    check-cast v6, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 328
    .line 329
    :cond_18
    if-nez v6, :cond_19

    .line 330
    .line 331
    return-void

    .line 332
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-nez v1, :cond_1a

    .line 337
    .line 338
    return-void

    .line 339
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 344
    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v3, v6, v1, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->l(Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_11

    .line 353
    .line 354
    :pswitch_5
    iget-wide v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b:J

    .line 355
    .line 356
    const-wide/16 v5, -0x1

    .line 357
    .line 358
    cmp-long v1, v3, v5

    .line 359
    .line 360
    if-eqz v1, :cond_1c

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-nez v3, :cond_1b

    .line 367
    .line 368
    return-void

    .line 369
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    if-eqz v4, :cond_1c

    .line 374
    .line 375
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 378
    .line 379
    .line 380
    move-result-wide v1

    .line 381
    iget-wide v5, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b:J

    .line 382
    .line 383
    sub-long v5, v1, v5

    .line 384
    .line 385
    iget v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c:I

    .line 386
    .line 387
    iget v2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d:I

    .line 388
    .line 389
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c(II)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 394
    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->h()V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_11

    .line 406
    .line 407
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-nez v1, :cond_1d

    .line 412
    .line 413
    return-void

    .line 414
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    if-eqz v4, :cond_1e

    .line 419
    .line 420
    const-string v5, "action"

    .line 421
    .line 422
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    goto :goto_b

    .line 427
    :cond_1e
    move-object v4, v6

    .line 428
    :goto_b
    instance-of v5, v4, Ljava/lang/Integer;

    .line 429
    .line 430
    if-eqz v5, :cond_1f

    .line 431
    .line 432
    check-cast v4, Ljava/lang/Integer;

    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_1f
    move-object v4, v6

    .line 436
    :goto_c
    if-eqz v4, :cond_23

    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    if-nez v5, :cond_20

    .line 447
    .line 448
    return-void

    .line 449
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    const-string v7, "after_first_frame"

    .line 454
    .line 455
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    instance-of v7, v2, Ljava/lang/Integer;

    .line 460
    .line 461
    if-eqz v7, :cond_21

    .line 462
    .line 463
    move-object v6, v2

    .line 464
    check-cast v6, Ljava/lang/Integer;

    .line 465
    .line 466
    :cond_21
    if-eqz v6, :cond_22

    .line 467
    .line 468
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    :cond_22
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 473
    .line 474
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 475
    .line 476
    .line 477
    move-result-wide v6

    .line 478
    iput-wide v6, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->b:J

    .line 479
    .line 480
    iput v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c:I

    .line 481
    .line 482
    iput v4, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d:I

    .line 483
    .line 484
    invoke-direct {v0, v3, v4}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->c(II)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 489
    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v3, v1, v5, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_11

    .line 498
    .line 499
    :cond_23
    return-void

    .line 500
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    if-nez v7, :cond_24

    .line 505
    .line 506
    return-void

    .line 507
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    if-eqz v1, :cond_25

    .line 512
    .line 513
    const-string v3, "cost_time"

    .line 514
    .line 515
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    goto :goto_d

    .line 520
    :cond_25
    move-object v1, v6

    .line 521
    :goto_d
    instance-of v3, v1, Ljava/lang/Long;

    .line 522
    .line 523
    if-eqz v3, :cond_26

    .line 524
    .line 525
    move-object v6, v1

    .line 526
    check-cast v6, Ljava/lang/Long;

    .line 527
    .line 528
    :cond_26
    if-eqz v6, :cond_27

    .line 529
    .line 530
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 531
    .line 532
    .line 533
    move-result-wide v3

    .line 534
    :goto_e
    move-wide v9, v3

    .line 535
    goto :goto_f

    .line 536
    :cond_27
    const-wide/16 v3, 0x0

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :goto_f
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 540
    .line 541
    invoke-virtual {v11, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 542
    .line 543
    .line 544
    move-result-object v13

    .line 545
    const-string/jumbo v1, "time"

    .line 546
    .line 547
    .line 548
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v13, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string v1, "scene"

    .line 556
    .line 557
    const-string v3, "immersion"

    .line 558
    .line 559
    invoke-virtual {v13, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 563
    .line 564
    const/16 v16, 0x4

    .line 565
    .line 566
    const/16 v17, 0x0

    .line 567
    .line 568
    const-string v12, "initial_loading_time"

    .line 569
    .line 570
    const-wide/16 v14, 0x0

    .line 571
    .line 572
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    if-nez v8, :cond_28

    .line 580
    .line 581
    return-void

    .line 582
    :cond_28
    iget-object v6, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 583
    .line 584
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v11

    .line 588
    invoke-virtual/range {v6 .. v11}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto :goto_11

    .line 592
    :pswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    if-nez v13, :cond_29

    .line 597
    .line 598
    return-void

    .line 599
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    if-eqz v1, :cond_2a

    .line 604
    .line 605
    const-string v3, "real_watch_time"

    .line 606
    .line 607
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    goto :goto_10

    .line 612
    :cond_2a
    move-object v1, v6

    .line 613
    :goto_10
    instance-of v3, v1, Ljava/lang/Integer;

    .line 614
    .line 615
    if-eqz v3, :cond_2b

    .line 616
    .line 617
    move-object v6, v1

    .line 618
    check-cast v6, Ljava/lang/Integer;

    .line 619
    .line 620
    :cond_2b
    if-eqz v6, :cond_2c

    .line 621
    .line 622
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    :cond_2c
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 627
    .line 628
    .line 629
    move-result-object v14

    .line 630
    if-nez v14, :cond_2d

    .line 631
    .line 632
    return-void

    .line 633
    :cond_2d
    iget-object v12, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 634
    .line 635
    int-to-long v1, v4

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v17

    .line 640
    move-wide v15, v1

    .line 641
    invoke-virtual/range {v12 .. v17}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V

    .line 642
    .line 643
    .line 644
    goto :goto_11

    .line 645
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->h()V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    if-nez v1, :cond_2e

    .line 653
    .line 654
    return-void

    .line 655
    :cond_2e
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    if-nez v2, :cond_2f

    .line 660
    .line 661
    return-void

    .line 662
    :cond_2f
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 663
    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/b;->e()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    invoke-virtual {v3, v1, v2, v4}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :cond_30
    :goto_11
    return-void

    .line 672
    nop

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
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

.method public f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->e(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->CDN:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
