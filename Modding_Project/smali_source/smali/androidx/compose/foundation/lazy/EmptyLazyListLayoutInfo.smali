.class final Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final afterContentPadding:I

.field private static final beforeContentPadding:I

.field private static final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final reverseLayout:Z

.field private static final totalItemsCount:I

.field private static final viewportEndOffset:I

.field private static final viewportSize:J

.field private static final viewportStartOffset:I

.field private static final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    .line 7
    .line 8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    .line 21
    .line 22
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->afterContentPadding:I

    .line 2
    .line 3
    return v0
.end method

.method public getBeforeContentPadding()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->beforeContentPadding:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->reverseLayout:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->totalItemsCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewportEndOffset()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportEndOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->viewportStartOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
