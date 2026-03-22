.class public final Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final offset:J

.field private final parentData:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeable:Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->offset:J

    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 5
    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->parentData:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getOffset-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getParentData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->parentData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceable()Landroidx/compose/ui/layout/Placeable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    return-object v0
.end method
