.class public Lcom/ss/texturerender/effect/GLLutFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLLutFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLLutFilter"


# instance fields
.field private final fragmentShader:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mLutTextureHandle:I

.field private mLutTextureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;",
            ">;"
        }
    .end annotation
.end field

.field private mStrengthHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 3
    .line 4
    .line 5
    const-string p1, "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D lutTexture;\nvarying vec2 vTextureCoord;\nuniform float strength;\nvoid main() {\n    vec4 inputTexColor = texture2D(sTexture, vTextureCoord);\n    float blueColor = inputTexColor.b * 63.0;\n    vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n    vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 7.999);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n    vec2 texturePos1;\n    texturePos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec2 texturePos2;\n    texturePos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec4 newColor1 = texture2D(lutTexture, texturePos1);\n    vec4 newColor2 = texture2D(lutTexture, texturePos2);\n    vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n    gl_FragColor = mix(inputTexColor, vec4(newColor.rgb, inputTexColor.w), strength);\n}"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->fragmentShader:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 15
    .line 16
    const/16 p1, 0xf

    .line 17
    .line 18
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 19
    .line 20
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "new GLLutFilter,this:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "TR_GLLutFilter"

    .line 40
    .line 41
    invoke-static {p1, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private addTextureNode(ILandroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 43
    .line 44
    iget-boolean v4, v3, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 45
    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget p1, v3, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/GLLutFilter;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 73
    .line 74
    const/16 v2, 0xde1

    .line 75
    .line 76
    invoke-static {v2}, Lcom/ss/texturerender/TexGLUtils;->genTexture(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;-><init>(Lcom/ss/texturerender/effect/GLLutFilter;IFZ)V

    .line 83
    .line 84
    .line 85
    iget v1, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 86
    .line 87
    invoke-virtual {p0, v1, p2}, Lcom/ss/texturerender/effect/GLLutFilter;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget p1, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/GLLutFilter;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method private disableAllTextureNode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private removeExtraTextureNode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->using:Z

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    iget v1, v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 34
    .line 35
    invoke-static {v1}, Lcom/ss/texturerender/TexGLUtils;->deleteTexture(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method private setAllLutStrength(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 34
    .line 35
    iput p1, v1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method private setLutStrength(IF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iput p2, p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af9

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D lutTexture;\nvarying vec2 vTextureCoord;\nuniform float strength;\nvoid main() {\n    vec4 inputTexColor = texture2D(sTexture, vTextureCoord);\n    float blueColor = inputTexColor.b * 63.0;\n    vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n    vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 7.999);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n    vec2 texturePos1;\n    texturePos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec2 texturePos2;\n    texturePos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.r);\n    texturePos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * inputTexColor.g);\n    vec4 newColor1 = texture2D(lutTexture, texturePos1);\n    vec4 newColor2 = texture2D(lutTexture, texturePos2);\n    vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n    gl_FragColor = mix(inputTexColor, vec4(newColor.rgb, inputTexColor.w), strength);\n}"

    .line 11
    .line 12
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 13
    .line 14
    const-string/jumbo v2, "super.init(bundle) != TR_OK"

    .line 15
    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    invoke-virtual {p1, v3, v0, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 24
    .line 25
    const-string/jumbo v2, "strength"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mStrengthHandle:I

    .line 33
    .line 34
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 35
    .line 36
    const-string v3, "lutTexture"

    .line 37
    .line 38
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureHandle:I

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLLutFilter;->disableAllTextureNode()V

    .line 45
    .line 46
    .line 47
    const-string v0, "lut_bitmap"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const-string v4, "TR_GLLutFilter"

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/graphics/Bitmap;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    .line 72
    invoke-direct {p0, v5, v0}, Lcom/ss/texturerender/effect/GLLutFilter;->addTextureNode(ILandroid/graphics/Bitmap;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string v0, "lut_bitmap_multi"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/util/HashMap;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/graphics/Bitmap;

    .line 127
    .line 128
    invoke-direct {p0, v3, v1}, Lcom/ss/texturerender/effect/GLLutFilter;->addTextureNode(ILandroid/graphics/Bitmap;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLLutFilter;->removeExtraTextureNode()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/GLLutFilter;->setAllLutStrength(F)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    const-string/jumbo v0, "strength_multi"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Ljava/util/HashMap;

    .line 163
    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_5

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/Integer;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Ljava/lang/Float;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-direct {p0, v2, v1}, Lcom/ss/texturerender/effect/GLLutFilter;->setLutStrength(IF)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    :goto_3
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v2, "init:"

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string p1, ",this:"

    .line 230
    .line 231
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p1, " LutMap:"

    .line 238
    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v0, v4, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return v5

    .line 255
    :cond_6
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v2, "init no bitmap,this:"

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {p1, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return v1
.end method

.method public onDrawFrameBefore()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mCurrentIndex:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const v1, 0x84c1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xde1

    .line 26
    .line 27
    iget v2, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureHandle:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mStrengthHandle:I

    .line 39
    .line 40
    iget v0, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return v0
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mCurrentIndex:I

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mCurrentIndex:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    .line 24
    .line 25
    iget v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mCurrentIndex:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, v0, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->strength:F

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    cmpl-float v0, v0, v1

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mCurrentIndex:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLLutFilter;->disableAllTextureNode()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLLutFilter;->removeExtraTextureNode()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "release,this:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "TR_GLLutFilter"

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public setBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0xde1

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "setBitmap:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ",this:"

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v0, "TR_GLLutFilter"

    .line 47
    .line 48
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public setOption(IF)V
    .locals 2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(IF)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/ss/texturerender/effect/GLLutFilter;->setAllLutStrength(F)V

    .line 3
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",this:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TR_GLLutFilter"

    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 4
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    const-string v1, "effect_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 5
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TR_GLLutFilter"

    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    const-string v3, "index"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    const-string v0, "lut_bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    if-eqz p1, :cond_6

    .line 11
    iget p1, p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/effect/GLLutFilter;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLLutFilter;->mLutTextureMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;

    if-eqz p1, :cond_6

    .line 13
    iget p1, p1, Lcom/ss/texturerender/effect/GLLutFilter$LutTextureNode;->texID:I

    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/effect/GLLutFilter;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const-string v4, "float_value"

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ss/texturerender/effect/GLLutFilter;->setLutStrength(IF)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/ss/texturerender/effect/GLLutFilter;->setAllLutStrength(F)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    :cond_6
    :goto_0
    return-void
.end method
