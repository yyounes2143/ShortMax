.class public abstract Lcom/ss/texturerender/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;,
        Lcom/ss/texturerender/TextureRenderer$OnTextureFocusLossListener;,
        Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;,
        Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;
    }
.end annotation


# static fields
.field public static final ERROR_FATAl:I = 0x0

.field public static final ERROR_WARN:I = 0x1

.field private static final EXPIRE_TIME:J = 0x1d4c0L

.field protected static final KEY_SURFACE_OBJ:Ljava/lang/String; = "surface"

.field public static LOG_TAG:Ljava/lang/String; = "TextureRenderer"

.field protected static final MSG_AUTO_RELEASE:I = 0xb

.field protected static final MSG_CHECK_FRAME_CALLBACK:I = 0x25

.field protected static final MSG_CLEAR_SURFACE:I = 0xd

.field protected static final MSG_DEINIT:I = 0x3

.field protected static final MSG_ERROR:I = 0x6

.field protected static final MSG_GEN_TEXTURE:I = 0x9

.field protected static final MSG_INIT:I = 0x1

.field public static final MSG_RENDER:I = 0x2

.field protected static final MSG_RESET_CROP_PARAMS:I = 0x28

.field protected static final MSG_RESET_ROTATION_MIRROR_PARAMS:I = 0x2a

.field protected static final MSG_SAVE_FRAME:I = 0xe

.field protected static final MSG_SET_ACTIVE_TEXTURE:I = 0xa

.field public static final MSG_SET_EFFECT:I = 0x24

.field protected static final MSG_SET_EXTRA_SURFACE:I = 0x19

.field public static final MSG_SET_FLOAT_OPTION:I = 0x23

.field public static final MSG_SET_INT_OPTION:I = 0x22

.field protected static final MSG_SET_MAIN_SURFACE:I = 0x21

.field protected static final MSG_SET_OBJECT_OPTION:I = 0x29

.field protected static final MSG_SET_OVERLAY_RATIO:I = 0x1b

.field protected static final MSG_SET_OVERLAY_SYNC:I = 0x1f

.field protected static final MSG_SET_SURFACE:I = 0x4

.field public static final MSG_SR_INIT_CONFIG:I = 0xc

.field protected static final MSG_START_RENDER_CHECK:I = 0x26

.field protected static final MSG_STATE_CHANGED:I = 0x7

.field protected static final MSG_STOP_RENDER_CHECK:I = 0x27

.field protected static final MSG_TEXTURE_RENDERED:I = 0x8

.field protected static final MSG_UPDATE_FRAME_TIME:I = 0x20

.field public static final MSG_UPDATE_VIDEO_STATUS:I = 0x1a

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_EXECUTING:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INITED:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "3.58.11-tob"


# instance fields
.field protected mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

.field protected mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

.field protected mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

.field protected mEffectConfigWant:Lcom/ss/texturerender/effect/EffectConfig;

.field protected mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

.field private mErrorListener:Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;

.field private mErrorReason:Ljava/lang/String;

.field protected volatile mHandler:Landroid/os/Handler;

.field private final mHandlerObject:Ljava/lang/Object;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mNotifyHandler:Landroid/os/Handler;

.field private mSetupFence:Ljava/lang/Object;

.field protected volatile mState:I

.field private mStateChangeListener:Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;

.field protected mTexType:I

.field protected mTextureFactory:Lcom/ss/texturerender/TextureFactory;

