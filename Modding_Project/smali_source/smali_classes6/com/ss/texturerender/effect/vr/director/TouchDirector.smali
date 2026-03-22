.class public Lcom/ss/texturerender/effect/vr/director/TouchDirector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchDirector.java"

# interfaces
.implements Lcom/ss/texturerender/effect/vr/director/IDirector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;
    }
.end annotation


# instance fields
.field private mDeviceOriToScreenOri:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

.field private mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

.field private mDiffX:F

.field private mDiffY:F

.field private mDisplay:Landroid/view/Display;

.field private mRadius:F

.field private mRotationMatrix:[F

.field private mSensorEnabled:Z


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mSensorEnabled:Z

    .line 11
    .line 12
    sget-object v0, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->PORTRAIT:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOriToScreenOri:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDisplay:Landroid/view/Display;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getDiffX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 2
    .line 3
    return v0
.end method

.method public getDiffY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 2
    .line 3
    return v0
.end method

.method public getView([FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mRotationMatrix:[F

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    sub-int/2addr v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mRadius:F

    .line 2
    .line 3
    div-float/2addr p3, p1

    .line 4
    float-to-double p2, p3

    .line 5
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    div-double/2addr p2, v0

    .line 11
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p2, v2

    .line 17
    double-to-float p2, p2

    .line 18
    div-float/2addr p4, p1

    .line 19
    float-to-double p3, p4

    .line 20
    div-double/2addr p3, v0

    .line 21
    mul-double/2addr p3, v2

    .line 22
    double-to-float p1, p3

    .line 23
    iget-boolean p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mSensorEnabled:Z

    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    iget p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 29
    .line 30
    add-float/2addr p3, p1

    .line 31
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 32
    .line 33
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 34
    .line 35
    add-float/2addr p1, p2

    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 37
    .line 38
    return p4

    .line 39
    :cond_0
    sget-object p3, Lcom/ss/texturerender/effect/vr/director/TouchDirector$1;->$SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation:[I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOriToScreenOri:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    aget p3, p3, v0

    .line 48
    .line 49
    if-eq p3, p4, :cond_4

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    if-eq p3, v0, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    if-eq p3, v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-eq p3, v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 62
    .line 63
    sub-float/2addr p3, p2

    .line 64
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 65
    .line 66
    iget p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 67
    .line 68
    add-float/2addr p2, p1

    .line 69
    iput p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 73
    .line 74
    sub-float/2addr p3, p1

    .line 75
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 76
    .line 77
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 78
    .line 79
    sub-float/2addr p1, p2

    .line 80
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 84
    .line 85
    add-float/2addr p3, p2

    .line 86
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 87
    .line 88
    iget p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 89
    .line 90
    sub-float/2addr p2, p1

    .line 91
    iput p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 95
    .line 96
    add-float/2addr p3, p1

    .line 97
    iput p3, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 98
    .line 99
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 100
    .line 101
    add-float/2addr p1, p2

    .line 102
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 103
    .line 104
    :goto_0
    return p4
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffX:F

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDiffY:F

    .line 5
    .line 6
    return-void
.end method

.method public setParam(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mRadius:F

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mRotationMatrix:[F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateDeviceOrientation(IZ)V
    .locals 2

    .line 1
    iput-boolean p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mSensorEnabled:Z

    .line 2
    .line 3
    const/16 p2, 0x13b

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x168

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x2d

    .line 12
    .line 13
    if-ltz p1, :cond_2

    .line 14
    .line 15
    if-ge p1, v0, :cond_2

    .line 16
    .line 17
    :cond_1
    sget-object p1, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->PORTRAIT:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/16 v1, 0x87

    .line 23
    .line 24
    if-lt p1, v0, :cond_3

    .line 25
    .line 26
    if-ge p1, v1, :cond_3

    .line 27
    .line 28
    sget-object p1, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->LANDSCAPE_RIGHT:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/16 v0, 0xe1

    .line 34
    .line 35
    if-lt p1, v1, :cond_4

    .line 36
    .line 37
    if-ge p1, v0, :cond_4

    .line 38
    .line 39
    sget-object p1, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->UPSIDE_DOWN:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    if-lt p1, v0, :cond_5

    .line 45
    .line 46
    if-ge p1, p2, :cond_5

    .line 47
    .line 48
    sget-object p1, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->LANDSCAPE_LEFT:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 51
    .line 52
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDisplay:Landroid/view/Display;

    .line 53
    .line 54
    if-eqz p1, :cond_7

    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOrientation:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDisplay:Landroid/view/Display;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    sub-int/2addr p1, p2

    .line 69
    if-gez p1, :cond_6

    .line 70
    .line 71
    invoke-static {}, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->values()[Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    array-length p2, p2

    .line 76
    add-int/2addr p1, p2

    .line 77
    :cond_6
    invoke-static {}, Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;->values()[Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    aget-object p1, p2, p1

    .line 82
    .line 83
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->mDeviceOriToScreenOri:Lcom/ss/texturerender/effect/vr/director/TouchDirector$DeviceOrientation;

    .line 84
    .line 85
    :cond_7
    return-void
.end method
