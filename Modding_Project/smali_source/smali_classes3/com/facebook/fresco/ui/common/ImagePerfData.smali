.class public final Lcom/facebook/fresco/ui/common/ImagePerfData;
.super Ljava/lang/Object;
.source "ImagePerfData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ImagePerfData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/ui/common/ImagePerfData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNSET:J = -0x1L


# instance fields
.field private final callerContext:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callingClassNameOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentIdOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contextChainArrayOnVisible:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contextChainExtrasOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controllerFailureTimeMs:J

.field private final controllerFinalImageSetTimeMs:J

.field private final controllerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controllerSubmitTimeMs:J

.field private final densityDpiOnSuccess:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final emptyEventTimestampNs:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorCodeOnFailure:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorMessageOnFailure:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorStacktraceStringOnFailure:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorThrowable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageInfo:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageRequest:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageRequestEndTimeMs:J

.field private final imageRequestStartTimeMs:J

.field private final infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final instanceId:I

.field private final intermediateImageLoadTimeMs:J

.field private final intermediateImageSetTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invisibilityEventTimeMs:J

.field private final isPrefetch:Z

.field private final msSinceLastNavigationOnVisible:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final newIntermediateImageSetPointAvailable:Z

.field private final onScreenHeightPx:I

.field private final onScreenWidthPx:I

.field private final releasedEventTimestampNs:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rootContextNameOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startupStatusOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subSurfaceOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final surfaceOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final visibilityEventTimeMs:J

.field private final visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/ImagePerfData$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->Companion:Lcom/facebook/fresco/ui/common/ImagePerfData$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJJJJJLjava/lang/Long;Ljava/lang/Long;ZIILjava/lang/Throwable;Lcom/facebook/fresco/ui/common/VisibilityState;JJLcom/facebook/fresco/ui/common/DimensionsInfo;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .param p1    # Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Lcom/facebook/fresco/ui/common/VisibilityState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p30    # Lcom/facebook/fresco/ui/common/DimensionsInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p43    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/ui/common/ImageRenderingInfra;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "JJJJJJ",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZII",
            "Ljava/lang/Throwable;",
            "Lcom/facebook/fresco/ui/common/VisibilityState;",
            "JJ",
            "Lcom/facebook/fresco/ui/common/DimensionsInfo;",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p25

    move-object/from16 v4, p41

    const-string v5, "infra"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "visibilityState"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "intermediateImageSetTimes"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 3
    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerId:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->requestId:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequest:Ljava/lang/Object;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->callerContext:Ljava/lang/Object;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageInfo:Ljava/lang/Object;

    move-wide v5, p7

    .line 8
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerSubmitTimeMs:J

    move-wide/from16 v5, p9

    .line 9
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->intermediateImageLoadTimeMs:J

    move-wide/from16 v5, p11

    .line 10
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFinalImageSetTimeMs:J

    move-wide/from16 v5, p13

    .line 11
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFailureTimeMs:J

    move-wide/from16 v5, p15

    .line 12
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestStartTimeMs:J

    move-wide/from16 v5, p17

    .line 13
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestEndTimeMs:J

    move-object/from16 v1, p19

    .line 14
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->emptyEventTimestampNs:Ljava/lang/Long;

    move-object/from16 v1, p20

    .line 15
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->releasedEventTimestampNs:Ljava/lang/Long;

    move/from16 v1, p21

    .line 16
    iput-boolean v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->isPrefetch:Z

    move/from16 v1, p22

    .line 17
    iput v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenWidthPx:I

    move/from16 v1, p23

    .line 18
    iput v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenHeightPx:I

    move-object/from16 v1, p24

    .line 19
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorThrowable:Ljava/lang/Throwable;

    .line 20
    iput-object v3, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    move-wide/from16 v5, p26

    .line 21
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityEventTimeMs:J

    move-wide/from16 v5, p28

    .line 22
    iput-wide v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->invisibilityEventTimeMs:J

    move-object/from16 v1, p30

    .line 23
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    move-object/from16 v1, p31

    .line 24
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    move-object/from16 v1, p32

    .line 25
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->callingClassNameOnVisible:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 26
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->rootContextNameOnVisible:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 27
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contextChainArrayOnVisible:[Ljava/lang/String;

    move-object/from16 v1, p35

    .line 28
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contextChainExtrasOnVisible:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 29
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contentIdOnVisible:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 30
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->surfaceOnVisible:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 31
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->subSurfaceOnVisible:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 32
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->msSinceLastNavigationOnVisible:Ljava/lang/Long;

    move-object/from16 v1, p40

    .line 33
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->startupStatusOnVisible:Ljava/lang/String;

    .line 34
    iput-object v4, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->intermediateImageSetTimes:Ljava/util/List;

    move/from16 v1, p42

    .line 35
    iput-boolean v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->newIntermediateImageSetPointAvailable:Z

    move-object/from16 v1, p43

    .line 36
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorMessageOnFailure:Ljava/lang/String;

    move-object/from16 v1, p44

    .line 37
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorStacktraceStringOnFailure:Ljava/lang/String;

    move-object/from16 v1, p45

    .line 38
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorCodeOnFailure:Ljava/lang/Integer;

    move-object/from16 v1, p46

    .line 39
    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->densityDpiOnSuccess:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->instanceId:I

    return-void
.end method


# virtual methods
.method public final createDebugString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "rendering Infra"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "controller ID"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "request ID"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->requestId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "controller submit"

    .line 30
    .line 31
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerSubmitTimeMs:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "controller final image"

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFinalImageSetTimeMs:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "controller failure"

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFailureTimeMs:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "start time"

    .line 54
    .line 55
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestStartTimeMs:J

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "end time"

    .line 62
    .line 63
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestEndTimeMs:J

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "prefetch"

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->isPrefetch:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "caller context"

    .line 78
    .line 79
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->callerContext:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "image request"

    .line 86
    .line 87
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequest:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "image info"

    .line 94
    .line 95
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageInfo:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "on-screen width"

    .line 102
    .line 103
    iget v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenWidthPx:I

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "on-screen height"

    .line 110
    .line 111
    iget v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenHeightPx:I

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "visibility state"

    .line 118
    .line 119
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "visibility event"

    .line 126
    .line 127
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityEventTimeMs:J

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "invisibility event"

    .line 134
    .line 135
    iget-wide v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->invisibilityEventTimeMs:J

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2, v3}, Lk2/f$a;->b(Ljava/lang/String;J)Lk2/f$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "dimensions info"

    .line 142
    .line 143
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "extra data"

    .line 150
    .line 151
    iget-object v2, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v1, "toString(...)"

    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v0
