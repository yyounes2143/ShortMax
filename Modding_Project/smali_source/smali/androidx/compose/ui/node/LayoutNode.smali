.class public final Landroidx/compose/ui/node/LayoutNode;
.super Ljava/lang/Object;
.source "LayoutNode.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/Remeasurement;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/layout/LayoutInfo;
.implements Landroidx/compose/ui/node/ComposeUiNode;
.implements Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;,
        Landroidx/compose/ui/node/LayoutNode$Companion;,
        Landroidx/compose/ui/node/LayoutNode$LayoutState;,
        Landroidx/compose/ui/node/LayoutNode$UsageByParent;,
        Landroidx/compose/ui/node/LayoutNode$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/LayoutNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Constructor:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ModifierLocalNothing:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NotPlacedPlaceOrder:I = 0x7fffffff

.field private static final SentinelModifierLocalProvider:Landroidx/compose/ui/node/LayoutNode$Companion$SentinelModifierLocalProvider$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ZComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _foldedChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _foldedParent:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _innerLayerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private canMultiMeasure:Z

.field private density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private depth:I

.field private ignoreRemeasureRequests:Z

.field private innerLayerWrapperIsDirty:Z

.field private final innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPlaced:Z

.field private final isVirtual:Z

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutPending:Z

.field private layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private measurePending:Z

.field private measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measureScope:Landroidx/compose/ui/layout/MeasureScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modifierLocalsTail:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private needsOnPositionedDispatch:Z

.field private nextChildPlaceOrder:I

.field private onAttach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onDetach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private owner:Landroidx/compose/ui/node/Owner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placeOrder:I

.field private previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousPlaceOrder:I

.field private relayoutWithoutParentInProgress:Z

.field private subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unfoldedVirtualChildrenListDirty:Z

.field private viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private virtualChildrenCount:I

.field private wrapperCache:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifiedLayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private zIndex:F

