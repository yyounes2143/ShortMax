.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/EventLoggerSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLoggerDataSource"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bytesInfo()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x2d

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-interface {v0, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string/jumbo v5, "vds"

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x2e

    .line 42
    .line 43
    invoke-interface {v0, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string/jumbo v5, "vps"

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x3f

    .line 58
    .line 59
    const-wide/16 v5, -0x1

    .line 60
    .line 61
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v7, "download_speed"

    .line 70
    .line 71
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const/16 v2, 0x48

    .line 75
    .line 76
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string/jumbo v7, "vlen"

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x49

    .line 91
    .line 92
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v7, "alen"

    .line 101
    .line 102
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x25a

    .line 106
    .line 107
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string/jumbo v7, "vDecLen"

    .line 116
    .line 117
    .line 118
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/16 v2, 0x25b

    .line 122
    .line 123
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v7, "aDecLen"

    .line 132
    .line 133
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const/16 v2, 0x25c

    .line 137
    .line 138
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string/jumbo v7, "vBaseLen"

    .line 147
    .line 148
    .line 149
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const/16 v2, 0x25d

    .line 153
    .line 154
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v7, "aBaseLen"

    .line 163
    .line 164
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const/16 v2, 0x25e

    .line 168
    .line 169
    invoke-interface {v0, v2, v5, v6}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v5, "avGap"

    .line 178
    .line 179
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const/16 v2, 0x91

    .line 183
    .line 184
    invoke-interface {v0, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string/jumbo v5, "single_vds"

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const/16 v2, 0x1dc

    .line 199
    .line 200
    invoke-interface {v0, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v2

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const-string v2, "accu_vds"

    .line 209
    .line 210
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    return-object v1
.end method

.method public forebackSwitchList()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;->getInfo(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v2, v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getLogValueFloat(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x52

    .line 19
    .line 20
    if-eq p1, v2, :cond_2

    .line 21
    .line 22
    const/16 v2, 0x53

    .line 23
    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/16 p1, 0x96

    .line 28
    .line 29
    invoke-interface {v0, p1, v1}, Lcom/ss/ttm/player/MediaPlayer;->getFloatOption(IF)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_2
    const/16 p1, 0x97

    .line 35
    .line 36
    invoke-interface {v0, p1, v1}, Lcom/ss/ttm/player/MediaPlayer;->getFloatOption(IF)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v1
.end method

.method public getLogValueInt(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/16 v2, 0x35

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    sparse-switch p1, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :sswitch_0
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x351

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1
    return v1

    .line 33
    :sswitch_1
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x54a

    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2
    return v1

    .line 45
    :sswitch_2
    sget p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sEnableEncryptBuryData:I

    .line 46
    .line 47
    return p1

    .line 48
    :sswitch_3
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    return v1

    .line 53
    :cond_3
    const/16 v0, 0x53b

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :sswitch_4
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    const/16 v0, 0x2f6

    .line 65
    .line 66
    invoke-interface {p1, v0, v4}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_4
    return v4

    .line 72
    :sswitch_5
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 73
    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const/16 v0, 0x2f2

    .line 77
    .line 78
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1

    .line 83
    :cond_5
    return v1

    .line 84
    :sswitch_6
    sget p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sGlobalMute:I

    .line 85
    .line 86
    return p1

    .line 87
    :sswitch_7
    sget p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sEnableGloablMuteFeature:I

    .line 88
    .line 89
    return p1

    .line 90
    :sswitch_8
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    const/16 v0, 0x1d5

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_6
    return v1

    .line 102
    :sswitch_9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {v0, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3702(Lcom/ss/ttvideoengine/TTVideoEngineImpl;I)I

    .line 107
    .line 108
    .line 109
    return p1

    .line 110
    :sswitch_a
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    const-wide/16 v0, -0x1

    .line 117
    .line 118
    invoke-interface {p1, v2, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getLongOption(IJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    long-to-int p1, v0

    .line 123
    return p1

    .line 124
    :cond_7
    return v1

    .line 125
    :sswitch_b
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 126
    .line 127
    if-nez p1, :cond_8

    .line 128
    .line 129
    return v1

    .line 130
    :cond_8
    const/16 v0, 0x18

    .line 131
    .line 132
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    return p1

    .line 137
    :sswitch_c
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->isplaybackUsedSR()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1

    .line 142
    :sswitch_d
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    :sswitch_e
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 148
    .line 149
    if-eqz p1, :cond_9

    .line 150
    .line 151
    const/16 v0, 0xb5

    .line 152
    .line 153
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1

    .line 158
    :cond_9
    return v1

    .line 159
    :sswitch_f
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_a

    .line 164
    .line 165
    return v1

    .line 166
    :cond_a
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1, v3}, Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;->getInfo(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    instance-of v0, p1, Ljava/lang/Integer;

    .line 175
    .line 176
    if-eqz v0, :cond_b

    .line 177
    .line 178
    check-cast p1, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    return p1

    .line 185
    :cond_b
    return v1

    .line 186
    :sswitch_10
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-nez p1, :cond_c

    .line 191
    .line 192
    return v1

    .line 193
    :cond_c
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWirelessConnected()Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    return p1

    .line 198
    :sswitch_11
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_d

    .line 203
    .line 204
    return v1

    .line 205
    :cond_d
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWiredConnected()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    return p1

    .line 210
    :sswitch_12
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mRadioModeEnable:I

    .line 211
    .line 212
    return p1

    .line 213
    :sswitch_13
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSurface:Landroid/view/Surface;

    .line 214
    .line 215
    if-nez p1, :cond_e

    .line 216
    .line 217
    return v3

    .line 218
    :cond_e
    return v4

    .line 219
    :sswitch_14
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getDnsCustomType()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    return p1

    .line 228
    :sswitch_15
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 229
    .line 230
    if-eqz p1, :cond_f

    .line 231
    .line 232
    const/16 v0, 0xba

    .line 233
    .line 234
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    return p1

    .line 239
    :cond_f
    return v1

    .line 240
    :sswitch_16
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 241
    .line 242
    if-nez p1, :cond_10

    .line 243
    .line 244
    return v1

    .line 245
    :cond_10
    const/16 v0, 0x283

    .line 246
    .line 247
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    return p1

    .line 252
    :sswitch_17
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 253
    .line 254
    if-eqz p1, :cond_11

    .line 255
    .line 256
    const/16 v0, 0x33a

    .line 257
    .line 258
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    return p1

    .line 263
    :cond_11
    return v1

    .line 264
    :sswitch_18
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 265
    .line 266
    if-eqz p1, :cond_12

    .line 267
    .line 268
    const/16 v0, 0x21c

    .line 269
    .line 270
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    return p1

    .line 275
    :cond_12
    return v1

    .line 276
    :sswitch_19
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 277
    .line 278
    if-eqz p1, :cond_13

    .line 279
    .line 280
    const/16 v0, 0x259

    .line 281
    .line 282
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    return p1

    .line 287
    :cond_13
    return v1

    .line 288
    :sswitch_1a
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-lez p1, :cond_14

    .line 293
    .line 294
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    return p1

    .line 299
    :cond_14
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 300
    .line 301
    if-eqz p1, :cond_15

    .line 302
    .line 303
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->getCurrentPosition()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    return p1

    .line 308
    :cond_15
    return v1

    .line 309
    :sswitch_1b
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eq p1, v1, :cond_16

    .line 314
    .line 315
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    return p1

    .line 320
    :cond_16
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 321
    .line 322
    if-eqz p1, :cond_17

    .line 323
    .line 324
    const/16 v2, 0x192

    .line 325
    .line 326
    invoke-interface {p1, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3502(Lcom/ss/ttvideoengine/TTVideoEngineImpl;I)I

    .line 331
    .line 332
    .line 333
    :cond_17
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    return p1

    .line 338
    :sswitch_1c
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-eq p1, v1, :cond_18

    .line 343
    .line 344
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    return p1

    .line 349
    :cond_18
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 350
    .line 351
    if-eqz p1, :cond_19

    .line 352
    .line 353
    const/16 v2, 0x193

    .line 354
    .line 355
    invoke-interface {p1, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3402(Lcom/ss/ttvideoengine/TTVideoEngineImpl;I)I

    .line 360
    .line 361
    .line 362
    :cond_19
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    return p1

    .line 367
    :sswitch_1d
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 368
    .line 369
    if-eqz p1, :cond_1a

    .line 370
    .line 371
    invoke-interface {p1, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    return p1

    .line 376
    :cond_1a
    return v1

    .line 377
    :sswitch_1e
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 378
    .line 379
    if-nez p1, :cond_1b

    .line 380
    .line 381
    return v1

    .line 382
    :cond_1b
    const/16 v0, 0x2c

    .line 383
    .line 384
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    return p1

    .line 389
    :sswitch_1f
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 390
    .line 391
    if-nez p1, :cond_1c

    .line 392
    .line 393
    return v1

    .line 394
    :cond_1c
    const/16 v0, 0xf5

    .line 395
    .line 396
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    return p1

    .line 401
    :sswitch_20
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 402
    .line 403
    if-nez p1, :cond_1d

    .line 404
    .line 405
    return v1

    .line 406
    :cond_1d
    const/16 v0, 0xde

    .line 407
    .line 408
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    return p1

    .line 413
    :sswitch_21
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 414
    .line 415
    if-nez p1, :cond_1e

    .line 416
    .line 417
    return v1

    .line 418
    :cond_1e
    const/16 v0, 0xdd

    .line 419
    .line 420
    invoke-interface {p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    return p1

    .line 425
    :sswitch_22
    const/16 p1, 0xc6

    .line 426
    .line 427
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    return p1

    .line 436
    :sswitch_23
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    return p1

    .line 441
    :sswitch_24
    const/16 p1, 0xcb

    .line 442
    .line 443
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    return p1

    .line 452
    :sswitch_25
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$3000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    return p1

    .line 457
    :sswitch_26
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 458
    .line 459
    if-eqz p1, :cond_20

    .line 460
    .line 461
    invoke-interface {p1}, Lcom/ss/ttm/player/MediaPlayer;->isMute()Z

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-eqz p1, :cond_1f

    .line 466
    .line 467
    return v3

    .line 468
    :cond_1f
    return v4

    .line 469
    :cond_20
    return v1

    .line 470
    :sswitch_27
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getVolume()F

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    float-to-int p1, p1

    .line 475
    return p1

    .line 476
    :sswitch_28
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 477
    .line 478
    if-nez p1, :cond_21

    .line 479
    .line 480
    return v1

    .line 481
    :cond_21
    iget v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 482
    .line 483
    if-gez v2, :cond_22

    .line 484
    .line 485
    const/16 v2, 0x9e

    .line 486
    .line 487
    invoke-interface {p1, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    iput p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 492
    .line 493
    :cond_22
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mAudioCodecType:I

    .line 494
    .line 495
    return p1

    .line 496
    :sswitch_29
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 497
    .line 498
    if-nez p1, :cond_23

    .line 499
    .line 500
    return v1

    .line 501
    :cond_23
    iget v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 502
    .line 503
    if-gez v2, :cond_24

    .line 504
    .line 505
    const/16 v2, 0x9d

    .line 506
    .line 507
    invoke-interface {p1, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    iput p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 512
    .line 513
    :cond_24
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mVideoCodecType:I

    .line 514
    .line 515
    return p1

    .line 516
    :sswitch_2a
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 517
    .line 518
    return p1

    .line 519
    :sswitch_2b
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLoadState:I

    .line 520
    .line 521
    return p1

    .line 522
    :sswitch_2c
    iget p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackState:I

    .line 523
    .line 524
    return p1

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2c
        0x16 -> :sswitch_2b
        0x17 -> :sswitch_2a
        0x18 -> :sswitch_29
        0x19 -> :sswitch_28
        0x1a -> :sswitch_27
        0x1b -> :sswitch_26
        0x1e -> :sswitch_25
        0x22 -> :sswitch_24
        0x23 -> :sswitch_23
        0x24 -> :sswitch_22
        0x2a -> :sswitch_21
        0x2b -> :sswitch_20
        0x2c -> :sswitch_1f
        0x31 -> :sswitch_1e
        0x3d -> :sswitch_1d
        0x3f -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x43 -> :sswitch_1a
        0x45 -> :sswitch_19
        0x4d -> :sswitch_18
        0x4f -> :sswitch_17
        0x51 -> :sswitch_16
        0x54 -> :sswitch_15
        0x55 -> :sswitch_14
        0x57 -> :sswitch_13
        0x58 -> :sswitch_12
        0x59 -> :sswitch_11
        0x5a -> :sswitch_10
        0x5e -> :sswitch_f
        0x61 -> :sswitch_e
        0x64 -> :sswitch_d
        0x65 -> :sswitch_c
        0x67 -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x72 -> :sswitch_8
        0x79 -> :sswitch_7
        0x7a -> :sswitch_6
        0x8e -> :sswitch_5
        0x91 -> :sswitch_4
        0x93 -> :sswitch_3
        0x94 -> :sswitch_2
        0x9a -> :sswitch_1
        0x9c -> :sswitch_0
    .end sparse-switch
.end method

.method public getLogValueLong(I)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-wide v1

    .line 14
    :cond_0
    const/16 v3, 0x5f

    .line 15
    .line 16
    if-eq p1, v3, :cond_a

    .line 17
    .line 18
    iget-object v3, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    return-wide v1

    .line 23
    :cond_1
    const/16 v4, 0x5b

    .line 24
    .line 25
    if-eq p1, v4, :cond_9

    .line 26
    .line 27
    const/16 v4, 0x5c

    .line 28
    .line 29
    if-eq p1, v4, :cond_8

    .line 30
    .line 31
    const/16 v4, 0x89

    .line 32
    .line 33
    if-eq p1, v4, :cond_7

    .line 34
    .line 35
    const/16 v4, 0x8a

    .line 36
    .line 37
    if-eq p1, v4, :cond_6

    .line 38
    .line 39
    const/16 v4, 0x8c

    .line 40
    .line 41
    if-eq p1, v4, :cond_5

    .line 42
    .line 43
    const/16 v4, 0x8d

    .line 44
    .line 45
    if-eq p1, v4, :cond_4

    .line 46
    .line 47
    const/16 v4, 0x48

    .line 48
    .line 49
    const/16 v5, 0x2f5

    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    const/16 v7, 0x2e6

    .line 53
    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    packed-switch p1, :pswitch_data_1

    .line 61
    .line 62
    .line 63
    packed-switch p1, :pswitch_data_2

    .line 64
    .line 65
    .line 66
    packed-switch p1, :pswitch_data_3

    .line 67
    .line 68
    .line 69
    packed-switch p1, :pswitch_data_4

    .line 70
    .line 71
    .line 72
    packed-switch p1, :pswitch_data_5

    .line 73
    .line 74
    .line 75
    return-wide v1

    .line 76
    :pswitch_0
    const/16 p1, 0x24e

    .line 77
    .line 78
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    return-wide v0

    .line 83
    :pswitch_1
    const/16 p1, 0x249

    .line 84
    .line 85
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    return-wide v0

    .line 90
    :pswitch_2
    const/16 p1, 0x24d

    .line 91
    .line 92
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    return-wide v0

    .line 97
    :pswitch_3
    const/16 p1, 0x248

    .line 98
    .line 99
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    return-wide v0

    .line 104
    :pswitch_4
    const/16 p1, 0x24c

    .line 105
    .line 106
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    return-wide v0

    .line 111
    :pswitch_5
    const/16 p1, 0x247

    .line 112
    .line 113
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    return-wide v0

    .line 118
    :pswitch_6
    const/16 p1, 0x242

    .line 119
    .line 120
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    invoke-interface {v3, p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    return-wide v0

    .line 129
    :pswitch_7
    const/16 p1, 0x241

    .line 130
    .line 131
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    invoke-interface {v3, p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    return-wide v0

    .line 140
    :pswitch_8
    const/16 p1, 0x243

    .line 141
    .line 142
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    invoke-interface {v3, p1, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    return-wide v0

    .line 151
    :pswitch_9
    invoke-interface {v3, v4, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    return-wide v0

    .line 156
    :pswitch_a
    const/16 p1, 0x49

    .line 157
    .line 158
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    return-wide v0

    .line 163
    :pswitch_b
    const/16 p1, 0x27f

    .line 164
    .line 165
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    return-wide v0

    .line 170
    :pswitch_c
    const/16 p1, 0x27e

    .line 171
    .line 172
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    return-wide v0

    .line 177
    :pswitch_d
    const/16 p1, 0x27d

    .line 178
    .line 179
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    return-wide v0

    .line 184
    :pswitch_e
    const/16 p1, 0x27c

    .line 185
    .line 186
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    return-wide v0

    .line 191
    :pswitch_f
    const/16 p1, 0x260

    .line 192
    .line 193
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    return-wide v0

    .line 198
    :pswitch_10
    const/16 p1, 0x25f

    .line 199
    .line 200
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    return-wide v0

    .line 205
    :pswitch_11
    const/16 p1, 0x2d

    .line 206
    .line 207
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    return-wide v0

    .line 212
    :pswitch_12
    const/16 p1, 0x25e

    .line 213
    .line 214
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    return-wide v0

    .line 219
    :pswitch_13
    const/16 p1, 0x10d

    .line 220
    .line 221
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v0

    .line 225
    return-wide v0

    .line 226
    :pswitch_14
    const/16 p1, 0x10c

    .line 227
    .line 228
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    return-wide v0

    .line 233
    :pswitch_15
    const/16 p1, 0x10b

    .line 234
    .line 235
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 236
    .line 237
    .line 238
    move-result-wide v0

    .line 239
    return-wide v0

    .line 240
    :pswitch_16
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v0

    .line 244
    return-wide v0

    .line 245
    :pswitch_17
    iget-wide v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayTime:J

    .line 246
    .line 247
    return-wide v0

    .line 248
    :pswitch_18
    const/16 p1, 0x134

    .line 249
    .line 250
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 251
    .line 252
    .line 253
    move-result-wide v0

    .line 254
    return-wide v0

    .line 255
    :pswitch_19
    const/16 p1, 0x133

    .line 256
    .line 257
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    return-wide v0

    .line 262
    :sswitch_0
    const/16 p1, 0x549

    .line 263
    .line 264
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 265
    .line 266
    .line 267
    move-result-wide v0

    .line 268
    return-wide v0

    .line 269
    :sswitch_1
    const/16 p1, 0x548

    .line 270
    .line 271
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 272
    .line 273
    .line 274
    move-result-wide v0

    .line 275
    return-wide v0

    .line 276
    :sswitch_2
    const/16 p1, 0x2f7

    .line 277
    .line 278
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 279
    .line 280
    .line 281
    move-result-wide v0

    .line 282
    return-wide v0

    .line 283
    :sswitch_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-virtual {v0, v7, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_2

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_2
    const/4 v6, -0x3

    .line 295
    :goto_0
    int-to-long v0, v6

    .line 296
    invoke-interface {v3, v5, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 297
    .line 298
    .line 299
    move-result-wide v0

    .line 300
    return-wide v0

    .line 301
    :sswitch_4
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    invoke-virtual {v0, v7, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_3

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_3
    const/4 v6, -0x2

    .line 313
    :goto_1
    int-to-long v0, v6

    .line 314
    invoke-interface {v3, v5, v0, v1}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 315
    .line 316
    .line 317
    move-result-wide v0

    .line 318
    return-wide v0

    .line 319
    :sswitch_5
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 320
    .line 321
    .line 322
    move-result-wide v0

    .line 323
    return-wide v0

    .line 324
    :sswitch_6
    const/16 p1, 0x20e

    .line 325
    .line 326
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    return-wide v0

    .line 331
    :sswitch_7
    const/16 p1, 0xab

    .line 332
    .line 333
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 334
    .line 335
    .line 336
    move-result-wide v0

    .line 337
    return-wide v0

    .line 338
    :sswitch_8
    invoke-interface {v3, v4, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 339
    .line 340
    .line 341
    move-result-wide v0

    .line 342
    return-wide v0

    .line 343
    :sswitch_9
    const/16 p1, 0x205

    .line 344
    .line 345
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    return-wide v0

    .line 350
    :sswitch_a
    const/16 p1, 0x98

    .line 351
    .line 352
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 353
    .line 354
    .line 355
    move-result-wide v0

    .line 356
    return-wide v0

    .line 357
    :sswitch_b
    const/16 p1, 0xa2

    .line 358
    .line 359
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 360
    .line 361
    .line 362
    move-result-wide v0

    .line 363
    return-wide v0

    .line 364
    :sswitch_c
    const/16 p1, 0xa3

    .line 365
    .line 366
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 367
    .line 368
    .line 369
    move-result-wide v0

    .line 370
    return-wide v0

    .line 371
    :sswitch_d
    const/16 p1, 0x9b

    .line 372
    .line 373
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 374
    .line 375
    .line 376
    move-result-wide v0

    .line 377
    return-wide v0

    .line 378
    :sswitch_e
    const/16 p1, 0x9c

    .line 379
    .line 380
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 381
    .line 382
    .line 383
    move-result-wide v0

    .line 384
    return-wide v0

    .line 385
    :sswitch_f
    const/16 p1, 0x4e

    .line 386
    .line 387
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 388
    .line 389
    .line 390
    move-result-wide v0

    .line 391
    return-wide v0

    .line 392
    :sswitch_10
    const/16 p1, 0x4d

    .line 393
    .line 394
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 395
    .line 396
    .line 397
    move-result-wide v0

    .line 398
    return-wide v0

    .line 399
    :sswitch_11
    const/16 p1, 0x4c

    .line 400
    .line 401
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 402
    .line 403
    .line 404
    move-result-wide v0

    .line 405
    return-wide v0

    .line 406
    :sswitch_12
    const/16 p1, 0x4b

    .line 407
    .line 408
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 409
    .line 410
    .line 411
    move-result-wide v0

    .line 412
    return-wide v0

    .line 413
    :sswitch_13
    const/16 p1, 0x46

    .line 414
    .line 415
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 416
    .line 417
    .line 418
    move-result-wide v0

    .line 419
    return-wide v0

    .line 420
    :sswitch_14
    const/16 p1, 0x45

    .line 421
    .line 422
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 423
    .line 424
    .line 425
    move-result-wide v0

    .line 426
    return-wide v0

    .line 427
    :sswitch_15
    const/16 p1, 0x44

    .line 428
    .line 429
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    return-wide v0

    .line 434
    :cond_4
    const/16 p1, 0x2f1

    .line 435
    .line 436
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 437
    .line 438
    .line 439
    move-result-wide v0

    .line 440
    return-wide v0

    .line 441
    :cond_5
    const/16 p1, 0x2f0

    .line 442
    .line 443
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 444
    .line 445
    .line 446
    move-result-wide v0

    .line 447
    return-wide v0

    .line 448
    :cond_6
    const/16 p1, 0x358

    .line 449
    .line 450
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 451
    .line 452
    .line 453
    move-result-wide v0

    .line 454
    return-wide v0

    .line 455
    :cond_7
    const/16 p1, 0x709

    .line 456
    .line 457
    invoke-interface {v3, p1, v1, v2}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 458
    .line 459
    .line 460
    move-result-wide v0

    .line 461
    return-wide v0

    .line 462
    :cond_8
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v0

    .line 466
    return-wide v0

    .line 467
    :cond_9
    iget-wide v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mLastSwitchRadioModeTime:J

    .line 468
    .line 469
    return-wide v0

    .line 470
    :cond_a
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    if-nez p1, :cond_b

    .line 475
    .line 476
    return-wide v1

    .line 477
    :cond_b
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    const/4 v0, 0x3

    .line 482
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;->getInfo(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    instance-of v0, p1, Ljava/lang/Long;

    .line 487
    .line 488
    if-eqz v0, :cond_c

    .line 489
    .line 490
    check-cast p1, Ljava/lang/Long;

    .line 491
    .line 492
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 493
    .line 494
    .line 495
    move-result-wide v0

    .line 496
    return-wide v0

    .line 497
    :cond_c
    return-wide v1

    .line 498
    nop

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_15
        0xa -> :sswitch_14
        0xb -> :sswitch_13
        0xc -> :sswitch_12
        0xd -> :sswitch_11
        0xe -> :sswitch_10
        0xf -> :sswitch_f
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x12 -> :sswitch_c
        0x13 -> :sswitch_b
        0x2d -> :sswitch_a
        0x42 -> :sswitch_9
        0x44 -> :sswitch_8
        0x4b -> :sswitch_7
        0x60 -> :sswitch_6
        0x70 -> :sswitch_5
        0x90 -> :sswitch_4
        0x95 -> :sswitch_3
        0x96 -> :sswitch_2
        0x98 -> :sswitch_1
        0x99 -> :sswitch_0
    .end sparse-switch

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :pswitch_data_4
    .packed-switch 0x68
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :pswitch_data_5
    .packed-switch 0x73
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogValueMap(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const/16 v2, 0x9b

    .line 14
    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x4

    .line 29
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;->getInfoMap(I)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_2
    return-object v1
.end method

.method public getLogValueStr(I)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v2, -0x1

    .line 15
    const-string/jumbo v3, "unknown_codec"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz p1, :cond_1f

    .line 20
    .line 21
    if-eq p1, v4, :cond_1b

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq p1, v2, :cond_19

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq p1, v2, :cond_18

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq p1, v2, :cond_16

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    if-eq p1, v2, :cond_14

    .line 34
    .line 35
    const/16 v2, 0x6e

    .line 36
    .line 37
    if-eq p1, v2, :cond_12

    .line 38
    .line 39
    const/16 v2, 0x6f

    .line 40
    .line 41
    if-eq p1, v2, :cond_e

    .line 42
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :pswitch_0
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_1
    const/16 v0, 0xc8

    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :pswitch_1
    :try_start_0
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_2
    :try_start_1
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    return-object p1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :sswitch_0
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_2
    const/16 v0, 0x350

    .line 87
    .line 88
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :sswitch_1
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_3
    const/16 v0, 0x1e1

    .line 100
    .line 101
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :sswitch_2
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 107
    .line 108
    if-nez p1, :cond_4

    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_4
    const/16 v1, 0x1df

    .line 113
    .line 114
    invoke-interface {p1, v1}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    move-object v3, p1

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v1, "audio codec: "

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v3

    .line 151
    :sswitch_3
    const/16 p1, 0x4bf

    .line 152
    .line 153
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v0, p1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-ne p1, v4, :cond_6

    .line 162
    .line 163
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 164
    .line 165
    if-eqz p1, :cond_6

    .line 166
    .line 167
    const/16 v0, 0x2f3

    .line 168
    .line 169
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    :cond_6
    return-object v1

    .line 174
    :sswitch_4
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    const/16 v1, 0x57a

    .line 179
    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-ne p1, v4, :cond_8

    .line 185
    .line 186
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    move-object v3, p1

    .line 205
    goto :goto_1

    .line 206
    :cond_7
    move-object v3, v1

    .line 207
    :goto_1
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getPreloadTraceId(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v5, "get preloadTraceId = "

    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v5, ", groupId = "

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", videoID = "

    .line 237
    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", engine = "

    .line 245
    .line 246
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v3, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_9

    .line 264
    .line 265
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->resetPreloadTraceId(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v1, "reset preloadTraceId = "

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_8
    const/4 v2, 0x0

    .line 298
    :cond_9
    :goto_2
    return-object v2

    .line 299
    :sswitch_5
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    return-object p1

    .line 304
    :sswitch_6
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 305
    .line 306
    if-eqz p1, :cond_20

    .line 307
    .line 308
    const/16 v0, 0x338

    .line 309
    .line 310
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    return-object p1

    .line 315
    :sswitch_7
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 316
    .line 317
    if-eqz p1, :cond_20

    .line 318
    .line 319
    const/16 v0, 0x339

    .line 320
    .line 321
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    return-object p1

    .line 326
    :sswitch_8
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    if-eqz p1, :cond_a

    .line 331
    .line 332
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    const/4 v0, 0x7

    .line 337
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    return-object p1

    .line 342
    :cond_a
    return-object v1

    .line 343
    :sswitch_9
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 344
    .line 345
    if-nez p1, :cond_b

    .line 346
    .line 347
    goto/16 :goto_7

    .line 348
    .line 349
    :cond_b
    const/16 v0, 0x204

    .line 350
    .line 351
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    return-object p1

    .line 356
    :sswitch_a
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 357
    .line 358
    if-nez p1, :cond_c

    .line 359
    .line 360
    goto/16 :goto_7

    .line 361
    .line 362
    :cond_c
    const/16 v0, 0x261

    .line 363
    .line 364
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    return-object p1

    .line 369
    :sswitch_b
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-eqz p1, :cond_d

    .line 374
    .line 375
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-interface {p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->getExtraInfo()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    return-object p1

    .line 384
    :cond_d
    return-object v1

    .line 385
    :sswitch_c
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    const/4 v0, 0x6

    .line 390
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getStringValue(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    return-object p1

    .line 395
    :sswitch_d
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    return-object p1

    .line 400
    :cond_e
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1700()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    if-nez p1, :cond_11

    .line 405
    .line 406
    :try_start_2
    new-instance p1, Ljava/io/FileReader;

    .line 407
    .line 408
    const-string v0, "proc/cpuinfo"

    .line 409
    .line 410
    invoke-direct {p1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Ljava/io/BufferedReader;

    .line 414
    .line 415
    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    :goto_3
    if-eqz p1, :cond_10

    .line 423
    .line 424
    const-string v2, "Hardware"

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_f

    .line 431
    .line 432
    const-string v0, ":"

    .line 433
    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    array-length v0, p1

    .line 439
    if-le v0, v4, :cond_10

    .line 440
    .line 441
    aget-object v1, p1, v4

    .line 442
    .line 443
    goto :goto_4

    .line 444
    :catch_2
    move-exception p1

    .line 445
    goto :goto_5

    .line 446
    :cond_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    goto :goto_3

    .line 451
    :cond_10
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1702(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 456
    .line 457
    .line 458
    goto :goto_6

    .line 459
    :goto_5
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    :cond_11
    :goto_6
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1700()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    return-object p1

    .line 467
    :cond_12
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 468
    .line 469
    if-nez p1, :cond_13

    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_13
    const/16 v0, 0x1d3

    .line 473
    .line 474
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    return-object p1

    .line 479
    :cond_14
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 480
    .line 481
    if-nez p1, :cond_15

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_15
    const/16 v0, 0x47

    .line 485
    .line 486
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    return-object p1

    .line 491
    :cond_16
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->getNetClientSetByUser()Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    if-nez p1, :cond_17

    .line 496
    .line 497
    const-string p1, "own"

    .line 498
    .line 499
    return-object p1

    .line 500
    :cond_17
    const-string/jumbo p1, "user"

    .line 501
    .line 502
    .line 503
    return-object p1

    .line 504
    :cond_18
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    return-object p1

    .line 509
    :cond_19
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 510
    .line 511
    if-nez p1, :cond_1a

    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_1a
    const/16 v0, 0x138a

    .line 515
    .line 516
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    return-object p1

    .line 521
    :cond_1b
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 522
    .line 523
    if-nez p1, :cond_1c

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_1c
    const/16 v0, 0x8b

    .line 527
    .line 528
    invoke-interface {p1, v0, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 529
    .line 530
    .line 531
    move-result p1

    .line 532
    if-eqz p1, :cond_1e

    .line 533
    .line 534
    if-eq p1, v4, :cond_1d

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_1d
    const-string p1, "nativewindow"

    .line 538
    .line 539
    return-object p1

    .line 540
    :cond_1e
    const-string p1, "opengl"

    .line 541
    .line 542
    return-object p1

    .line 543
    :cond_1f
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 544
    .line 545
    if-nez p1, :cond_21

    .line 546
    .line 547
    :cond_20
    :goto_7
    return-object v1

    .line 548
    :cond_21
    const/16 v1, 0x1de

    .line 549
    .line 550
    invoke-interface {p1, v1}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 555
    .line 556
    const/16 v5, 0x8d

    .line 557
    .line 558
    invoke-interface {v1, v5, v2}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-ne v1, v4, :cond_22

    .line 563
    .line 564
    const-string p1, "h265"

    .line 565
    .line 566
    goto :goto_8

    .line 567
    :cond_22
    const/16 v2, 0x21

    .line 568
    .line 569
    if-ne v1, v2, :cond_23

    .line 570
    .line 571
    const-string p1, "h266"

    .line 572
    .line 573
    :cond_23
    :goto_8
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->isInHousePlayer()Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-nez v2, :cond_24

    .line 578
    .line 579
    if-nez v1, :cond_24

    .line 580
    .line 581
    const-string p1, "h264"

    .line 582
    .line 583
    :cond_24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    if-eqz v1, :cond_25

    .line 588
    .line 589
    goto :goto_9

    .line 590
    :cond_25
    move-object v3, p1

    .line 591
    :goto_9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .line 599
    .line 600
    const-string/jumbo v1, "video codec: "

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    return-object v3

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_d
        0x25 -> :sswitch_c
        0x2e -> :sswitch_b
        0x37 -> :sswitch_a
        0x41 -> :sswitch_9
        0x4c -> :sswitch_8
        0x4e -> :sswitch_7
        0x50 -> :sswitch_6
        0x66 -> :sswitch_5
        0x8b -> :sswitch_4
        0x8f -> :sswitch_3
        0x92 -> :sswitch_2
        0x97 -> :sswitch_1
        0x9d -> :sswitch_0
    .end sparse-switch

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMediaLoaderInfo()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/16 v1, 0xa0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getPlayLog(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->getConfigInt(II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v4, "videoEngine is:"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", dataloader enable:"

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    return-object v0
.end method

.method public onInfo(ILjava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "noRenderEndInfos"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_1
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "noRenderStartInfos"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_2
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "outsyncEndInfos"

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_3
    if-eqz v0, :cond_0

    .line 87
    .line 88
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 89
    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "outsyncStartInfos"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_4
    if-eqz v0, :cond_0

    .line 110
    .line 111
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 112
    .line 113
    if-eqz p1, :cond_0

    .line 114
    .line 115
    new-instance p1, Lorg/json/JSONObject;

    .line 116
    .line 117
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 121
    .line 122
    invoke-direct {p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v1, "firstframe_split"

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setGroupID(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    invoke-virtual {v0, p2, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_5
    if-eqz v0, :cond_0

    .line 146
    .line 147
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 148
    .line 149
    if-eqz p1, :cond_0

    .line 150
    .line 151
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 152
    .line 153
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "bufferEndInfos"

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_6
    if-eqz v0, :cond_0

    .line 169
    .line 170
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 171
    .line 172
    if-eqz p1, :cond_0

    .line 173
    .line 174
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 175
    .line 176
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "bufferStartInfos"

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setObject(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 188
    .line 189
    .line 190
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public versionInfo()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyLoggerDataSource;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v3, 0xe

    .line 19
    .line 20
    const-string v4, ""

    .line 21
    .line 22
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlayerType:I

    .line 27
    .line 28
    const-string v5, "1.10.172.340-jzdrm-premium"

    .line 29
    .line 30
    const-string v6, "sdk_version"

    .line 31
    .line 32
    const-string v7, "pc"

    .line 33
    .line 34
    const-string v8, "5.6"

    .line 35
    .line 36
    const-string/jumbo v9, "sv"

    .line 37
    .line 38
    .line 39
    const-string v10, "pv"

    .line 40
    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    const/4 v11, 0x1

    .line 44
    if-ne v4, v11, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v11, 0x2

    .line 48
    if-ne v4, v11, :cond_2

    .line 49
    .line 50
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v3, "1.0"

    .line 54
    .line 55
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v3, "0"

    .line 59
    .line 60
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 v11, 0x5

    .line 68
    if-ne v4, v11, :cond_3

    .line 69
    .line 70
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v3, "5.0"

    .line 74
    .line 75
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v3, "5"

    .line 79
    .line 80
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v4, "4.0"

    .line 91
    .line 92
    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_0
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 106
    .line 107
    const-string v8, "3.0"

    .line 108
    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    const/16 v9, 0x447

    .line 112
    .line 113
    invoke-interface {v4, v9}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    new-instance v11, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v12, "playerLibName:"

    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-static {v9, v11}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v9, "ttmplayerbeta"

    .line 142
    .line 143
    .line 144
    if-ne v9, v4, :cond_5

    .line 145
    .line 146
    const-string v4, "3.0-beta"

    .line 147
    .line 148
    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_1
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :goto_2
    const/16 v3, 0x18

    .line 166
    .line 167
    invoke-static {v3}, Lcom/ss/texturerender/TextureRenderConfig;->getValue(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    const-string/jumbo v4, "trv"

    .line 172
    .line 173
    .line 174
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :try_start_0
    const-class v3, Lhd/a;

    .line 178
    .line 179
    sget v4, Lhd/a;->a:I

    .line 180
    .line 181
    const-string v4, "getFFmpegVersion"

    .line 182
    .line 183
    const/4 v5, 0x0

    .line 184
    new-array v6, v5, [Ljava/lang/Class;

    .line 185
    .line 186
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    new-array v4, v5, [Ljava/lang/Object;

    .line 191
    .line 192
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Ljava/lang/String;

    .line 197
    .line 198
    const-string v3, "ffv"

    .line 199
    .line 200
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :catchall_0
    move-exception v1

    .line 205
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "get ffmpeg version error: "

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_3
    return-object v2
.end method
