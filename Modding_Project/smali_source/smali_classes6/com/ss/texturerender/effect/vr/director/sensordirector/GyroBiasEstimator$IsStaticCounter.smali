.class Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;
.super Ljava/lang/Object;
.source "GyroBiasEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsStaticCounter"
.end annotation


# instance fields
.field private consecutiveIsStatic:I

.field private final minStaticFrames:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->minStaticFrames:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method appendFrame(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method isRecentlyStatic()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/GyroBiasEstimator$IsStaticCounter;->minStaticFrames:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
