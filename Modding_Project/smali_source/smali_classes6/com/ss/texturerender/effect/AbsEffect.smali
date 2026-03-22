.class public abstract Lcom/ss/texturerender/effect/AbsEffect;
.super Ljava/lang/Object;
.source "AbsEffect.java"


# static fields
.field public static final MAX_ORDER:I = 0x64

.field public static final OPTION_EFFECT_FLOATARRAY_TEXTURE_VERTICES:I = 0x32c8

.field public static final OPTION_EFFECT_FLOAT_SRCROPSIZEU:I = 0x36b0

.field public static final OPTION_EFFECT_FLOAT_SRCROPSIZEV:I = 0x36b1

.field public static final OPTION_EFFECT_INT_MAX_HEIGHT:I = 0x2712

.field public static final OPTION_EFFECT_INT_MAX_WIDTH:I = 0x2711

.field public static final OPTION_EFFECT_INT_NEED_CLEAR_BEFORE_DRAW:I = 0x271a

.field public static final OPTION_EFFECT_INT_ORDER:I = 0x271b

.field public static final OPTION_EFFECT_INT_POWER_LEVEL:I = 0x2713

.field public static final OPTION_EFFECT_INT_RENDER_TO_SCREEN:I = 0x271f

.field public static final OPTION_EFFECT_INT_SUPPORT_OES:I = 0x271e

.field public static final OPTION_EFFECT_INT_TEXTURE_TARGET_IN:I = 0x2714

.field public static final OPTION_EFFECT_INT_TYPE:I = 0x2715

.field public static final OPTION_EFFECT_INT_VIEWPORT_HEIGHT:I = 0x2717

.field public static final OPTION_EFFECT_INT_VIEWPORT_WIDTH:I = 0x2716

.field public static final OPTION_EFFECT_INT_VIEWPORT_X:I = 0x2718

.field public static final OPTION_EFFECT_INT_VIEWPORT_Y:I = 0x2719

.field public static final OPTION_EFFECT_INT_VR_MODE:I = 0x271c

.field public static final OPTION_EFFECT_STR_FRAGMENT_SHADER:I = 0x2af9

.field public static final OPTION_EFFECT_STR_VERTEX_SHADER:I = 0x2af8


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mEffectType:I

.field protected mInTextureTarget:I

.field protected mIsSupportOes:I

.field protected mNext:Lcom/ss/texturerender/effect/AbsEffect;

.field protected mOrder:I

.field protected mParentRender:Lcom/ss/texturerender/TextureRenderer;

.field protected mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

.field protected mRenderToScreen:Z

.field public mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

.field protected mTexType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    .line 8
    .line 9
    iput p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public effectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 2
    .line 3
    return v0
.end method

.method public getFloatOption(I)F
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getInitBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 1

    .line 1
    const/16 v0, 0x2714

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x2715

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x271b

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x271e

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 23
    .line 24
    return p1

    .line 25
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 26
    .line 27
    return p1

    .line 28
    :cond_3
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 29
    .line 30
    return p1
.end method

.method public getNextEffect()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOption(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getPreviousEffect()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 7
    .line 8
    const/16 v3, 0x7e

    .line 9
    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 18
    .line 19
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 20
    .line 21
    invoke-virtual {v0, v3, v2, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 25
    .line 26
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    const/16 v4, 0x7f

    .line 31
    .line 32
    invoke-virtual {v0, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mBundle:Landroid/os/Bundle;

    .line 36
    .line 37
    return v1
.end method

.method public insertEffect(Lcom/ss/texturerender/effect/AbsEffect;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 12
    .line 13
    iput-object p0, p1, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v2, v1, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 17
    .line 18
    if-lt v2, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/AbsEffect;->insertEffect(Lcom/ss/texturerender/effect/AbsEffect;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-object p0, p1, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 25
    .line 26
    iput-object v1, p1, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 29
    .line 30
    iput-object p1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 40
    .line 41
    iput-object p0, p1, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget v2, v1, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 45
    .line 46
    if-lt v2, v0, :cond_4

    .line 47
    .line 48
    iput-object p1, v1, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 49
    .line 50
    iput-object v1, p1, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 51
    .line 52
    iput-object p0, p1, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v1, p1}, Lcom/ss/texturerender/effect/AbsEffect;->insertEffect(Lcom/ss/texturerender/effect/AbsEffect;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public abstract process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
.end method

.method public processWithMRT(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)[Lcom/ss/texturerender/effect/EffectTexture;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/AbsEffect;->removeEffect()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public removeEffect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-object v0, v1, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    .line 19
    .line 20
    return-void
.end method

.method public setOption(IF)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(IF)V

    :cond_0
    return-void
.end method

.method public setOption(II)V
    .locals 1

    const/16 v0, 0x271b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x271f

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mRenderToScreen:Z

    goto :goto_1

    .line 4
    :cond_2
    iput p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 5
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mPrevious:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    if-gt p2, p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz p1, :cond_5

    iget p1, p1, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    if-ge p2, p1, :cond_5

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/AbsEffect;->removeEffect()V

    .line 7
    invoke-virtual {p0, p0}, Lcom/ss/texturerender/effect/AbsEffect;->insertEffect(Lcom/ss/texturerender/effect/AbsEffect;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOption(I[F)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(I[F)V

    :cond_0
    return-void
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setParentRender(Lcom/ss/texturerender/TextureRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceTexture(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public texType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]->"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mNext:Lcom/ss/texturerender/effect/AbsEffect;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/AbsEffect;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "end"

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
