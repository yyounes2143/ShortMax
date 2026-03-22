.class public Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "HardwareBuffer2GLFilter.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_HardwareBuffer2GLFilter"


# instance fields
.field private mDisplay:Landroid/opengl/EGLDisplay;

.field private mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

.field private mTexID:I


# direct methods
.method public constructor <init>(ILandroid/opengl/EGLDisplay;)V
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 11

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getSourceType()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    new-array p2, v0, [I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 20
    .line 21
    .line 22
    aget p2, p2, v1

    .line 23
    .line 24
    iput p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mDisplay:Landroid/opengl/EGLDisplay;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v1, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 36
    .line 37
    const v7, 0x8d65

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0, v1, v7}, Lcom/ss/texturerender/base/EGLExt;->bindHardwareBufferToTexture(Landroid/opengl/EGLDisplay;Landroid/hardware/HardwareBuffer;II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "bindHardwareBufferToTexture fail,ret:"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string v1, "TR_HardwareBuffer2GLFilter"

    .line 66
    .line 67
    invoke-static {v0, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-ne p2, v0, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ne p2, v0, :cond_3

    .line 96
    .line 97
    iget-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eq p2, v7, :cond_4

    .line 104
    .line 105
    :cond_3
    new-instance p2, Lcom/ss/texturerender/effect/EffectTexture;

    .line 106
    .line 107
    iget v4, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getInternalFormat()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getFormat()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getType()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    const/4 v3, 0x0

    .line 130
    move-object v2, p2

    .line 131
    invoke-direct/range {v2 .. v10}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIIIIII)V

    .line 132
    .line 133
    .line 134
    iput-object p2, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 135
    .line 136
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mEffectTexture:Lcom/ss/texturerender/effect/EffectTexture;

    .line 137
    .line 138
    :cond_5
    :goto_0
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/ss/texturerender/effect/HardwareBuffer2GLFilter;->mTexID:I

    .line 8
    .line 9
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "release,this:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "TR_HardwareBuffer2GLFilter"

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
