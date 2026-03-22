.class public final Lcom/facebook/fresco/ui/common/ImagePerfState;
.super Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;
.source "ImagePerfState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callerContext:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private controllerFailureTimeMs:J

.field private controllerFinalImageSetTimeMs:J

.field private controllerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private controllerIntermediateImageSetTimeMs:J

.field private controllerSubmitTimeMs:J

.field private dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorThrowable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageInfo:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageLoadStatus:Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageRequest:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageRequestEndTimeMs:J

.field private imageRequestStartTimeMs:J

.field private invisibilityEventTimeMs:J

.field private isPrefetch:Z

.field private onScreenHeightPx:I

.field private onScreenWidthPx:I

.field private requestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private visibilityEventTimeMs:J

.field private visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "infra"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;-><init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerSubmitTimeMs:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerIntermediateImageSetTimeMs:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFinalImageSetTimeMs:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFailureTimeMs:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestStartTimeMs:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestEndTimeMs:J

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenWidthPx:I

    .line 25
    .line 26
    iput p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenHeightPx:I

    .line 27
    .line 28
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageLoadStatus:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 31
    .line 32
    sget-object p1, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityEventTimeMs:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->invisibilityEventTimeMs:J

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->callerContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDimensionsInfo()Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtraData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->_extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageLoadStatus()Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageLoadStatus:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVisibilityEventTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityEventTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->requestId:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequest:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->callerContext:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageInfo:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->isPrefetch:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenWidthPx:I

    .line 15
    .line 16
    iput v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenHeightPx:I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->errorThrowable:Ljava/lang/Throwable;

    .line 19
    .line 20
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageLoadStatus:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 23
    .line 24
    sget-object v1, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->_extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->resetPointsTimestamps()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->resetLoggingState$ui_common_release()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final resetPointsTimestamps()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestStartTimeMs:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestEndTimeMs:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerSubmitTimeMs:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFinalImageSetTimeMs:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFailureTimeMs:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityEventTimeMs:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->invisibilityEventTimeMs:J

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getIntermediateImageSetTimes()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->setNewIntermediateImageSetPointAvailable(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->setEmptyEventTimestampNs(Ljava/lang/Long;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->setReleasedEventTimestampNs(Ljava/lang/Long;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setCallerContext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->callerContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerFailureTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFailureTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerFinalImageSetTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFinalImageSetTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerIntermediateImageSetTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerIntermediateImageSetTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setControllerSubmitTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerSubmitTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDimensionsInfo(Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/ui/common/DimensionsInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->errorThrowable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->_extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageInfo(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageInfo:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/ui/common/ImageLoadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageLoadStatus:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 7
    .line 8
    return-void
.end method

.method public final setImageRequest(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequest:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageRequestEndTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestEndTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setImageRequestStartTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestStartTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setInvisibilityEventTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->invisibilityEventTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOnScreenHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenHeightPx:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOnScreenWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenWidthPx:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPrefetch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->isPrefetch:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisibilityEventTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityEventTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 9
    .line 10
    return-void
.end method

.method public final snapshot()Lcom/facebook/fresco/ui/common/ImagePerfData;
    .locals 51
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v48, Lcom/facebook/fresco/ui/common/ImagePerfData;

    .line 4
    .line 5
    move-object/from16 v1, v48

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getInfra()Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->requestId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequest:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v6, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->callerContext:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v7, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageInfo:Ljava/lang/Object;

    .line 20
    .line 21
    iget-wide v8, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerSubmitTimeMs:J

    .line 22
    .line 23
    iget-wide v10, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerIntermediateImageSetTimeMs:J

    .line 24
    .line 25
    iget-wide v12, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFinalImageSetTimeMs:J

    .line 26
    .line 27
    iget-wide v14, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->controllerFailureTimeMs:J

    .line 28
    .line 29
    move-object/from16 v49, v1

    .line 30
    .line 31
    move-object/from16 v50, v2

    .line 32
    .line 33
    iget-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestStartTimeMs:J

    .line 34
    .line 35
    move-wide/from16 v16, v1

    .line 36
    .line 37
    iget-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->imageRequestEndTimeMs:J

    .line 38
    .line 39
    move-wide/from16 v18, v1

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getEmptyEventTimestampNs()Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v20

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getReleasedEventTimestampNs()Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v21

    .line 49
    iget-boolean v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->isPrefetch:Z

    .line 50
    .line 51
    move/from16 v22, v1

    .line 52
    .line 53
    iget v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenWidthPx:I

    .line 54
    .line 55
    move/from16 v23, v1

    .line 56
    .line 57
    iget v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->onScreenHeightPx:I

    .line 58
    .line 59
    move/from16 v24, v1

    .line 60
    .line 61
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->errorThrowable:Ljava/lang/Throwable;

    .line 62
    .line 63
    move-object/from16 v25, v1

    .line 64
    .line 65
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 66
    .line 67
    move-object/from16 v26, v1

    .line 68
    .line 69
    iget-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->visibilityEventTimeMs:J

    .line 70
    .line 71
    move-wide/from16 v27, v1

    .line 72
    .line 73
    iget-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->invisibilityEventTimeMs:J

    .line 74
    .line 75
    move-wide/from16 v29, v1

    .line 76
    .line 77
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 78
    .line 79
    move-object/from16 v31, v1

    .line 80
    .line 81
    iget-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfState;->_extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 82
    .line 83
    move-object/from16 v32, v1

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getCallingClassNameOnVisible()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v33

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getRootContextNameOnVisible()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v34

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getContextChainArrayOnVisible()[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v35

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getContextChainExtrasOnVisible()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v36

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getContentIdOnVisible()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v37

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getSurfaceOnVisible()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v38

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getSubSurfaceOnVisible()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v39

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getMsSinceLastNavigationOnVisible()Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v40

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getStartupStatusOnVisible()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v41

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getIntermediateImageSetTimes()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v42

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getNewIntermediateImageSetPointAvailable()Z

    .line 132
    .line 133
    .line 134
    move-result v43

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getErrorMessageOnFailure()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v44

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getErrorStacktraceStringOnFailure()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v45

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getErrorCodeOnFailure()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v46

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->getDensityDpiOnSuccess()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v47

    .line 151
    move-object/from16 v1, v49

    .line 152
    .line 153
    move-object/from16 v2, v50

    .line 154
    .line 155
    invoke-direct/range {v1 .. v47}, Lcom/facebook/fresco/ui/common/ImagePerfData;-><init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJJJJJLjava/lang/Long;Ljava/lang/Long;ZIILjava/lang/Throwable;Lcom/facebook/fresco/ui/common/VisibilityState;JJLcom/facebook/fresco/ui/common/DimensionsInfo;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 156
    .line 157
    .line 158
    return-object v48
.end method
