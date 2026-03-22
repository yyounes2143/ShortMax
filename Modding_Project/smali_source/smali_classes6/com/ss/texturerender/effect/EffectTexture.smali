.class public Lcom/ss/texturerender/effect/EffectTexture;
.super Ljava/lang/Object;
.source "EffectTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/EffectTexture$TextureType;,
        Lcom/ss/texturerender/effect/EffectTexture$FilterType;
    }
.end annotation


# instance fields
.field private extraEffectTextures:[Lcom/ss/texturerender/effect/EffectTexture;

.field private format:I

.field private hardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private height:I

.field private internalFormat:I

.field private mMagFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

.field private mMinFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

.field private manager:Lcom/ss/texturerender/effect/EffectTextureManager;

.field private sourceType:I

.field private texID:I

.field private texTarget:I

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 3
    iput p2, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 4
    iput p3, p0, Lcom/ss/texturerender/effect/EffectTexture;->width:I

    .line 5
    iput p4, p0, Lcom/ss/texturerender/effect/EffectTexture;->height:I

    .line 6
    iput p5, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 7
    sget-object p1, Lcom/ss/texturerender/effect/EffectTexture$FilterType;->LINEAR:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMinFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMagFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->extraEffectTextures:[Lcom/ss/texturerender/effect/EffectTexture;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->sourceType:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIIIIII)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/ss/texturerender/effect/EffectTexture;-><init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIII)V

    .line 22
    iput p6, p0, Lcom/ss/texturerender/effect/EffectTexture;->internalFormat:I

    .line 23
    iput p7, p0, Lcom/ss/texturerender/effect/EffectTexture;->format:I

    .line 24
    iput p8, p0, Lcom/ss/texturerender/effect/EffectTexture;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectTextureManager;IIIILcom/ss/texturerender/effect/EffectTexture$FilterType;Lcom/ss/texturerender/effect/EffectTexture$FilterType;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 13
    iput p2, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 14
    iput p3, p0, Lcom/ss/texturerender/effect/EffectTexture;->width:I

    .line 15
    iput p4, p0, Lcom/ss/texturerender/effect/EffectTexture;->height:I

    .line 16
    iput p5, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 17
    iput-object p6, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMinFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 18
    iput-object p7, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMagFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->extraEffectTextures:[Lcom/ss/texturerender/effect/EffectTexture;

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->sourceType:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/effect/EffectTextureManager;Landroid/hardware/HardwareBuffer;III)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/ss/texturerender/effect/EffectTexture;->hardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 27
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 28
    iput p3, p0, Lcom/ss/texturerender/effect/EffectTexture;->width:I

    .line 29
    iput p4, p0, Lcom/ss/texturerender/effect/EffectTexture;->height:I

    .line 30
    iput p5, p0, Lcom/ss/texturerender/effect/EffectTexture;->format:I

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->sourceType:I

    return-void
.end method

.method public static getGLFilerType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/EffectTexture$1;->$SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :pswitch_0
    const/16 p0, 0x2700

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_1
    const/16 p0, 0x2702

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_2
    const/16 p0, 0x2701

    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_3
    const/16 p0, 0x2703

    .line 24
    .line 25
    return p0

    .line 26
    :pswitch_4
    const/16 p0, 0x2600

    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_5
    const/16 p0, 0x2601

    .line 30
    .line 31
    return p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getExtraEffectTexture()[Lcom/ss/texturerender/effect/EffectTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->extraEffectTextures:[Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->format:I

    .line 2
    .line 3
    return v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->hardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getInternalFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->internalFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->sourceType:I

    .line 2
    .line 3
    return v0
.end method

.method public getTexID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 2
    .line 3
    return v0
.end method

.method public getTexTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public giveBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/texturerender/effect/EffectTextureManager;->onTextureReturn(Lcom/ss/texturerender/effect/EffectTexture;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public isEqualTo(Lcom/ss/texturerender/effect/EffectTexture;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 5
    .line 6
    iget p1, p1, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_0
    return v0
.end method

.method public setExtraEffectTexture([Lcom/ss/texturerender/effect/EffectTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->extraEffectTextures:[Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    return-void
.end method

.method public setManager(Lcom/ss/texturerender/effect/EffectTextureManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 2
    .line 3
    return-void
.end method

.method public switchFilterType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;Lcom/ss/texturerender/effect/EffectTexture$FilterType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMinFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMagFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 6
    .line 7
    if-eq v0, p2, :cond_2

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMinFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/ss/texturerender/effect/EffectTexture;->mMagFilterType:Lcom/ss/texturerender/effect/EffectTexture$FilterType;

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 14
    .line 15
    iget v1, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 21
    .line 22
    const v1, 0x9100

    .line 23
    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/16 v1, 0x2801

    .line 28
    .line 29
    invoke-static {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getGLFilerType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 37
    .line 38
    const/16 v0, 0x2800

    .line 39
    .line 40
    invoke-static {p2}, Lcom/ss/texturerender/effect/EffectTexture;->getGLFilerType(Lcom/ss/texturerender/effect/EffectTexture$FilterType;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget p1, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[manager:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/texturerender/effect/EffectTexture;->manager:Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ","

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->texID:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->texTarget:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->width:I

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->height:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->internalFormat:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lcom/ss/texturerender/effect/EffectTexture;->format:I

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/ss/texturerender/effect/EffectTexture;->type:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "]"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
