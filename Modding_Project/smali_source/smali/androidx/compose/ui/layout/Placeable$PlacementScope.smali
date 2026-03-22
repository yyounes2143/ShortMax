.class public abstract Landroidx/compose/ui/layout/Placeable$PlacementScope;
.super Ljava/lang/Object;
.source "Placeable.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/Placeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlacementScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static parentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getParentLayoutDirection$cp()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getParentWidth$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setParentWidth$cp(I)V
    .locals 0

    .line 1
    sput p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->parentWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x4

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: place"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: place-70tqf50"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x4

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic placeRelative-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelative-70tqf50"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_2

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    and-int/lit8 p4, p6, 0x8

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static synthetic placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_2

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    and-int/lit8 p4, p6, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move-wide v2, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public static synthetic placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_2

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    and-int/lit8 p4, p6, 0x8

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move v3, p3

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static synthetic placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_2

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    :cond_0
    move v4, p4

    .line 9
    and-int/lit8 p4, p6, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->access$getDefaultLayerBlock$p()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    :cond_1
    move-object v5, p5

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p1

    .line 20
    move-wide v2, p2

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method


# virtual methods
.method protected abstract getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract getParentWidth()I
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v2, v3

    .line 23
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    add-int/2addr p2, p3

    .line 32
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final place-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$place"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    add-int/2addr p2, p3

    .line 28
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 29
    .line 30
    .line 31
    move-result-wide p2

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, p2, p3, p4, v0}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final placeApparentToRealOffset-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$placeApparentToRealOffset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    add-int/2addr p2, p3

    .line 28
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 29
    .line 30
    .line 31
    move-result-wide p2

    .line 32
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final placeAutoMirrored-aW-9-wM$ui_release(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$placeAutoMirrored"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 44
    .line 45
    .line 46
    move-result-wide p2

    .line 47
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/2addr v2, v3

    .line 60
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    add-int/2addr p2, p3

    .line 69
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    add-int/2addr v2, v3

    .line 90
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    add-int/2addr p2, p3

    .line 99
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 100
    .line 101
    .line 102
    move-result-wide p2

    .line 103
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public final placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide p2

    .line 52
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    add-int/2addr v3, v4

    .line 65
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    add-int/2addr p2, p3

    .line 74
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 75
    .line 76
    .line 77
    move-result-wide p2

    .line 78
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    add-int/2addr v3, v4

    .line 95
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    add-int/2addr p2, p3

    .line 104
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 105
    .line 106
    .line 107
    move-result-wide p2

    .line 108
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final placeRelative-70tqf50(Landroidx/compose/ui/layout/Placeable;JF)V
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$placeRelative"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-int/2addr v0, v1

    .line 40
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 45
    .line 46
    .line 47
    move-result-wide p2

    .line 48
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr v3, v4

    .line 61
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    add-int/2addr p2, p3

    .line 70
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 71
    .line 72
    .line 73
    move-result-wide p2

    .line 74
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    add-int/2addr v3, v4

    .line 91
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    add-int/2addr p2, p3

    .line 100
    invoke-static {v3, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 101
    .line 102
    .line 103
    move-result-wide p2

    .line 104
    invoke-static {p1, p2, p3, p4, v2}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method public final placeRelativeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layerBlock"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v0, v1

    .line 48
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 53
    .line 54
    .line 55
    move-result-wide p2

    .line 56
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/2addr v2, v3

    .line 69
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    add-int/2addr p2, p3

    .line 78
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    add-int/2addr v2, v3

    .line 99
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    add-int/2addr p2, p3

    .line 108
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 109
    .line 110
    .line 111
    move-result-wide p2

    .line 112
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void
.end method

.method public final placeRelativeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$placeRelativeWithLayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layerBlock"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/layout/Placeable;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {v0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide p2

    .line 52
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/2addr v2, v3

    .line 65
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    add-int/2addr p2, p3

    .line 74
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 75
    .line 76
    .line 77
    move-result-wide p2

    .line 78
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    add-int/2addr v2, v3

    .line 95
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    add-int/2addr p2, p3

    .line 104
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 105
    .line 106
    .line 107
    move-result-wide p2

    .line 108
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final placeWithLayer(Landroidx/compose/ui/layout/Placeable;IIFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "IIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layerBlock"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    add-int/2addr p2, p3

    .line 37
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide p2

    .line 41
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final placeWithLayer-aW-9-wM(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable;",
            "JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "$this$placeWithLayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layerBlock"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable;->access$getApparentToRealOffset-nOcc-ac(Landroidx/compose/ui/layout/Placeable;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    add-int/2addr p2, p3

    .line 33
    invoke-static {v2, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 34
    .line 35
    .line 36
    move-result-wide p2

    .line 37
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/layout/Placeable;->access$placeAt-f8xVGno(Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