.end method

.method public final getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->callerContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallingClassNameOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->callingClassNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentIdOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contentIdOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextChainArrayOnVisible()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contextChainArrayOnVisible:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextChainExtrasOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->contextChainExtrasOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getControllerFailureTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFailureTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getControllerFinalImageSetTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerFinalImageSetTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getControllerId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getControllerSubmitTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->controllerSubmitTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDensityDpiOnSuccess()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->densityDpiOnSuccess:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDimensionsInfo()Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->dimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEmptyEventTimestampNs()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->emptyEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorCodeOnFailure()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorCodeOnFailure:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorMessageOnFailure()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorMessageOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorStacktraceStringOnFailure()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorStacktraceStringOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->errorThrowable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtraData()Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->extraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFinalImageLoadTimeMs()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestEndTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestStartTimeMs:J

    .line 10
    .line 11
    cmp-long v6, v4, v2

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-long v2, v0, v4

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final getImageInfo()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageInfo:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequest:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageRequestEndTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestEndTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getImageRequestStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->imageRequestStartTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInfra()Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInstanceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->instanceId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIntermediateImageLoadTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->intermediateImageLoadTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIntermediateImageSetTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->intermediateImageSetTimes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInvisibilityEventTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->invisibilityEventTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMsSinceLastNavigationOnVisible()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->msSinceLastNavigationOnVisible:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNewIntermediateImageSetPointAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->newIntermediateImageSetPointAvailable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnScreenHeightPx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenHeightPx:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOnScreenWidthPx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->onScreenWidthPx:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReleasedEventTimestampNs()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->releasedEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRootContextNameOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->rootContextNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartupStatusOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->startupStatusOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubSurfaceOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->subSurfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSurfaceOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->surfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVisibilityEventTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityEventTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVisibilityState()Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->visibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isPrefetch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->isPrefetch:Z

    .line 2
    .line 3
    return v0
.end method
