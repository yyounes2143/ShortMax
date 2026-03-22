.class public Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;
.super Ljava/lang/Object;
.source "ImagePerfLoggingState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private callingClassNameOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentIdOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contextChainArrayOnVisible:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contextChainExtrasOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private densityDpiOnSuccess:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emptyEventTimestampNs:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorCodeOnFailure:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMessageOnFailure:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorStacktraceStringOnFailure:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field private msSinceLastNavigationOnVisible:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newIntermediateImageSetPointAvailable:Z

.field private releasedEventTimestampNs:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rootContextNameOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startupStatusOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subSurfaceOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private surfaceOnVisible:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->intermediateImageSetTimes:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCallingClassNameOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->callingClassNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentIdOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contentIdOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextChainArrayOnVisible()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainArrayOnVisible:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextChainExtrasOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainExtrasOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDensityDpiOnSuccess()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->densityDpiOnSuccess:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEmptyEventTimestampNs()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->emptyEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorCodeOnFailure()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorCodeOnFailure:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorMessageOnFailure()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorMessageOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorStacktraceStringOnFailure()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorStacktraceStringOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInfra()Lcom/facebook/fresco/ui/common/ImageRenderingInfra;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->infra:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->intermediateImageSetTimes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMsSinceLastNavigationOnVisible()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->msSinceLastNavigationOnVisible:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNewIntermediateImageSetPointAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->newIntermediateImageSetPointAvailable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getReleasedEventTimestampNs()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->releasedEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRootContextNameOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->rootContextNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartupStatusOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->startupStatusOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubSurfaceOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->subSurfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSurfaceOnVisible()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->surfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final resetLoggingState$ui_common_release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->intermediateImageSetTimes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->newIntermediateImageSetPointAvailable:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->emptyEventTimestampNs:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->releasedEventTimestampNs:Ljava/lang/Long;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->callingClassNameOnVisible:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->rootContextNameOnVisible:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainArrayOnVisible:[Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainExtrasOnVisible:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contentIdOnVisible:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->surfaceOnVisible:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->subSurfaceOnVisible:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->msSinceLastNavigationOnVisible:Ljava/lang/Long;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->startupStatusOnVisible:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorMessageOnFailure:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorStacktraceStringOnFailure:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorCodeOnFailure:Ljava/lang/Integer;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->densityDpiOnSuccess:Ljava/lang/Integer;

    .line 39
    .line 40
    return-void
.end method

.method public final setCallingClassNameOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->callingClassNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentIdOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contentIdOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContextChainArrayOnVisible([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainArrayOnVisible:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContextChainExtrasOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->contextChainExtrasOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDensityDpiOnSuccess(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->densityDpiOnSuccess:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setEmptyEventTimestampNs(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->emptyEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorCodeOnFailure(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorCodeOnFailure:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorMessageOnFailure(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorMessageOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorStacktraceStringOnFailure(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->errorStacktraceStringOnFailure:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMsSinceLastNavigationOnVisible(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->msSinceLastNavigationOnVisible:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setNewIntermediateImageSetPointAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->newIntermediateImageSetPointAvailable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReleasedEventTimestampNs(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->releasedEventTimestampNs:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setRootContextNameOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->rootContextNameOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartupStatusOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->startupStatusOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubSurfaceOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->subSurfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSurfaceOnVisible(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfLoggingState;->surfaceOnVisible:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
