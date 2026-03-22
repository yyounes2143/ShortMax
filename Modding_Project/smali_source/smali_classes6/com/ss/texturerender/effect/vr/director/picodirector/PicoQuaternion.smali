.class public Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;
.super Ljava/lang/Object;
.source "PicoQuaternion.java"


# static fields
.field private static mCameraForward:Lcom/ss/texturerender/math/Vector3d;

.field private static mFieldView:F

.field private static mSubIndexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mVRQuaternion:Lcom/ss/texturerender/math/Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mSubIndexArray:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCameraForward()Lcom/ss/texturerender/math/Vector3d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mCameraForward:Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getFieldView()F
    .locals 1

    .line 1
    sget v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mFieldView:F

    .line 2
    .line 3
    return v0
.end method

.method public static getSubIndexArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mSubIndexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getVRQuaternion()Lcom/ss/texturerender/math/Quaternion;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mVRQuaternion:Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    return-object v0
.end method

.method public static updateVRCameraForaward(FFFF)V
    .locals 8

    .line 1
    new-instance v7, Lcom/ss/texturerender/math/Vector3d;

    .line 2
    .line 3
    float-to-double v1, p0

    .line 4
    float-to-double v3, p1

    .line 5
    float-to-double v5, p2

    .line 6
    move-object v0, v7

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/ss/texturerender/math/Vector3d;-><init>(DDD)V

    .line 8
    .line 9
    .line 10
    sput-object v7, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mCameraForward:Lcom/ss/texturerender/math/Vector3d;

    .line 11
    .line 12
    sput p3, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mFieldView:F

    .line 13
    .line 14
    return-void
.end method

.method public static updateVRQuaternion(FFFFI)V
    .locals 10

    .line 1
    new-instance v9, Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    float-to-double v1, p0

    .line 4
    float-to-double v3, p1

    .line 5
    const/4 p0, 0x1

    .line 6
    if-ne p4, p0, :cond_0

    .line 7
    .line 8
    float-to-double p0, p2

    .line 9
    :goto_0
    move-wide v5, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    neg-float p0, p2

    .line 12
    float-to-double p0, p0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    float-to-double v7, p3

    .line 15
    move-object v0, v9

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/ss/texturerender/math/Quaternion;-><init>(DDDD)V

    .line 17
    .line 18
    .line 19
    sput-object v9, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mVRQuaternion:Lcom/ss/texturerender/math/Quaternion;

    .line 20
    .line 21
    return-void
.end method

.method public static updateVRSubIndex([II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mSubIndexArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->mSubIndexArray:Ljava/util/ArrayList;

    .line 10
    .line 11
    aget v2, p0, v0

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