.field private zSortedChildrenInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->Constructor:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ModifierLocalNothing:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$SentinelModifierLocalProvider$1;

    .line 36
    .line 37
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$SentinelModifierLocalProvider$1;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->SentinelModifierLocalProvider:Landroidx/compose/ui/node/LayoutNode$Companion$SentinelModifierLocalProvider$1;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 4
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 5
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 7
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, v0, [Landroidx/compose/ui/node/ModifiedLayoutNode;

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 8
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v0, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 12
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 13
    new-instance v0, Landroidx/compose/ui/node/IntrinsicsPolicy;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/IntrinsicsPolicy;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/DensityKt;->Density$default(FFILjava/lang/Object;)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 15
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$measureScope$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LayoutNode$measureScope$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measureScope:Landroidx/compose/ui/layout/MeasureScope;

    .line 16
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 17
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 18
    new-instance v0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    const v0, 0x7fffffff

    .line 19
    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 20
    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousPlaceOrder:I

    .line 21
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 22
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 23
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 24
    new-instance v0, Landroidx/compose/ui/node/InnerPlaceable;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/InnerPlaceable;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 25
    new-instance v1, Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 26
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerWrapperIsDirty:Z

    .line 27
    new-instance p1, Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->SentinelModifierLocalProvider:Landroidx/compose/ui/node/LayoutNode$Companion$SentinelModifierLocalProvider$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 28
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsTail:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 29
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifier:Landroidx/compose/ui/Modifier;

    .line 30
    new-instance p1, Landroidx/compose/ui/node/a;

    invoke-direct {p1}, Landroidx/compose/ui/node/a;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;-><init>(Z)V

    return-void
.end method

.method private static final ZComparator$lambda-52(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->zIndex:F

    .line 2
    .line 3
    iget v1, p1, Landroidx/compose/ui/node/LayoutNode;->zIndex:F

    .line 4
    .line 5
    cmpg-float v2, v0, v1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 10
    .line 11
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    return p0
.end method

.method public static synthetic a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->ZComparator$lambda-52(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$addModifierLocalConsumer(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->addModifierLocalConsumer(Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$addModifierLocalProvider(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->addModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$findFocusPropertiesModifier(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->findFocusPropertiesModifier(Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getConstructor$cp()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->Constructor:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDummyViewConfiguration$cp()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getModifierLocalNothing$cp()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->ModifierLocalNothing:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOuterMeasurablePlaceable$p(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/OuterMeasurablePlaceable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPreviousPlaceOrder$p(Landroidx/compose/ui/node/LayoutNode;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->previousPlaceOrder:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getWrapperCache$p(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$markSubtreeAsNotPlaced(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->markSubtreeAsNotPlaced()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onZSortedChildrenInvalidated(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$reuseLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)Landroidx/compose/ui/node/ModifiedLayoutNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->reuseLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNextChildPlaceOrder$p(Landroidx/compose/ui/node/LayoutNode;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->nextChildPlaceOrder:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPlaceOrder$p(Landroidx/compose/ui/node/LayoutNode;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPreviousPlaceOrder$p(Landroidx/compose/ui/node/LayoutNode;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->previousPlaceOrder:I

    .line 2
    .line 3
    return-void
.end method

.method private final addModifierLocalConsumer(Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
            "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :cond_0
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-ne v3, p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    if-lt v2, v0, :cond_0

    .line 26
    .line 27
    :cond_2
    const/4 v2, -0x1

    .line 28
    :goto_0
    if-gez v2, :cond_3

    .line 29
    .line 30
    new-instance p3, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 31
    .line 32
    invoke-direct {p3, p2, p1}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;-><init>(Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/ui/modifier/ModifierLocalConsumer;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    move-object p3, p1

    .line 41
    check-cast p3, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->setProvider(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getConsumers()Landroidx/compose/runtime/collection/MutableVector;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final addModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;",
            "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
            ")",
            "Landroidx/compose/ui/node/ModifierLocalProviderEntity;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getPrev()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setNext(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getPrev()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setPrev(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setNext(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setPrev(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-virtual {p2, v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setNext(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setPrev(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method private final alignmentLinesQueriedByModifier()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->setUsedByModifierMeasurement$ui_release(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getDirty$ui_release()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->markLayoutPending$ui_release()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->setUsedByModifierLayout$ui_release(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private final clearSubtreeIntrinsicsUsage()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    aget-object v3, v0, v2

    .line 25
    .line 26
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    invoke-direct {v3}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage()V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    if-lt v2, v1, :cond_0

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method private final clearSubtreePlacementIntrinsicsUsage()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    aget-object v3, v0, v2

    .line 25
    .line 26
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 31
    .line 32
    if-ne v4, v5, :cond_1

    .line 33
    .line 34
    invoke-direct {v3}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    if-lt v2, v1, :cond_0

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method private final copyWrappersToCache()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private final debugTreeToString(I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    const-string v3, "  "

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "|-"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-lez v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    move v4, v1

    .line 50
    :cond_1
    aget-object v5, v2, v4

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 53
    .line 54
    add-int/lit8 v6, p1, 0x1

    .line 55
    .line 56
    invoke-direct {v5, v6}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    if-lt v4, v3, :cond_1

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "tree.toString()"

    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    add-int/lit8 p1, p1, -0x1

    .line 83
    .line 84
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 89
    .line 90
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-object v0
.end method

.method static synthetic debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final findFocusPropertiesModifier(Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusOrderModifier;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;)",
            "Landroidx/compose/ui/focus/FocusPropertiesModifier;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    aget-object v3, p2, v2

    .line 14
    .line 15
    move-object v4, v3

    .line 16
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    instance-of v5, v5, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusPropertiesModifier;->getFocusPropertiesScope()Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    instance-of v5, v5, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusPropertiesModifier;->getFocusPropertiesScope()Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;->getModifier()Landroidx/compose/ui/focus/FocusOrderModifier;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-ne v4, p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    if-lt v2, v0, :cond_0

    .line 62
    .line 63
    :cond_2
    move-object v3, v1

    .line 64
    :goto_0
    check-cast v3, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->getModifier()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object p1, v1

    .line 74
    :goto_1
    instance-of p2, p1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    move-object v1, p1

    .line 79
    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 80
    .line 81
    :cond_4
    return-object v1
.end method

.method private final forEachDelegate(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/ModifiedLayoutNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final forEachDelegateIncludingInner(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private final forEachModifierLocalProvider(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic getCanMultiMeasure$ui_release$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method private final getInnerLayerWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerWrapperIsDirty:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_3

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object v3, v2

    .line 32
    :goto_1
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v1, "Required value was null."

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static synthetic getZSortedChildren$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic get_children$ui_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final hasNewPositioningCallback()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifier()Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    new-instance v3, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/Modifier;->foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public static synthetic hitTest-M_7yMNQ$ui_release$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    and-int/lit8 p4, p6, 0x8

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x1

    .line 12
    :cond_1
    move v5, p5

    .line 13
    move-object v0, p0

    .line 14
    move-wide v1, p1

    .line 15
    move-object v3, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->hitTest-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic hitTestSemantics-M_7yMNQ$ui_release$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p4

    .line 9
    :goto_0
    and-int/lit8 p4, p6, 0x8

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-wide v2, p1

    .line 18
    move-object v4, p3

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->hitTestSemantics-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final invalidateUnfoldedVirtualChildren()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 20
    .line 21
    :cond_2
    :goto_0
    return-void
.end method

.method private final markNodeAndSubtreeAsPlaced()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isPlaced:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLastLayerDrawingWasSkipped$ui_release()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    :cond_2
    aget-object v3, v0, v2

    .line 52
    .line 53
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    iget v4, v3, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 56
    .line 57
    const v5, 0x7fffffff

    .line 58
    .line 59
    .line 60
    if-eq v4, v5, :cond_3

    .line 61
    .line 62
    invoke-direct {v3}, Landroidx/compose/ui/node/LayoutNode;->markNodeAndSubtreeAsPlaced()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v3}, Landroidx/compose/ui/node/LayoutNode;->rescheduleRemeasureOrRelayout(Landroidx/compose/ui/node/LayoutNode;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    if-lt v2, v1, :cond_2

    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method private final markReusedModifiers(Landroidx/compose/ui/Modifier;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_0
    aget-object v4, v0, v3

    .line 16
    .line 17
    check-cast v4, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 18
    .line 19
    invoke-virtual {v4, v2}, Landroidx/compose/ui/node/ModifiedLayoutNode;->setToBeReusedForSameModifier(Z)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    if-lt v3, v1, :cond_0

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/Modifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final markSubtreeAsNotPlaced()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isPlaced:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    aget-object v3, v1, v0

    .line 25
    .line 26
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    invoke-direct {v3}, Landroidx/compose/ui/node/LayoutNode;->markSubtreeAsNotPlaced()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    if-lt v0, v2, :cond_0

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private final onBeforeLayoutChildren()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :cond_0
    aget-object v4, v0, v3

    .line 18
    .line 19
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNode;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 26
    .line 27
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 28
    .line 29
    if-ne v5, v6, :cond_1

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-static {v4, v5, v6, v5}, Landroidx/compose/ui/node/LayoutNode;->remeasure-_Sx5XlM$ui_release$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-static {p0, v2, v6, v5}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    if-lt v3, v1, :cond_0

    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private final onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->detach$ui_release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v2, 0x0

    .line 41
    :cond_1
    aget-object v3, p1, v2

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    if-lt v2, v1, :cond_1

    .line 55
    .line 56
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final onDensityOrLayoutDirectionChanged()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui_release()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final onZSortedChildrenInvalidated()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private final recreateUnfoldedChildrenIfDirty()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    new-array v2, v2, [Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    aget-object v4, v2, v0

    .line 39
    .line 40
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    if-lt v0, v3, :cond_1

    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public static synthetic remeasure-_Sx5XlM$ui_release$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getLastConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->remeasure-_Sx5XlM$ui_release(Landroidx/compose/ui/unit/Constraints;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static synthetic requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final rescheduleRemeasureOrRelayout(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Unexpected state "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method private final reuseLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)Landroidx/compose/ui/node/ModifiedLayoutNode;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-lez v2, :cond_3

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    aget-object v4, v0, v2

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getToBeReusedForSameModifier()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getModifier()Landroidx/compose/ui/layout/LayoutModifier;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-ne v4, p2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 44
    .line 45
    if-gez v2, :cond_1

    .line 46
    .line 47
    :cond_3
    move v2, v3

    .line 48
    :goto_0
    if-gez v2, :cond_7

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-lez v2, :cond_6

    .line 57
    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_4
    aget-object v4, v0, v2

    .line 65
    .line 66
    check-cast v4, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getToBeReusedForSameModifier()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_5

    .line 73
    .line 74
    move v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 77
    .line 78
    if-gez v2, :cond_4

    .line 79
    .line 80
    :cond_6
    :goto_1
    move v2, v3

    .line 81
    :cond_7
    if-gez v2, :cond_8

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/ModifiedLayoutNode;->setModifier(Landroidx/compose/ui/layout/LayoutModifier;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifiedLayoutNode;->setWrapped(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method private final setModifierLocals(Landroidx/compose/ui/Modifier;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 12
    .line 13
    :goto_0
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getConsumers()Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getConsumers()Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 39
    .line 40
    new-instance v3, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;

    .line 41
    .line 42
    invoke-direct {v3, p0, v0}, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1, v3}, Landroidx/compose/ui/Modifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsTail:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsTail:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->setNext(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-lez v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_1
    aget-object v3, v0, v2

    .line 80
    .line 81
    check-cast v3, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->detach()V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    if-lt v2, v1, :cond_1

    .line 89
    .line 90
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->detach()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 101
    .line 102
    :goto_2
    if-eqz p1, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->attachDelayed()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    return-void
.end method

.method private final shouldInvalidateParentLayer()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v4, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/ui/node/EntityList$Companion;->getDrawEntityType-EEbPh1w()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v2, v4}, Landroidx/compose/ui/node/EntityList;->has-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v3
.end method


# virtual methods
.method public final attach$ui_release(Landroidx/compose/ui/node/Owner;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/node/Owner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_e

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Attaching to a different owner("

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ") than the parent\'s owner("

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p1, v2

    .line 58
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, "). This tree: "

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1, v3, v2}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " Parent tree: "

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-static {p1, v1, v3, v2}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    iput-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->isPlaced:Z

    .line 110
    .line 111
    :cond_5
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    iget v4, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    const/4 v4, -0x1

    .line 119
    :goto_3
    add-int/2addr v4, v3

    .line 120
    iput v4, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 121
    .line 122
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-interface {p1, p0}, Landroidx/compose/ui/node/Owner;->onAttach(Landroidx/compose/ui/node/LayoutNode;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 135
    .line 136
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-lez v5, :cond_9

    .line 141
    .line 142
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    move v6, v1

    .line 147
    :cond_8
    aget-object v7, v4, v6

    .line 148
    .line 149
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 150
    .line 151
    invoke-virtual {v7, p1}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    .line 152
    .line 153
    .line 154
    add-int/2addr v6, v3

    .line 155
    if-lt v6, v5, :cond_8

    .line 156
    .line 157
    :cond_9
    invoke-static {p0, v1, v3, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    :goto_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_b

    .line 180
    .line 181
    if-eqz v0, :cond_b

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->attach()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_4

    .line 191
    :cond_b
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 192
    .line 193
    :goto_5
    if-eqz v0, :cond_c

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->attach()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    goto :goto_5

    .line 203
    :cond_c
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    .line 204
    .line 205
    if-eqz v0, :cond_d

    .line 206
    .line 207
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_d
    return-void

    .line 211
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v0, "Cannot attach "

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v0, " as it already is attached.  Tree: "

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-static {p0, v1, v3, v2}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0
.end method

.method public final calculateAlignmentLines$ui_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getDuringAlignmentLinesQuery$ui_release()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->alignmentLinesQueriedByModifier()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->layoutChildren$ui_release()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getLastCalculation()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final detach$ui_release()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "Cannot detach node that is already detached!  Tree: "

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-static {v4, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->reset$ui_release()V

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 70
    .line 71
    :goto_0
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->detach()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->detach()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-interface {v0, p0}, Landroidx/compose/ui/node/Owner;->onDetach(Landroidx/compose/ui/node/LayoutNode;)V

    .line 117
    .line 118
    .line 119
    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 120
    .line 121
    iput v3, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-lez v2, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    move v4, v3

    .line 136
    :cond_7
    aget-object v5, v0, v4

    .line 137
    .line 138
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->detach$ui_release()V

    .line 141
    .line 142
    .line 143
    add-int/2addr v4, v1

    .line 144
    if-lt v4, v2, :cond_7

    .line 145
    .line 146
    :cond_8
    const v0, 0x7fffffff

    .line 147
    .line 148
    .line 149
    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 150
    .line 151
    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousPlaceOrder:I

    .line 152
    .line 153
    iput-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->isPlaced:Z

    .line 154
    .line 155
    return-void
.end method

.method public final dispatchOnPositionedCallbacks$ui_release()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :cond_2
    aget-object v3, v0, v2

    .line 39
    .line 40
    check-cast v3, Lkotlin/Pair;

    .line 41
    .line 42
    invoke-virtual {v3}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    .line 47
    .line 48
    invoke-virtual {v3}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 53
    .line 54
    invoke-interface {v4, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    if-lt v2, v1, :cond_2

    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public final draw$ui_release(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->draw(Landroidx/compose/ui/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public forceRemeasure()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getLastConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-interface {v0, p0, v1, v2}, Landroidx/compose/ui/node/Owner;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCanMultiMeasure$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getChildren$ui_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDepth$ui_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFoldedChildren$ui_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getInnerLayerWrapperIsDirty$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerWrapperIsDirty:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntrinsicsPolicy$ui_release()Landroidx/compose/ui/node/IntrinsicsPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntrinsicsUsageByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutPending$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getMeasurePending$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMeasureScope$ui_release()Landroidx/compose/ui/layout/MeasureScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measureScope:Landroidx/compose/ui/layout/MeasureScope;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMeasuredByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModifierInfo()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [Landroidx/compose/ui/layout/ModifierInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    .line 17
    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_2

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Landroidx/compose/ui/layout/ModifierInfo;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getModifier()Landroidx/compose/ui/layout/LayoutModifier;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v5, v6, v1, v4}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    array-length v6, v5

    .line 46
    move v7, v2

    .line 47
    :goto_1
    if-ge v7, v6, :cond_1

    .line 48
    .line 49
    aget-object v8, v5, v7

    .line 50
    .line 51
    :goto_2
    if-eqz v8, :cond_0

    .line 52
    .line 53
    new-instance v9, Landroidx/compose/ui/layout/ModifierInfo;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-direct {v9, v10, v1, v4}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    array-length v3, v1

    .line 85
    :goto_3
    if-ge v2, v3, :cond_4

    .line 86
    .line 87
    aget-object v4, v1, v2

    .line 88
    .line 89
    :goto_4
    if-eqz v4, :cond_3

    .line 90
    .line 91
    new-instance v5, Landroidx/compose/ui/layout/ModifierInfo;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 98
    .line 99
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    goto :goto_4

    .line 114
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method

.method public final getModifierLocalsHead$ui_release()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsHead:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifierLocalsTail$ui_release()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifierLocalsTail:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNeedsOnPositionedDispatch$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnAttach$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnDetach$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrCreateOnPositionedCallbacks$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v1, v1, [Lkotlin/Pair;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getOuterWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getOwner$ui_release()Landroidx/compose/ui/node/Owner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getParentData()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getParentInfo()Landroidx/compose/ui/layout/LayoutInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPlaceOrder$ui_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubcompositionsState$ui_release()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Ljava/util/Comparator;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    return-object v0
.end method

.method public final get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->recreateUnfoldedChildrenIfDirty()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public final handleMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/MeasureResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "measureResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final hitTest-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 8
    .param p3    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    const-string v0, "hitTestResult"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentPosition-MK-Hz9U(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;->getPointerInputSource()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v5, p3

    .line 25
    move v6, p4

    .line 26
    move v7, p5

    .line 27
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final hitTestSemantics-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 7
    .param p3    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    const-string p4, "hitSemanticsEntities"

    .line 2
    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    invoke-virtual {p4, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->fromParentPosition-MK-Hz9U(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object p1, Landroidx/compose/ui/node/LayoutNodeWrapper;->Companion:Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion;->getSemanticsSource()Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v5, 0x1

    .line 25
    move-object v4, p3

    .line 26
    move v6, p5

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->hitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final ignoreRemeasureRequests$ui_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 6
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    const-string v1, " Other tree: "

    .line 9
    .line 10
    const-string v2, "Cannot insert "

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 18
    .line 19
    if-nez v0, :cond_7

    .line 20
    .line 21
    iput-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p2, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 40
    .line 41
    add-int/2addr p1, v5

    .line 42
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p2, "Virtual LayoutNode can\'t be added into a virtual parent"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 72
    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p2, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_4
    aget-object v1, p1, v3

    .line 93
    .line 94
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 103
    .line 104
    .line 105
    add-int/2addr v3, v5

    .line 106
    if-lt v3, v0, :cond_4

    .line 107
    .line 108
    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    return-void

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " because it already has an owner. This tree: "

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v3, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-static {p2, v3, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p2

    .line 163
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v0, " because it already has a parent. This tree: "

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v3, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 190
    .line 191
    if-eqz p2, :cond_9

    .line 192
    .line 193
    invoke-static {p2, v3, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p2
.end method

.method public final invalidateLayer$ui_release()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayerWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final invalidateLayers$ui_release()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isPlaced()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isPlaced:Z

    .line 2
    .line 3
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final layoutChildren$ui_release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculateQueryOwner$ui_release()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onBeforeLayoutChildren()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Landroidx/compose/ui/node/LayoutNode$layoutChildren$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeLayoutSnapshotReads$ui_release(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedDuringParentLayout$ui_release()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->setPreviousUsedDuringParentLayout$ui_release(Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getDirty$ui_release()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getRequired$ui_release()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->recalculate()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final markLayoutPending$ui_release()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutPending:Z

    .line 3
    .line 4
    return-void
.end method

.method public final markMeasurePending$ui_release()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 3
    .line 4
    return-void
.end method

.method public maxIntrinsicHeight(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->maxIntrinsicHeight(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public maxIntrinsicWidth(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->maxIntrinsicWidth(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public minIntrinsicHeight(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->minIntrinsicHeight(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public minIntrinsicWidth(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->minIntrinsicWidth(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final move$ui_release(III)V
    .locals 5

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-ge v1, p3, :cond_3

    .line 7
    .line 8
    if-le p1, p2, :cond_1

    .line 9
    .line 10
    add-int v2, p1, v1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v2, p1

    .line 14
    :goto_1
    if-le p1, p2, :cond_2

    .line 15
    .line 16
    add-int v3, p2, v1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    add-int v3, p2, p3

    .line 20
    .line 21
    add-int/lit8 v3, v3, -0x2

    .line 22
    .line 23
    :goto_2
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 32
    .line 33
    invoke-virtual {v4, v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-static {p0, v0, p2, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onAlignmentsChanged$ui_release()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getDirty$ui_release()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->setDirty$ui_release(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedDuringParentMeasurement$ui_release()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-static {v0, v4, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getPreviousUsedDuringParentLayout$ui_release()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-static {v0, v4, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedByModifierMeasurement$ui_release()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-static {p0, v4, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getUsedByModifierLayout$ui_release()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-static {v0, v4, v1, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->onAlignmentsChanged$ui_release()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onLayoutComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getOnPlacedEntityType-EEbPh1w()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/compose/ui/node/SimpleEntity;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/compose/ui/layout/OnPlacedModifier;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 27
    .line 28
    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/OnPlacedModifier;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public final onNodePlaced$ui_release()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getZIndex()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    .line 17
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getZIndex()F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-float/2addr v1, v4

    .line 30
    invoke-virtual {v2}, Landroidx/compose/ui/node/ModifiedLayoutNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v2, p0, Landroidx/compose/ui/node/LayoutNode;->zIndex:F

    .line 36
    .line 37
    cmpg-float v2, v1, v2

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->zIndex:F

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated()V

    .line 47
    .line 48
    .line 49
    :cond_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->markNodeAndSubtreeAsPlaced()V

    .line 66
    .line 67
    .line 68
    :cond_5
    if-eqz v0, :cond_7

    .line 69
    .line 70
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->relayoutWithoutParentInProgress:Z

    .line 71
    .line 72
    if-nez v1, :cond_8

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 75
    .line 76
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 77
    .line 78
    if-ne v1, v2, :cond_8

    .line 79
    .line 80
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 81
    .line 82
    const v2, 0x7fffffff

    .line 83
    .line 84
    .line 85
    if-ne v1, v2, :cond_6

    .line 86
    .line 87
    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->nextChildPlaceOrder:I

    .line 88
    .line 89
    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    iput v1, v0, Landroidx/compose/ui/node/LayoutNode;->nextChildPlaceOrder:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v1, "Place was called on a node which was placed already"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_7
    const/4 v0, 0x0

    .line 105
    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->placeOrder:I

    .line 106
    .line 107
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->layoutChildren$ui_release()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final performMeasure-BRTryo0$ui_release(J)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$performMeasure$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$performMeasure$1;-><init>(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeMeasureSnapshotReads$ui_release(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->markLayoutPending$ui_release()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final place$ui_release(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v2, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getMeasuredWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static {v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNode;->access$getOuterMeasurablePlaceable$p(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    move v4, p1

    .line 44
    move v5, p2

    .line 45
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final remeasure-_Sx5XlM$ui_release(Landroidx/compose/ui/unit/Constraints;)Z
    .locals 3
    .param p1    # Landroidx/compose/ui/unit/Constraints;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->remeasure-BRTryo0(J)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final removeAll$ui_release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    const/4 v1, -0x1

    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget-object v1, v1, v0

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final removeAt$ui_release(II)V
    .locals 1

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    add-int/lit8 p2, p2, -0x1

    .line 5
    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    .line 17
    .line 18
    .line 19
    if-eq p2, p1, :cond_0

    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "count ("

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ") must be greater than 0"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2
.end method

.method public final replace$ui_release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->relayoutWithoutParentInProgress:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->replace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->relayoutWithoutParentInProgress:Z

    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->relayoutWithoutParentInProgress:Z

    .line 24
    .line 25
    throw v0
.end method

.method public final requestRelayout$ui_release(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/node/Owner;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final requestRemeasure$ui_release(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/node/Owner;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->invalidateIntrinsicsParent(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final resetSubtreeIntrinsicsUsage$ui_release()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_0
    aget-object v3, v0, v2

    .line 17
    .line 18
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 21
    .line 22
    iput-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 23
    .line 24
    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    .line 26
    if-eq v4, v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->resetSubtreeIntrinsicsUsage$ui_release()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    if-lt v2, v1, :cond_0

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final setCanMultiMeasure$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onDensityOrLayoutDirectionChanged()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setDepth$ui_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInnerLayerWrapperIsDirty$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerWrapperIsDirty:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setIntrinsicsUsageByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode$UsageByParent;
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
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 7
    .line 8
    return-void
.end method

.method public setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onDensityOrLayoutDirectionChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/MeasurePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/IntrinsicsPolicy;->updateFrom(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v1, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final setMeasuredByParent$ui_release(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode$UsageByParent;
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
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->measuredByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 7
    .line 8
    return-void
.end method

.method public setModifier(Landroidx/compose/ui/Modifier;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->modifier:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifier()Landroidx/compose/ui/Modifier;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->modifier:Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->shouldInvalidateParentLayer()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->copyWrappersToCache()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Landroidx/compose/ui/node/EntityList;->clear-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->markReusedModifiers(Landroidx/compose/ui/Modifier;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->getOuterWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->hasNewPositioningCallback()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    .line 113
    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onInitialize()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifier()Landroidx/compose/ui/Modifier;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 129
    .line 130
    new-instance v5, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;

    .line 131
    .line 132
    invoke-direct {v5, p0}, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/Modifier;->foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 140
    .line 141
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->setModifierLocals(Landroidx/compose/ui/Modifier;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const/4 v4, 0x0

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    move-object p1, v4

    .line 155
    :goto_2
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->setWrappedBy$ui_release(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 159
    .line 160
    invoke-virtual {p1, v3}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->setOuterWrapper(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    const/4 v5, 0x1

    .line 168
    const/4 v6, 0x0

    .line 169
    if-eqz p1, :cond_c

    .line 170
    .line 171
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-lez v7, :cond_8

    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    move v8, v6

    .line 184
    :cond_7
    aget-object v9, p1, v8

    .line 185
    .line 186
    check-cast v9, Landroidx/compose/ui/node/ModifiedLayoutNode;

    .line 187
    .line 188
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNodeWrapper;->detach()V

    .line 189
    .line 190
    .line 191
    add-int/2addr v8, v5

    .line 192
    if-lt v8, v7, :cond_7

    .line 193
    .line 194
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 199
    .line 200
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    :goto_3
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_c

    .line 209
    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_9

    .line 217
    .line 218
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->attach()V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    array-length v9, v8

    .line 227
    move v10, v6

    .line 228
    :goto_4
    if-ge v10, v9, :cond_b

    .line 229
    .line 230
    aget-object v11, v8, v10

    .line 231
    .line 232
    :goto_5
    if-eqz v11, :cond_a

    .line 233
    .line 234
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNodeEntity;->onAttach()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    goto :goto_5

    .line 242
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_b
    :goto_6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    goto :goto_3

    .line 250
    :cond_c
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->wrapperCache:Landroidx/compose/runtime/collection/MutableVector;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 260
    .line 261
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    :goto_7
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-nez v8, :cond_d

    .line 270
    .line 271
    if-eqz p1, :cond_d

    .line 272
    .line 273
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->onModifierChanged()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    goto :goto_7

    .line 281
    :cond_d
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 282
    .line 283
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_10

    .line 288
    .line 289
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 290
    .line 291
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-nez p1, :cond_e

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_e
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 299
    .line 300
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 301
    .line 302
    if-ne p1, v1, :cond_f

    .line 303
    .line 304
    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePending:Z

    .line 305
    .line 306
    if-nez p1, :cond_f

    .line 307
    .line 308
    if-eqz v2, :cond_f

    .line 309
    .line 310
    invoke-static {p0, v6, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_f
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 315
    .line 316
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 321
    .line 322
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->getOnPlacedEntityType-EEbPh1w()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-static {p1, v1}, Landroidx/compose/ui/node/EntityList;->has-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_11

    .line 331
    .line 332
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 333
    .line 334
    if-eqz p1, :cond_11

    .line 335
    .line 336
    invoke-interface {p1, p0}, Landroidx/compose/ui/node/Owner;->registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_10
    :goto_8
    invoke-static {p0, v6, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_11
    :goto_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParentData()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerMeasurablePlaceable:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    .line 348
    .line 349
    invoke-virtual {v1}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->recalculateParentData()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParentData()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-nez p1, :cond_12

    .line 361
    .line 362
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    if-eqz p1, :cond_12

    .line 367
    .line 368
    invoke-static {p1, v6, v5, v4}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui_release$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_12
    if-nez v0, :cond_13

    .line 372
    .line 373
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->shouldInvalidateParentLayer()Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_14

    .line 378
    .line 379
    :cond_13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    if-eqz p1, :cond_14

    .line 384
    .line 385
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    .line 386
    .line 387
    .line 388
    :cond_14
    return-void
.end method

.method public final setNeedsOnPositionedDispatch$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnPositionedDispatch:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnAttach$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnDetach$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubcompositionsState$ui_release(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    return-void
.end method

.method public setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/ViewConfiguration;
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
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v1}, Landroidx/compose/ui/platform/JvmActuals_jvmKt;->simpleIdentityToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " children: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " measurePolicy: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
