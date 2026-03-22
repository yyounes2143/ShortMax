.class public Lcom/ss/texturerender/TextureRenderManager;
.super Ljava/lang/Object;
.source "TextureRenderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderManager"

.field public static final TEX_EXT:I = 0x2

.field public static final TEX_LIVE:I = 0x1

.field public static final TEX_OVERLAY:I = 0x4

.field public static final TEX_PICOVR:I = 0x8

.field public static final TEX_VOD:I

.field private static mManager:Lcom/ss/texturerender/TextureRenderManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/texturerender/TextureRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mTextureError:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method private genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;I)Lcom/ss/texturerender/VideoSurface;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderManager;->genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1

    return-object p1
.end method

.method private genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoSurface;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderManager;->genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1

    return-object p1
.end method

.method private genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;
    .locals 3

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ss/texturerender/RenderFactory;->createRender(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/TextureRenderer;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new TextureRenderer use:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "TextureRenderManager"

    invoke-static {p4, v0, p5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    move-result p4

    const/4 p5, -0x1

    const/4 v1, 0x0

    if-eq p4, p5, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->genOffscreenSurface()Lcom/ss/texturerender/VideoSurface;

    move-result-object p4

    if-nez p4, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->getErrorReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mTextureError:Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->release()V

    return-object v1

    .line 9
    :cond_0
    iget-object p5, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    iget-object p5, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add render = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", effectconfig= "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", texType ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p5, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, p4

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->getErrorReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mTextureError:Ljava/lang/String;

    .line 16
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->release()V

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getManager()Lcom/ss/texturerender/TextureRenderManager;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/texturerender/TextureRenderManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/texturerender/TextureRenderManager;->mManager:Lcom/ss/texturerender/TextureRenderManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/ss/texturerender/TextureRenderManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/ss/texturerender/TextureRenderManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/ss/texturerender/TextureRenderManager;->mManager:Lcom/ss/texturerender/TextureRenderManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/texturerender/TextureRenderManager;->mManager:Lcom/ss/texturerender/TextureRenderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private getRenderer(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/TextureRenderer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "TextureRenderManager"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/ss/texturerender/TextureRenderer;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-ge v4, v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "remove render ="

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, " state = "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v2, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v1, v3

    .line 84
    :cond_2
    if-nez v1, :cond_4

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-static {p1, p2, p3, p4, v0}, Lcom/ss/texturerender/RenderFactory;->createRender(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/TextureRenderer;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    const/4 v0, -0x1

    .line 96
    if-eq p4, v0, :cond_3

    .line 97
    .line 98
    iget-object p4, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "add render = "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", effectconfig= "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ", texType ="

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, ",size = "

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p4, v2, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v3, p3

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->getErrorReason()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mTextureError:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p3}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    move-object v3, v1

    .line 170
    :goto_1
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    .line 174
    .line 175
    return-object v3
.end method

.method private releaseRenderers()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/texturerender/TextureRenderer;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "render = "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ", call release"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "TextureRenderManager"

    .line 60
    .line 61
    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 68
    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v5, "release : remove render ="

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string/jumbo v1, "size = "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v2, v4, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public declared-synchronized asyncInitSR(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderManager;->isSRRenderAvaiable(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(ZI)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/ss/texturerender/VideoSurface;->setSuperResolutionInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized asyncInitSR(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    monitor-enter p0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 7
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/ss/texturerender/TextureRenderManager;->asyncInitSR(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized asyncInitSR(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    move-object v1, p0

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/TextureRenderManager;->isSRRenderAvaiable(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    .line 11
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(ZI)Lcom/ss/texturerender/VideoSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 12
    invoke-virtual/range {v2 .. v9}, Lcom/ss/texturerender/VideoSurface;->setSuperResolutionInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public clearSurface(Landroid/view/Surface;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ss/texturerender/TextureRenderManager;->clearSurface(Landroid/view/Surface;ZLandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Z

    move-result p1

    return p1
.end method

.method public clearSurface(Landroid/view/Surface;ZLandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    const-string v1, "TextureRenderManager"

    const/4 v2, -0x1

    if-nez p1, :cond_0

    .line 3
    const-string p1, "invalid parameter"

    invoke-static {v2, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_0
    new-instance v3, Lcom/ss/texturerender/effect/EffectConfig;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    invoke-direct {p0, v3, v4, p3, p4}, Lcom/ss/texturerender/TextureRenderManager;->getRenderer(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/TextureRenderer;

    move-result-object p3

    if-nez p3, :cond_1

    .line 5
    const-string p1, "couldn\'t get a renderer return"

    invoke-static {v2, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/ss/texturerender/TextureRenderer;->clearSurface(Landroid/view/Surface;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;I)Lcom/ss/texturerender/VideoSurface;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoSurface;
    .locals 6

    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;
    .locals 9

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/ss/texturerender/TextureRenderManager;->genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/texturerender/TextureRenderer;

    .line 9
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v5

    const-string v6, "TextureRenderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tmpConfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", config: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, p1}, Lcom/ss/texturerender/effect/EffectConfig;->isSubSet(Lcom/ss/texturerender/effect/EffectConfig;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v3

    const-string v5, "TextureRenderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "render type is mis match = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v4

    if-eq v4, p2, :cond_3

    .line 14
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v4

    const-string v5, "TextureRenderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tex type is mis match = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v4, v5, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    and-int/lit8 v4, p2, 0x4

    .line 17
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eq v4, v5, :cond_4

    goto/16 :goto_0

    .line 18
    :cond_4
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v2

    const-string v4, "TextureRenderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TextureRenderer use:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->genOffscreenSurface()Lcom/ss/texturerender/VideoSurface;

    move-result-object v2

    if-nez v2, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    move-result v4

    const-string v5, "TextureRenderManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove render ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/ss/texturerender/TextureRenderer;->release()V

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_1

    .line 24
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-object v2

    .line 26
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v2, :cond_7

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/ss/texturerender/TextureRenderManager;->genRenderSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 28
    :cond_7
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized genAvaiableSurface(ZI)Lcom/ss/texturerender/VideoSurface;
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    new-instance v0, Lcom/ss/texturerender/effect/EffectConfig;

    invoke-direct {v0, p2}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/EffectConfig;->setOpenSR(Z)Lcom/ss/texturerender/effect/EffectConfig;

    .line 31
    invoke-virtual {p0, v0, p2}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;I)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized genAvaiableSurface(ZILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoSurface;
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v0, Lcom/ss/texturerender/effect/EffectConfig;

    invoke-direct {v0, p2}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/EffectConfig;->setOpenSR(Z)Lcom/ss/texturerender/effect/EffectConfig;

    .line 34
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/ss/texturerender/TextureRenderManager;->genAvaiableSurface(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Lcom/ss/texturerender/VideoSurface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextureError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mTextureError:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized isEffectAvailable(Lcom/ss/texturerender/effect/EffectConfig;I)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/ss/texturerender/TextureRenderer;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, p1}, Lcom/ss/texturerender/effect/EffectConfig;->isSubSet(Lcom/ss/texturerender/effect/EffectConfig;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v3, p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    and-int/lit8 v2, v2, 0x4

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return v1

    .line 71
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1
.end method

.method public declared-synchronized isSRRenderAvaiable(I)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/ss/texturerender/TextureRenderer;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->getEffectConfig()Lcom/ss/texturerender/effect/EffectConfig;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/ss/texturerender/effect/EffectConfig;->isOpenSR()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v3, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    and-int/lit8 v2, v2, 0x4

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return v1

    .line 71
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/texturerender/TextureRenderManager;->releaseRenderers()V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/ss/texturerender/TextureRenderManager;->mManager:Lcom/ss/texturerender/TextureRenderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public releaseAllEffectNodes()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "action"

    .line 27
    .line 28
    const/16 v3, 0x20

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string v2, "effect_type"

    .line 34
    .line 35
    const/16 v3, 0x18

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-string v4, "TextureRenderManager"

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/ss/texturerender/TextureRenderer;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "render = "

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v6, ", call release nodes"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v3, v4, v5}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/16 v3, 0x24

    .line 85
    .line 86
    invoke-virtual {v2, v3, v1}, Lcom/ss/texturerender/TextureRenderer;->sendMessage(ILandroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "releaseAllEffectNodes end,"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v1, "size = "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/ss/texturerender/TextureRenderManager;->mRenderers:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/4 v1, -0x1

    .line 123
    invoke-static {v1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    :cond_0
    return-void
.end method
