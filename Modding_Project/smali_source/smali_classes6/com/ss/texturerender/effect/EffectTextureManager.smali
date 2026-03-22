.class public Lcom/ss/texturerender/effect/EffectTextureManager;
.super Ljava/lang/Object;
.source "EffectTextureManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_EffectTextureManager"


# instance fields
.field private mMaxSize:I

.field private mTexType:I

.field private mTextureList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/texturerender/effect/EffectTexture;",
            ">;"
        }
    .end annotation
.end field

.field private useGLForsr:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->useGLForsr:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTexType:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mMaxSize:I

    .line 19
    .line 20
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->useGLForsr:Z

    .line 28
    .line 29
    :cond_0
    iput p1, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTexType:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 6

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/16 v3, 0x1908

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1
.end method

.method public genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 7

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    const/16 v5, 0x1908

    const v6, 0x8368

    const v4, 0x8059

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1
.end method

.method public genTexture(IIIII)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 4
    iget-object v0, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 6
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    move-result v2

    if-ne v10, v2, :cond_3

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    move-result v2

    if-ne v11, v2, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getInternalFormat()I

    move-result v2

    move/from16 v12, p3

    if-ne v12, v2, :cond_2

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getFormat()I

    move-result v2

    move/from16 v13, p4

    if-ne v13, v2, :cond_1

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getType()I

    move-result v2

    move/from16 v14, p5

    if-ne v14, v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_1
    :goto_1
    move/from16 v14, p5

    goto :goto_0

    :cond_2
    :goto_2
    move/from16 v13, p4

    goto :goto_1

    :cond_3
    move/from16 v12, p3

    goto :goto_2

    :cond_4
    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    .line 9
    iget-boolean v0, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->useGLForsr:Z

    if-nez v0, :cond_5

    .line 10
    iget-object v0, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/texturerender/effect/EffectTexture;

    :cond_5
    const/16 v0, 0xde1

    if-eqz v1, :cond_7

    .line 11
    iget-boolean v2, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->useGLForsr:Z

    if-eqz v2, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    move-result v1

    :goto_3
    move v15, v1

    goto :goto_5

    .line 13
    :cond_7
    :goto_4
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    move-result v1

    goto :goto_3

    .line 14
    :goto_5
    invoke-static {v0, v15}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    iget-boolean v1, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->useGLForsr:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    const v2, 0x8058

    .line 16
    invoke-static {v0, v1, v2, v10, v11}, Landroid/opengl/GLES30;->glTexStorage2D(IIIII)V

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v0, 0xde1

    const/4 v1, 0x0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 17
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 18
    :goto_6
    new-instance v16, Lcom/ss/texturerender/effect/EffectTexture;

    const/16 v5, 0xde1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIIIIII)V

    .line 19
    iget v0, v9, Lcom/ss/texturerender/effect/EffectTextureManager;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/ss/texturerender/effect/EffectTexture;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TR_EffectTextureManager"

    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public onTextureReturn(Lcom/ss/texturerender/effect/EffectTexture;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/ss/texturerender/effect/EffectTexture;->isEqualTo(Lcom/ss/texturerender/effect/EffectTexture;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mMaxSize:I

    .line 38
    .line 39
    if-le p1, v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/ss/texturerender/effect/EffectTexture;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTexType:I

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "onTextureReturn delTex:"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "TR_EffectTextureManager"

    .line 76
    .line 77
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTextureList:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/ss/texturerender/effect/EffectTexture;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/ss/texturerender/effect/EffectTextureManager;->mTexType:I

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "release delTex:"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "TR_EffectTextureManager"

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
