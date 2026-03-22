.class public final Landroidx/compose/ui/platform/LayerMatrixCache;
.super Ljava/lang/Object;
.source "LayerMatrixCache.android.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private androidMatrixCache:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getMatrix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inverseMatrixCache:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isDirty:Z

.field private isInverseDirty:Z

.field private isInverseValid:Z

.field private matrixCache:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previousAndroidMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "getMatrix"

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
    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final calculateInverseMatrix-bWbORWo(Ljava/lang/Object;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:[F

    .line 12
    .line 13
    :cond_0
    iget-boolean v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    .line 29
    .line 30
    :cond_1
    iget-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    :cond_2
    return-object v1
.end method

.method public final calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:[F

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->getMatrix:Lkotlin/jvm/functions/Function2;

    .line 30
    .line 31
    invoke-interface {v2, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->previousAndroidMatrix:Landroid/graphics/Matrix;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->androidMatrixCache:Landroid/graphics/Matrix;

    .line 48
    .line 49
    iput-object v1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->previousAndroidMatrix:Landroid/graphics/Matrix;

    .line 50
    .line 51
    :cond_4
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 53
    .line 54
    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    .line 5
    .line 6
    return-void
.end method
