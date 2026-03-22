.class public Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;I)V
    .locals 6
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 0
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 8
    iput p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 9
    iput-wide p4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 10
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    .line 3
    .line 4
    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;[Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V
    .locals 19
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;[",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    move-object/from16 v11, p5

    .line 6
    .line 7
    move/from16 v12, p6

    .line 8
    .line 9
    move-object/from16 v13, p7

    .line 10
    .line 11
    const-string v14, "DefaultRenderersFactory"

    .line 12
    .line 13
    const-class v15, [Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    .line 14
    .line 15
    const-class v9, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;

    .line 16
    .line 17
    const-class v8, Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v7, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 20
    .line 21
    sget-object v3, Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    .line 24
    .line 25
    .line 26
    move-result-object v16

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, v7

    .line 29
    move-object/from16 v2, p1

    .line 30
    .line 31
    move-object/from16 v4, p2

    .line 32
    .line 33
    move-object/from16 v6, p4

    .line 34
    .line 35
    move-object/from16 v17, v7

    .line 36
    .line 37
    move-object/from16 v7, p5

    .line 38
    .line 39
    move-object/from16 v18, v8

    .line 40
    .line 41
    move-object/from16 v8, v16

    .line 42
    .line 43
    move-object/from16 v16, v14

    .line 44
    .line 45
    move-object v14, v9

    .line 46
    move-object/from16 v9, p3

    .line 47
    .line 48
    invoke-direct/range {v1 .. v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;[Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v1, v17

    .line 52
    .line 53
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    if-nez v12, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x2

    .line 64
    if-ne v12, v2, :cond_1

    .line 65
    .line 66
    add-int/lit8 v1, v1, -0x1

    .line 67
    .line 68
    :cond_1
    :try_start_0
    const-string v2, "com.mbridge.msdk.playercommon.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    move-object/from16 v3, v18

    .line 75
    .line 76
    :try_start_1
    filled-new-array {v3, v14, v15}, [Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v10, v11, v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    add-int/lit8 v4, v1, 0x1

    .line 95
    .line 96
    :try_start_2
    invoke-virtual {v13, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v1, "Loaded LibopusAudioRenderer."
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    move-object/from16 v2, v16

    .line 102
    .line 103
    :try_start_3
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto :goto_0

    .line 109
    :catch_1
    move-object/from16 v2, v16

    .line 110
    .line 111
    :catch_2
    move v1, v4

    .line 112
    goto :goto_1

    .line 113
    :catch_3
    move-object/from16 v2, v16

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_4
    move-object/from16 v2, v16

    .line 117
    .line 118
    move-object/from16 v3, v18

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    const-string v2, "Error instantiating Opus extension"

    .line 124
    .line 125
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :goto_1
    move v4, v1

    .line 130
    :goto_2
    :try_start_4
    const-string v1, "com.mbridge.msdk.playercommon.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    filled-new-array {v3, v14, v15}, [Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    filled-new-array {v10, v11, v0}, [Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 153
    .line 154
    add-int/lit8 v5, v4, 0x1

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v13, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const-string v1, "Loaded LibflacAudioRenderer."

    .line 160
    .line 161
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :catch_5
    move-exception v0

    .line 166
    goto :goto_3

    .line 167
    :catch_6
    move v4, v5

    .line 168
    goto :goto_4

    .line 169
    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    const-string v2, "Error instantiating FLAC extension"

    .line 172
    .line 173
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :catch_7
    :goto_4
    move v5, v4

    .line 178
    :goto_5
    :try_start_6
    const-string v1, "com.mbridge.msdk.playercommon.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    filled-new-array {v3, v14, v15}, [Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    filled-new-array {v10, v11, v0}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 201
    .line 202
    invoke-virtual {v13, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 206
    .line 207
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :catch_8
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    .line 213
    .line 214
    const-string v2, "Error instantiating FFmpeg extension"

    .line 215
    .line 216
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :catch_9
    :goto_6
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V
    .locals 13
    .param p2    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 1
    move/from16 v0, p7

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    new-instance v12, Lcom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;

    .line 6
    .line 7
    sget-object v4, Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/16 v11, 0x32

    .line 11
    .line 12
    move-object v2, v12

    .line 13
    move-object v3, p1

    .line 14
    move-wide/from16 v5, p3

    .line 15
    .line 16
    move-object v7, p2

    .line 17
    move-object/from16 v9, p5

    .line 18
    .line 19
    move-object/from16 v10, p6

    .line 20
    .line 21
    invoke-direct/range {v2 .. v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/mediacodec/MediaCodecSelector;JLcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    :cond_1
    :try_start_0
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    const-class v5, Landroid/os/Handler;

    .line 50
    .line 51
    const-class v6, Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;

    .line 52
    .line 53
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const/16 v5, 0x32

    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    move-object/from16 v6, p5

    .line 76
    .line 77
    move-object/from16 v7, p6

    .line 78
    .line 79
    filled-new-array {v3, v4, v6, v7, v5}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "DefaultRenderersFactory"

    .line 93
    .line 94
    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    const-string v2, "Error instantiating VP9 extension"

    .line 104
    .line 105
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :catch_1
    :goto_0
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)[Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;
    .locals 12
    .param p6    # Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    if-nez p6, :cond_0

    .line 3
    .line 4
    iget-object v0, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;

    .line 5
    .line 6
    move-object v10, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v10, p6

    .line 9
    .line 10
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 16
    .line 17
    iget-wide v3, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 18
    .line 19
    iget v7, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    move-object v2, v10

    .line 23
    move-object v5, p1

    .line 24
    move-object v6, p2

    .line 25
    move-object v8, v11

    .line 26
    invoke-virtual/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildAudioProcessors()[Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v6, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 36
    .line 37
    move-object v4, p1

    .line 38
    move-object v5, p3

    .line 39
    move-object v7, v11

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;[Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget v4, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 50
    .line 51
    move-object/from16 v2, p4

    .line 52
    .line 53
    move-object v5, v11

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget v4, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 64
    .line 65
    move-object/from16 v2, p5

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 71
    .line 72
    iget v1, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 73
    .line 74
    move-object v2, p1

    .line 75
    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    new-array v0, v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 83
    .line 84
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 89
    .line 90
    return-object v0
.end method
