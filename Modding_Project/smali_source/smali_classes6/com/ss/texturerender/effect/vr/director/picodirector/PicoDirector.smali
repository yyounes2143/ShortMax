.class public Lcom/ss/texturerender/effect/vr/director/picodirector/PicoDirector;
.super Ljava/lang/Object;
.source "PicoDirector.java"

# interfaces
.implements Lcom/ss/texturerender/effect/vr/director/IDirector;


# instance fields
.field private mDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoDirector;->mDisplay:Landroid/view/Display;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getView([FI)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->getVRQuaternion()Lcom/ss/texturerender/math/Quaternion;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoQuaternion;->getVRQuaternion()Lcom/ss/texturerender/math/Quaternion;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Lcom/ss/texturerender/math/Matrix3x3d;->rotationMatrix3x3(Lcom/ss/texturerender/math/Quaternion;)Lcom/ss/texturerender/math/Matrix3x3d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2, p1}, Lcom/ss/texturerender/math/Matrix3x3d;->matrixToColumnArray(Lcom/ss/texturerender/math/Matrix3x3d;[F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public setParam(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method
