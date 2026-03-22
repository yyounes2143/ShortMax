.class public interface abstract Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
.super Ljava/lang/Object;
.source "LazyListLayoutInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListLayoutInfo$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$getAfterContentPadding$jd(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getAfterContentPadding()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$getBeforeContentPadding$jd(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getBeforeContentPadding()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$getOrientation$jd(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$getReverseLayout$jd(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)Z
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getReverseLayout()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$getViewportSize-YbymL2g$jd(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)J
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getBeforeContentPadding()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getTotalItemsCount()I
.end method

.method public abstract getViewportEndOffset()I
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public abstract getViewportStartOffset()I
.end method

.method public abstract getVisibleItemsInfo()Ljava/util/List;
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
.end method
