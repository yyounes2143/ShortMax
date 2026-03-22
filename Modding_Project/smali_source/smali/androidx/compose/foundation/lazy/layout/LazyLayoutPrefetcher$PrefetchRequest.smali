.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetcher.android.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrefetchRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private canceled:Z

.field private final constraints:J

.field private final index:I

.field private measured:Z

.field private precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->index:I

    .line 4
    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->constraints:J

    return-void
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final getCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getConstraints-msEJaDk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->constraints:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMeasured()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->measured:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPrecomposeHandle()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCanceled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMeasured(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->measured:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPrecomposeHandle(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 2
    .line 3
    return-void
.end method
