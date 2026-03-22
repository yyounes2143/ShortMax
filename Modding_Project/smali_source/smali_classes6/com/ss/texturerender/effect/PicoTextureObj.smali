.class public Lcom/ss/texturerender/effect/PicoTextureObj;
.super Ljava/lang/Object;
.source "PicoTextureObj.java"


# static fields
.field public static final PICO_VR_TEX_USE_FOR_CROP_SR_SCREEN:I = 0x2

.field public static final PICO_VR_TEX_USE_FOR_FOV_SCREEN:I = 0x1

.field public static final PICO_VR_TEX_USE_FOR_PLANE_ONLINE_SCREEN:I = 0x3

.field public static final PICO_VR_TEX_USE_FOR_PLANE_SCREEN:I


# instance fields
.field private mHeight:I

.field private mUnityTexId:I

.field private mUseFor:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUnityTexId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mWidth:I

    .line 7
    .line 8
    iput p3, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mHeight:I

    .line 9
    .line 10
    iput p4, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUseFor:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnityTexId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUnityTexId:I

    .line 2
    .line 3
    return v0
.end method

.method public getUseFor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUseFor:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setUnityTexId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUnityTexId:I

    .line 2
    .line 3
    return-void
.end method

.method public setUseFor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mUseFor:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/PicoTextureObj;->mWidth:I

    .line 2
    .line 3
    return-void
.end method
