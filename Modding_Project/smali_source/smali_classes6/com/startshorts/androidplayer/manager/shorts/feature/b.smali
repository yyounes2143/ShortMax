.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/b;
.super Ljava/lang/Object;
.source "CDNFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/b$a;
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
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b:J

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c:I

    .line 17
    .line 18
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d:I

    .line 19
    .line 20
    return-void
.end method

.method private final b(II)Ljava/lang/String;
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

.method private final d()Ljava/lang/String;
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

.method private final e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1

    .line 1
    sget-object v0, Lpf/k;->a:Lpf/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpf/k;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains1080pUrl()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains720pUrl()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_720P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_480P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method

.method private final f()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b:J

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c:I

    .line 7
    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .locals 11
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->b()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/b$a;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_c

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->q(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_c

    .line 45
    .line 46
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->j(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_c

    .line 67
    .line 68
    :pswitch_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->f()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const-string v2, "err_code"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object v0, v1

    .line 85
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    move-object v5, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v5, v1

    .line 94
    :goto_1
    if-nez v5, :cond_4

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v0, "err_msg"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    instance-of v0, p1, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    move-object v1, p1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    :cond_6
    move-object v6, v1

    .line 122
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 123
    .line 124
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->m(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_c

    .line 136
    .line 137
    :pswitch_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const-string v2, "error_header_info"

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_2

    .line 150
    :cond_7
    move-object v0, v1

    .line 151
    :goto_2
    instance-of v2, v0, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 152
    .line 153
    if-eqz v2, :cond_8

    .line 154
    .line 155
    move-object v1, v0

    .line 156
    check-cast v1, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 157
    .line 158
    :cond_8
    if-nez v1, :cond_9

    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-nez p1, :cond_a

    .line 166
    .line 167
    return-void

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 169
    .line 170
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->l(Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_c

    .line 182
    .line 183
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    if-nez v5, :cond_b

    .line 188
    .line 189
    return-void

    .line 190
    :cond_b
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b:J

    .line 191
    .line 192
    const-wide/16 v2, -0x1

    .line 193
    .line 194
    cmp-long p1, v0, v2

    .line 195
    .line 196
    if-eqz p1, :cond_c

    .line 197
    .line 198
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b:J

    .line 205
    .line 206
    sub-long v7, v0, v2

    .line 207
    .line 208
    iget p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c:I

    .line 209
    .line 210
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d:I

    .line 211
    .line 212
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 217
    .line 218
    invoke-direct {p0, v5}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_c
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->f()V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-nez v0, :cond_d

    .line 239
    .line 240
    return-void

    .line 241
    :cond_d
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_e

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandVideoAd()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_e

    .line 252
    .line 253
    return-void

    .line 254
    :cond_e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_f

    .line 259
    .line 260
    const-string v3, "action"

    .line 261
    .line 262
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    goto :goto_3

    .line 267
    :cond_f
    move-object v2, v1

    .line 268
    :goto_3
    instance-of v3, v2, Ljava/lang/Integer;

    .line 269
    .line 270
    if-eqz v3, :cond_10

    .line 271
    .line 272
    check-cast v2, Ljava/lang/Integer;

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_10
    move-object v2, v1

    .line 276
    :goto_4
    if-eqz v2, :cond_13

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    const-string v3, "after_first_frame"

    .line 287
    .line 288
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    instance-of v3, p1, Ljava/lang/Integer;

    .line 293
    .line 294
    if-eqz v3, :cond_11

    .line 295
    .line 296
    move-object v1, p1

    .line 297
    check-cast v1, Ljava/lang/Integer;

    .line 298
    .line 299
    :cond_11
    if-eqz v1, :cond_12

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    goto :goto_5

    .line 306
    :cond_12
    const/4 p1, 0x1

    .line 307
    :goto_5
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 310
    .line 311
    .line 312
    move-result-wide v3

    .line 313
    iput-wide v3, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b:J

    .line 314
    .line 315
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c:I

    .line 316
    .line 317
    iput v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d:I

    .line 318
    .line 319
    invoke-direct {p0, p1, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->b(II)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 324
    .line 325
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_c

    .line 337
    .line 338
    :cond_13
    return-void

    .line 339
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    if-nez v5, :cond_14

    .line 344
    .line 345
    return-void

    .line 346
    :cond_14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    if-eqz p1, :cond_15

    .line 351
    .line 352
    const-string v0, "cost_time"

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    goto :goto_6

    .line 359
    :cond_15
    move-object p1, v1

    .line 360
    :goto_6
    instance-of v0, p1, Ljava/lang/Long;

    .line 361
    .line 362
    if-eqz v0, :cond_16

    .line 363
    .line 364
    move-object v1, p1

    .line 365
    check-cast v1, Ljava/lang/Long;

    .line 366
    .line 367
    :cond_16
    if-eqz v1, :cond_17

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 370
    .line 371
    .line 372
    move-result-wide v0

    .line 373
    :goto_7
    move-wide v7, v0

    .line 374
    goto :goto_8

    .line 375
    :cond_17
    const-wide/16 v0, 0x0

    .line 376
    .line 377
    goto :goto_7

    .line 378
    :goto_8
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_18

    .line 383
    .line 384
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandVideoAd()Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-nez p1, :cond_18

    .line 389
    .line 390
    return-void

    .line 391
    :cond_18
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 392
    .line 393
    invoke-direct {p0, v5}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_c

    .line 405
    :pswitch_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-eqz v0, :cond_19

    .line 410
    .line 411
    const-string v2, "last_episode"

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    goto :goto_9

    .line 418
    :cond_19
    move-object v0, v1

    .line 419
    :goto_9
    instance-of v2, v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 420
    .line 421
    if-eqz v2, :cond_1a

    .line 422
    .line 423
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 424
    .line 425
    move-object v3, v0

    .line 426
    goto :goto_a

    .line 427
    :cond_1a
    move-object v3, v1

    .line 428
    :goto_a
    if-nez v3, :cond_1b

    .line 429
    .line 430
    return-void

    .line 431
    :cond_1b
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    const-string v0, "real_watch_time"

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    instance-of v0, p1, Ljava/lang/Integer;

    .line 442
    .line 443
    if-eqz v0, :cond_1c

    .line 444
    .line 445
    move-object v1, p1

    .line 446
    check-cast v1, Ljava/lang/Integer;

    .line 447
    .line 448
    :cond_1c
    if-eqz v1, :cond_1d

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    goto :goto_b

    .line 455
    :cond_1d
    const/4 p1, 0x0

    .line 456
    :goto_b
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 457
    .line 458
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    int-to-long v5, p1

    .line 463
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_c

    .line 471
    :pswitch_8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->f()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    if-nez p1, :cond_1e

    .line 479
    .line 480
    return-void

    .line 481
    :cond_1e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_1f

    .line 486
    .line 487
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandVideoAd()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-nez v0, :cond_1f

    .line 492
    .line 493
    return-void

    .line 494
    :cond_1f
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->a:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;

    .line 495
    .line 496
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/b;->d()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-virtual {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    :goto_c
    return-void

    .line 508
    nop

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
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

.method public c(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$a;->a(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

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

.method public type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;->CDN:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