.field protected mTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/texturerender/VideoSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V

    .line 18
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version :3.58.11-tob config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " type:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerObject:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mSetupFence:Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version :3.58.11-tob config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", useGL3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/ss/texturerender/base/EGLRuntime;

    new-instance v1, Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;-><init>(Lcom/ss/texturerender/TextureRenderer;Lcom/ss/texturerender/TextureRenderer$1;)V

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/ss/texturerender/base/EGLRuntime;-><init>(ILcom/ss/texturerender/base/EGLRuntime$ErrorCallback;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V

    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 6
    invoke-virtual {v0, p5}, Lcom/ss/texturerender/base/EGLRuntime;->setUseGL3(Z)V

    .line 7
    iget-object p3, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectConfig;->getEGLBitDepth()I

    move-result p4

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    :goto_0
    invoke-virtual {p3, p4}, Lcom/ss/texturerender/base/EGLRuntime;->setBitDepth(I)V

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 9
    iput-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorReason:Ljava/lang/String;

    .line 10
    new-instance p3, Lcom/ss/texturerender/effect/EffectConfig;

    invoke-direct {p3, p2}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    iput-object p3, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfigWant:Lcom/ss/texturerender/effect/EffectConfig;

    .line 12
    iput p2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 13
    new-instance p1, Lcom/ss/texturerender/TextureFactory;

    invoke-direct {p1, p0}, Lcom/ss/texturerender/TextureFactory;-><init>(Lcom/ss/texturerender/TextureRenderer;)V

    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureFactory:Lcom/ss/texturerender/TextureFactory;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 15
    invoke-virtual {p0, p2}, Lcom/ss/texturerender/TextureRenderer;->init(I)V

    .line 16
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    sget-object p2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    const-string p3, "construct done"

    invoke-static {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkExpired()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSR()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSharpen()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 22
    .line 23
    const/16 v1, 0xe

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x4

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 40
    .line 41
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "renderer ="

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ", check expired"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 69
    .line 70
    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-wide/32 v2, 0x1d4c0

    .line 80
    .line 81
    .line 82
    const/16 v4, 0xb

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 87
    .line 88
    const/16 v5, 0x9

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 106
    .line 107
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 108
    .line 109
    const-string v3, "renderer is expired"

    .line 110
    .line 111
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 115
    .line 116
    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_4

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->isAlive()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_5

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->couldForceRelease()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_4

    .line 156
    .line 157
    :cond_5
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 158
    .line 159
    sget-object v6, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v8, "a texture is still working "

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v1, v6, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 182
    .line 183
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    .line 185
    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 188
    :cond_6
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 189
    .line 190
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 191
    .line 192
    const-string v3, "non live texture , renderer is expired"

    .line 193
    .line 194
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 198
    .line 199
    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 202
    :cond_7
    :goto_0
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 203
    .line 204
    sget-object v5, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 205
    .line 206
    const-string v6, "renderer is excuting"

    .line 207
    .line 208
    invoke-static {v1, v5, v6}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 212
    .line 213
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    .line 215
    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 218
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw v1

    .line 220
    :cond_8
    :goto_2
    return-void
.end method

.method private getSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    move-object v3, v2

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_3

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->isAlive()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->canReuse(Landroid/os/Looper;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 48
    .line 49
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v4, "same looper reuse texture"

    .line 52
    .line 53
    invoke-static {v1, v2, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->pause(ZZ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setFrameRenderChecker(Lcom/ss/texturerender/RenderCheckDispatcher;)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object v3

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_1
    iget v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 73
    .line 74
    sget-object v6, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v8, "can\'t reuse, delete = "

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v4, v6, v7}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->release(Z)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSR()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_0

    .line 110
    .line 111
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSharpen()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_0

    .line 118
    .line 119
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 120
    .line 121
    const/16 v5, 0xe

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_0

    .line 128
    .line 129
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 130
    .line 131
    const/16 v5, 0x10

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_0

    .line 138
    .line 139
    iget v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 140
    .line 141
    and-int/lit8 v5, v4, 0x4

    .line 142
    .line 143
    if-nez v5, :cond_0

    .line 144
    .line 145
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 146
    .line 147
    const-string/jumbo v3, "still living"

    .line 148
    .line 149
    .line 150
    invoke-static {v4, v1, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    monitor-exit v0

    .line 154
    return-object v2

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->getTexture()Lcom/ss/texturerender/ITexture;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lcom/ss/texturerender/TextureRenderer;->genNewVideoSurfaceTexture(Lcom/ss/texturerender/ITexture;)Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 166
    .line 167
    const/4 v4, 0x5

    .line 168
    invoke-virtual {v3, v4, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 172
    .line 173
    invoke-virtual {v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->bindEGLEnv(Lcom/ss/texturerender/base/EGLRuntime;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v1}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 183
    .line 184
    invoke-virtual {v3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setFrameRenderChecker(Lcom/ss/texturerender/RenderCheckDispatcher;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    if-eqz v3, :cond_6

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->isRelease()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_6

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->isAlive()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    :goto_1
    monitor-exit v0

    .line 209
    return-object v3

    .line 210
    :cond_6
    :goto_2
    monitor-exit v0

    .line 211
    return-object v2

    .line 212
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    throw v1
.end method

.method private handleChangeActiveTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 5
    .line 6
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "resume texture ="

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->isCurrentObject()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->makeCurrent()Z

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 38
    .line 39
    sget-object v0, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "change active drawing id"

    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private handleClearSurface(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "handle clear surface"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/os/Message;

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 20
    .line 21
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "state is invalid : "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/ss/texturerender/TextureRenderer;->msgNotify(Landroid/os/Message;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string/jumbo v1, "surface"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/view/Surface;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/base/EGLRuntime;->clearSurface(Landroid/view/Surface;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0, v0}, Lcom/ss/texturerender/TextureRenderer;->msgNotify(Landroid/os/Message;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private handleGenTexture(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureFactory:Lcom/ss/texturerender/TextureFactory;

    .line 2
    .line 3
    const v1, 0x8d65

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/TextureFactory;->createTexture(II)Lcom/ss/texturerender/ITexture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 15
    .line 16
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "Create Texture failed."

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 27
    .line 28
    .line 29
    monitor-exit p1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method private handleSaveFrame(Landroid/os/Message;)V
    .locals 12

    .line 1
    const-string v0, "handleSaveFrame"

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 4
    .line 5
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "handle save frame"

    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    const-string/jumbo v2, "texture"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroid/os/Message;

    .line 32
    .line 33
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 39
    .line 40
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v3, "state is invalid : "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->msgNotify(Landroid/os/Message;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    if-nez v10, :cond_2

    .line 80
    .line 81
    :cond_1
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 82
    .line 83
    sget-object v4, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v6, "texture size is invalid = "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v6, ", height ="

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v3, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 115
    .line 116
    sget-object v4, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v6, "savexx frame = "

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ", "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v3, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    mul-int v3, v2, v10

    .line 147
    .line 148
    mul-int/lit8 v3, v3, 0x4

    .line 149
    .line 150
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 155
    .line 156
    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 160
    .line 161
    .line 162
    const/16 v7, 0x1908

    .line 163
    .line 164
    const/16 v8, 0x1401

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    move v5, v2

    .line 169
    move v6, v10

    .line 170
    move-object v9, v11

    .line 171
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 172
    .line 173
    .line 174
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 175
    .line 176
    invoke-static {v3, v0}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_3

    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    invoke-virtual {v1, v3, v4, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    .line 191
    invoke-static {v2, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 199
    .line 200
    .line 201
    new-instance v8, Landroid/graphics/Matrix;

    .line 202
    .line 203
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .line 205
    .line 206
    const/high16 v1, 0x3f800000    # 1.0f

    .line 207
    .line 208
    const/high16 v3, -0x40800000    # -1.0f

    .line 209
    .line 210
    invoke-virtual {v8, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 211
    .line 212
    .line 213
    const/4 v5, 0x0

    .line 214
    const/4 v9, 0x1

    .line 215
    const/4 v4, 0x0

    .line 216
    move-object v3, v0

    .line 217
    move v6, v2

    .line 218
    move v7, v10

    .line 219
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :goto_1
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 230
    .line 231
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 232
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v4, "save frame failed "

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_2
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->msgNotify(Landroid/os/Message;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 262
    .line 263
    const-string/jumbo v0, "update surface but missing texture"

    .line 264
    .line 265
    .line 266
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 271
    .line 272
    const-string/jumbo v0, "update surface but missing bundle?"

    .line 273
    .line 274
    .line 275
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p1
.end method

.method private handleStartRenderCheck()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "handleStartRenderCheck "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    const/16 v1, 0x25

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private handleStopRenderCheck()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "handleStopRenderCheck "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    const/16 v1, 0x25

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private isSupportGL3()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v2, "activity"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/app/ActivityManager;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 29
    .line 30
    const/high16 v3, 0x30000

    .line 31
    .line 32
    if-lt v2, v3, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_0
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 36
    .line 37
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "gles version: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", isSupportGL3: "

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return v0
.end method

.method private final msgNotify(Landroid/os/Message;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 5
    .line 6
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected changeState(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 15
    .line 16
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "state change from "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, " to "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput p1, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 50
    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object p2, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerObject:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter p2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mStateChangeListener:Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mNotifyHandler:Landroid/os/Handler;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v1, 0x7

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    .line 75
    .line 76
    monitor-exit p2

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_0
    monitor-exit p2

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1
.end method

.method public clearSurface(Landroid/view/Surface;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "surface"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Landroid/os/Message;

    .line 27
    .line 28
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 36
    .line 37
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "clear surface start"

    .line 40
    .line 41
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p2, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 55
    .line 56
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "clear surface end : ret = "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, p2, Landroid/os/Message;->arg1:I

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v0, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    if-ge p2, p1, :cond_1

    .line 84
    .line 85
    return v1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    :catch_0
    return v1

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    return p1
.end method

.method protected abstract deinitEffectComponents()V
.end method

.method protected abstract deinitGLComponents()V
.end method

.method protected deleteTextures()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->release(Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 41
    .line 42
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "delete textures : "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTextureFactory:Lcom/ss/texturerender/TextureFactory;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureFactory;->release()V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw v1
.end method

.method protected genNewVideoSurfaceTexture(Lcom/ss/texturerender/ITexture;)Lcom/ss/texturerender/VideoSurfaceTexture;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p0}, Lcom/ss/texturerender/VideoSurfaceTexture;-><init>(Lcom/ss/texturerender/ITexture;Landroid/os/Handler;Lcom/ss/texturerender/TextureRenderer;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public genOffscreenSurface()Lcom/ss/texturerender/VideoSurface;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/TextureRenderer;->getSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getOffScreenSurface()Lcom/ss/texturerender/VideoSurface;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    return-object v2
.end method

.method public getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectTextureManager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraVideoSurfaceTexture()Lcom/ss/texturerender/VideoSurfaceTexture;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 2
    .line 3
    return v0
.end method

.method protected getTexture()Lcom/ss/texturerender/ITexture;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    new-instance v3, Landroid/os/Message;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    :try_start_1
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :try_start_2
    iget-object v4, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    const-wide/16 v4, 0x3e8

    .line 24
    .line 25
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 26
    .line 27
    .line 28
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    iget-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const-string v1, "The handler is busy for other operation timeout"

    .line 42
    .line 43
    iput-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorReason:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v1, "Try modify the wait timeOut"

    .line 49
    .line 50
    iput-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorReason:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/ss/texturerender/ITexture;

    .line 55
    .line 56
    return-object v0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 60
    :goto_1
    iget v2, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 61
    .line 62
    sget-object v3, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v5, "texture render may exit, error:"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :catch_1
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 91
    .line 92
    sget-object v2, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 93
    .line 94
    const-string/jumbo v3, "texture render already exit"

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method protected handleCheckFrameCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->isStarted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/16 v1, 0x25

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/ss/texturerender/RenderCheckDispatcher;->checkSurfaceTextureCallbackTime()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    const-wide/16 v2, 0x1f4

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 39
    .line 40
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "handleCheckFrameCallback invalid state "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method protected handleDeinit()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, "deinit"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/ss/texturerender/TextureRenderer;->changeState(IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->deinitEffectComponents()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->deleteTextures()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->deinitGLComponents()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/ss/texturerender/base/EGLRuntime;->deinitEGL()V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 50
    .line 51
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "deinit done"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected abstract handleFrameAvailable(Landroid/os/Message;)V
.end method

.method protected abstract handleGLThreadMessage(Landroid/os/Message;)V
.end method

.method protected handleInit(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "init start"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mEGLRuntime:Lcom/ss/texturerender/base/EGLRuntime;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/ss/texturerender/base/EGLRuntime;->initEGL()I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->initGLComponents()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0, v0}, Lcom/ss/texturerender/TextureRenderer;->changeState(IZ)V

    .line 33
    .line 34
    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 40
    .line 41
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "init done"

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit p1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyRenderFrame(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mStateChangeListener:Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;->onStateChanged(I)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mNotifyHandler:Landroid/os/Handler;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mNotifyHandler:Landroid/os/Handler;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorListener:Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;->onError(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 65
    return p1
.end method

.method protected abstract handleSetSurface(Landroid/os/Message;)V
.end method

.method public handleTextureRenderMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0xe

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    packed-switch v0, :pswitch_data_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleGLThreadMessage(Landroid/os/Message;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-direct {p0}, Lcom/ss/texturerender/TextureRenderer;->handleStopRenderCheck()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-direct {p0}, Lcom/ss/texturerender/TextureRenderer;->handleStartRenderCheck()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->handleCheckFrameCallback()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_3
    invoke-direct {p0}, Lcom/ss/texturerender/TextureRenderer;->checkExpired()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleChangeActiveTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Landroid/os/Message;

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleGenTexture(Landroid/os/Message;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleSaveFrame(Landroid/os/Message;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleClearSurface(Landroid/os/Message;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleSetSurface(Landroid/os/Message;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/ss/texturerender/TextureRenderer;->handleDeinit()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleFrameAvailable(Landroid/os/Message;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleInit(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "TRThread_"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/ss/texturerender/TextureRenderer$1;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, p0, v0}, Lcom/ss/texturerender/TextureRenderer$1;-><init>(Lcom/ss/texturerender/TextureRenderer;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    iget v1, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 46
    .line 47
    invoke-direct {p1, v0, v1}, Lcom/ss/texturerender/RenderCheckDispatcher;-><init>(Landroid/os/Handler;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mCheckDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mSetupFence:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_1
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mSetupFence:Ljava/lang/Object;

    .line 68
    .line 69
    const-wide/16 v1, 0x3e8

    .line 70
    .line 71
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    const/16 v0, 0xb

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    const-wide/32 v1, 0x1d4c0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    const-string v1, "EGL initial timeout"

    .line 97
    .line 98
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    throw p1
.end method

.method protected abstract initGLComponents()V
.end method

.method protected notifyEGLError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v2, ", reason = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorReason:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/ss/texturerender/TextureRenderer;->changeState(IZ)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorListener:Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderer;->mNotifyHandler:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v2, 0x6

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "EGL fail = "

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ", reason = "

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-static {p2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p1
.end method

.method protected abstract onInternalStateChanged(I)V
.end method

.method public release()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, "call release"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mState:I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 36
    .line 37
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "send deinit"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    :goto_0
    :try_start_2
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 74
    .line 75
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, "call release end"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :cond_1
    :goto_1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 100
    .line 101
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, "release return"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    throw v0
.end method

.method public sendMessage(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/ss/texturerender/TextureRenderer;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "setOnErrorListener =  "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mErrorListener:Lcom/ss/texturerender/TextureRenderer$OnEglErrorListener;

    .line 27
    .line 28
    return-void
.end method

.method public setOnStateChangedListener(Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    sget-object v1, Lcom/ss/texturerender/TextureRenderer;->LOG_TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "setOnStateChangedListener =  "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mStateChangeListener:Lcom/ss/texturerender/TextureRenderer$OnStateChangeListener;

    .line 27
    .line 28
    return-void
.end method

.method public setVQSCoreInitResult(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer;->mEffectConfig:Lcom/ss/texturerender/effect/EffectConfig;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/ss/texturerender/effect/EffectConfig;->setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public texType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/TextureRenderer;->mTexType:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract updateDisplaySize(II)V
.end method
