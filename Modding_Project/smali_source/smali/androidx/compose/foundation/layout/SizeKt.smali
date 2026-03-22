.class public final Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;

    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 83
    .line 84
    return-void
.end method

.method private static final createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillHeightModifier$1;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillHeightModifier$1;-><init>(F)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static final createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillSizeModifier$1;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillSizeModifier$1;-><init>(F)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static final createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillWidthModifier$1;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillWidthModifier$1;-><init>(F)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static final createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$1;

    .line 6
    .line 7
    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 8
    .line 9
    .line 10
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$2;

    .line 11
    .line 12
    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$2;-><init>(Landroidx/compose/ui/Alignment$Vertical;Z)V

    .line 13
    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move v2, p1

    .line 17
    move-object v4, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method

.method private static final createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$1;

    .line 6
    .line 7
    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$1;-><init>(Landroidx/compose/ui/Alignment;)V

    .line 8
    .line 9
    .line 10
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$2;

    .line 11
    .line 12
    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$2;-><init>(Landroidx/compose/ui/Alignment;Z)V

    .line 13
    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move v2, p1

    .line 17
    move-object v4, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method

.method private static final createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$1;

    .line 6
    .line 7
    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$1;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    .line 8
    .line 9
    .line 10
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$2;

    .line 11
    .line 12
    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$2;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Z)V

    .line 13
    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move v2, p1

    .line 17
    move-object v4, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method

.method public static final defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$defaultMinSize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$defaultMinSize-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$defaultMinSize-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static synthetic defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static synthetic fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static synthetic fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static synthetic fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$height"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x5

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    move-object v1, v0

    .line 32
    move v3, p1

    .line 33
    move v5, p1

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$heightIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x5

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    move-object v1, v0

    .line 32
    move v3, p1

    .line 33
    move v5, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static synthetic heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final requiredHeight-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredHeight"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$requiredHeight-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$requiredHeight-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x5

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v1, v0

    .line 32
    move v3, p1

    .line 33
    move v5, p1

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final requiredHeightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredHeightIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$requiredHeightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$requiredHeightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x5

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v1, v0

    .line 32
    move v3, p1

    .line 33
    move v5, p2

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static synthetic requiredHeightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredSize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSize-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$requiredSize-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p1

    .line 31
    move v4, p1

    .line 32
    move v5, p1

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final requiredSize-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredSize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredSize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSize-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$requiredSize-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p1

    .line 32
    move v5, p2

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final requiredSizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredSizeIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p3

    .line 32
    move v5, p4

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static synthetic requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 12
    .line 13
    if-eqz p6, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 22
    .line 23
    if-eqz p6, :cond_2

    .line 24
    .line 25
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 26
    .line 27
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 36
    .line 37
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final requiredWidth-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredWidth"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$requiredWidth-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$requiredWidth-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/16 v8, 0xa

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move v2, p1

    .line 34
    move v4, p1

    .line 35
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static final requiredWidthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$requiredWidthIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$requiredWidthIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$requiredWidthIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/16 v8, 0xa

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move v2, p1

    .line 34
    move v4, p2

    .line 35
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static synthetic requiredWidthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->requiredWidthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$size"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p1

    .line 31
    move v4, p1

    .line 32
    move v5, p1

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$size"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$size"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v7, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p1

    .line 32
    move v5, p2

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$sizeIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/4 v8, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    move-object v1, v0

    .line 29
    move v2, p1

    .line 30
    move v3, p2

    .line 31
    move v4, p3

    .line 32
    move v5, p4

    .line 33
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static synthetic sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 12
    .line 13
    if-eqz p6, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 22
    .line 23
    if-eqz p6, :cond_2

    .line 24
    .line 25
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 26
    .line 27
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 36
    .line 37
    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$width"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/16 v8, 0xa

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    move-object v1, v0

    .line 33
    move v2, p1

    .line 34
    move v4, p1

    .line 35
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static final widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$widthIn"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v7, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/16 v8, 0xa

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    move-object v1, v0

    .line 33
    move v2, p1

    .line 34
    move v4, p2

    .line 35
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static synthetic widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final wrapContentHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "align"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static synthetic wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final wrapContentSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "align"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static synthetic wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final wrapContentWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "align"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static synthetic wrapContentWidth$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
