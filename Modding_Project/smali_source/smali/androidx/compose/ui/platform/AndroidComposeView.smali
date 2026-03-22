.class public final Landroidx/compose/ui/platform/AndroidComposeView;
.super Landroid/view/ViewGroup;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/Owner;
.implements Landroidx/compose/ui/platform/ViewRootForTest;
.implements Landroidx/compose/ui/input/pointer/PositionCalculator;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor",
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeView$Companion;,
        Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FocusTag:Ljava/lang/String; = "Compose Focus"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MaximumLayerCacheSize:I = 0xa

.field private static getBooleanMethod:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static systemPropertiesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private _androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _autofill:Landroidx/compose/ui/autofill/AndroidAutofill;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _windowInfo:Landroidx/compose/ui/platform/WindowInfoImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autofillTree:Landroidx/compose/ui/autofill/AutofillTree;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private configurationChangeObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/res/Configuration;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentFontWeightAdjustment:I

.field private density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private desiredPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dirtyLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/OwnedLayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fontFamilyResolver$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fontLoader:Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private forceUseMatrixCache:Z

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private globalPosition:J

.field private final hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hoverExitReceived:Z

.field private isDrawingContent:Z

.field private isRenderNodeCompatible:Z

.field private final keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastDownPointerPosition:J

.field private lastMatrixRecalculationAnimationTime:J

.field private final layerCache:Landroidx/compose/ui/platform/WeakCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/platform/WeakCache<",
            "Landroidx/compose/ui/node/OwnedLayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private observationClearRequested:Z

.field private onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private postponedDirtyLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/OwnedLayer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previousMotionEvent:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private relayoutTime:J

.field private final resendMotionEventOnLayout:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resendMotionEventRunnable:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final root:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rootForTest:Landroidx/compose/ui/node/RootForTest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rotaryInputModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final semanticsModifier:Landroidx/compose/ui/semantics/SemanticsModifierCore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendHoverExitEvent:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showLayoutBounds:Z

.field private final snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private superclassInitComplete:Z

.field private final textInputService:Landroidx/compose/ui/text/input/TextInputService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textInputServiceAndroid:Landroidx/compose/ui/text/input/TextInputServiceAndroid;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textToolbar:Landroidx/compose/ui/platform/TextToolbar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpPositionArray:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final touchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewToWindowMatrix:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewTreeOwners$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wasMeasuredWithMultipleConstraints:Z

.field private windowPosition:J

.field private final windowToViewMatrix:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->superclassInitComplete:Z

    .line 19
    .line 20
    new-instance v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, v1, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->density:Landroidx/compose/ui/unit/Density;

    .line 33
    .line 34
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsModifierCore;

    .line 35
    .line 36
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsModifierCore;->Companion:Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;->generateSemanticsId()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sget-object v5, Landroidx/compose/ui/platform/AndroidComposeView$semanticsModifier$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$semanticsModifier$1;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-direct {v2, v4, v6, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierCore;-><init>(IZZLkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsModifier:Landroidx/compose/ui/semantics/SemanticsModifierCore;

    .line 49
    .line 50
    new-instance v4, Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 51
    .line 52
    invoke-direct {v4, v3, v1, v3}, Landroidx/compose/ui/focus/FocusManagerImpl;-><init>(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 56
    .line 57
    new-instance v5, Landroidx/compose/ui/platform/WindowInfoImpl;

    .line 58
    .line 59
    invoke-direct {v5}, Landroidx/compose/ui/platform/WindowInfoImpl;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Landroidx/compose/ui/platform/WindowInfoImpl;

    .line 63
    .line 64
    new-instance v5, Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 65
    .line 66
    new-instance v7, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;

    .line 67
    .line 68
    invoke-direct {v7, p0}, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, v7, v3}, Landroidx/compose/ui/input/key/KeyInputModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 75
    .line 76
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 77
    .line 78
    sget-object v8, Landroidx/compose/ui/platform/AndroidComposeView$rotaryInputModifier$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$rotaryInputModifier$1;

    .line 79
    .line 80
    invoke-static {v7, v8}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->onRotaryScrollEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    iput-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeView;->rotaryInputModifier:Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    new-instance v9, Landroidx/compose/ui/graphics/CanvasHolder;

    .line 87
    .line 88
    invoke-direct {v9}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v9, p0, Landroidx/compose/ui/platform/AndroidComposeView;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 92
    .line 93
    new-instance v9, Landroidx/compose/ui/node/LayoutNode;

    .line 94
    .line 95
    invoke-direct {v9, v6, v1, v3}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    sget-object v10, Landroidx/compose/ui/layout/RootMeasurePolicy;->INSTANCE:Landroidx/compose/ui/layout/RootMeasurePolicy;

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v2}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v2, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusManagerImpl;->getModifier()Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v9, v2}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 131
    .line 132
    .line 133
    iput-object v9, p0, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 134
    .line 135
    iput-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->rootForTest:Landroidx/compose/ui/node/RootForTest;

    .line 136
    .line 137
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-direct {v2, v4}, Landroidx/compose/ui/semantics/SemanticsOwner;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 147
    .line 148
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 149
    .line 150
    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 151
    .line 152
    .line 153
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 154
    .line 155
    new-instance v4, Landroidx/compose/ui/autofill/AutofillTree;

    .line 156
    .line 157
    invoke-direct {v4}, Landroidx/compose/ui/autofill/AutofillTree;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    .line 161
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 168
    .line 169
    new-instance v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 170
    .line 171
    invoke-direct {v4}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 175
    .line 176
    new-instance v4, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-direct {v4, v5}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 183
    .line 184
    .line 185
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 186
    .line 187
    sget-object v4, Landroidx/compose/ui/platform/AndroidComposeView$configurationChangeObserver$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$configurationChangeObserver$1;

    .line 188
    .line 189
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    .line 190
    .line 191
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->autofillSupported()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_0

    .line 196
    .line 197
    new-instance v4, Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-direct {v4, p0, v5}, Landroidx/compose/ui/autofill/AndroidAutofill;-><init>(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_0
    move-object v4, v3

    .line 208
    :goto_0
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 209
    .line 210
    new-instance v4, Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 211
    .line 212
    invoke-direct {v4, p1}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 216
    .line 217
    new-instance v4, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 218
    .line 219
    invoke-direct {v4, p1}, Landroidx/compose/ui/platform/AndroidAccessibilityManager;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 223
    .line 224
    new-instance v4, Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 225
    .line 226
    new-instance v5, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1;

    .line 227
    .line 228
    invoke-direct {v5, p0}, Landroidx/compose/ui/platform/AndroidComposeView$snapshotObserver$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v4, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 232
    .line 233
    .line 234
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 235
    .line 236
    new-instance v4, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-direct {v4, v5}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 243
    .line 244
    .line 245
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 246
    .line 247
    new-instance v4, Landroidx/compose/ui/platform/AndroidViewConfiguration;

    .line 248
    .line 249
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const-string v7, "get(context)"

    .line 254
    .line 255
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v4, v5}, Landroidx/compose/ui/platform/AndroidViewConfiguration;-><init>(Landroid/view/ViewConfiguration;)V

    .line 259
    .line 260
    .line 261
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 262
    .line 263
    sget-object v4, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 264
    .line 265
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    .line 266
    .line 267
    .line 268
    move-result-wide v4

    .line 269
    iput-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    .line 270
    .line 271
    filled-new-array {v6, v6}, [I

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    .line 276
    .line 277
    invoke-static {v3, v1, v3}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    .line 282
    .line 283
    invoke-static {v3, v1, v3}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    .line 288
    .line 289
    const-wide/16 v4, -0x1

    .line 290
    .line 291
    iput-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 292
    .line 293
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getInfinite-F1C5BW0()J

    .line 294
    .line 295
    .line 296
    move-result-wide v4

    .line 297
    iput-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    .line 298
    .line 299
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    .line 300
    .line 301
    const/4 v0, 0x2

    .line 302
    invoke-static {v3, v3, v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewTreeOwners$delegate:Landroidx/compose/runtime/MutableState;

    .line 307
    .line 308
    new-instance v4, Landroidx/compose/ui/platform/c;

    .line 309
    .line 310
    invoke-direct {v4, p0}, Landroidx/compose/ui/platform/c;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 311
    .line 312
    .line 313
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 314
    .line 315
    new-instance v4, Landroidx/compose/ui/platform/d;

    .line 316
    .line 317
    invoke-direct {v4, p0}, Landroidx/compose/ui/platform/d;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 318
    .line 319
    .line 320
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 321
    .line 322
    new-instance v4, Landroidx/compose/ui/platform/e;

    .line 323
    .line 324
    invoke-direct {v4, p0}, Landroidx/compose/ui/platform/e;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 325
    .line 326
    .line 327
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 328
    .line 329
    new-instance v4, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 330
    .line 331
    invoke-direct {v4, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;-><init>(Landroid/view/View;)V

    .line 332
    .line 333
    .line 334
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputServiceAndroid:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 335
    .line 336
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->getTextInputServiceFactory()Lkotlin/jvm/functions/Function1;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Landroidx/compose/ui/text/input/TextInputService;

    .line 345
    .line 346
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 347
    .line 348
    new-instance v4, Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 349
    .line 350
    invoke-direct {v4, p1}, Landroidx/compose/ui/platform/AndroidFontResourceLoader;-><init>(Landroid/content/Context;)V

    .line 351
    .line 352
    .line 353
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontLoader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 354
    .line 355
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-static {v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/MutableState;

    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    const-string v5, "context.resources.configuration"

    .line 378
    .line 379
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontWeightAdjustmentCompat(Landroid/content/res/Configuration;)I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    iput v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->getLocaleLayoutDirection(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-static {p1, v3, v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/MutableState;

    .line 408
    .line 409
    new-instance p1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 410
    .line 411
    invoke-direct {p1, p0}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;-><init>(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 415
    .line 416
    new-instance p1, Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 417
    .line 418
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_1

    .line 423
    .line 424
    sget-object v0, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/compose/ui/input/InputMode$Companion;->getTouch-aOaMEAU()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    goto :goto_1

    .line 431
    :cond_1
    sget-object v0, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroidx/compose/ui/input/InputMode$Companion;->getKeyboard-aOaMEAU()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    :goto_1
    new-instance v4, Landroidx/compose/ui/platform/AndroidComposeView$_inputModeManager$1;

    .line 438
    .line 439
    invoke-direct {v4, p0}, Landroidx/compose/ui/platform/AndroidComposeView$_inputModeManager$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 440
    .line 441
    .line 442
    invoke-direct {p1, v0, v4, v3}, Landroidx/compose/ui/input/InputModeManagerImpl;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 443
    .line 444
    .line 445
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 446
    .line 447
    new-instance p1, Landroidx/compose/ui/platform/AndroidTextToolbar;

    .line 448
    .line 449
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidTextToolbar;-><init>(Landroid/view/View;)V

    .line 450
    .line 451
    .line 452
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 453
    .line 454
    new-instance p1, Landroidx/compose/ui/platform/WeakCache;

    .line 455
    .line 456
    invoke-direct {p1}, Landroidx/compose/ui/platform/WeakCache;-><init>()V

    .line 457
    .line 458
    .line 459
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Landroidx/compose/ui/platform/WeakCache;

    .line 460
    .line 461
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 462
    .line 463
    const/16 v0, 0x10

    .line 464
    .line 465
    new-array v0, v0, [Lkotlin/jvm/functions/Function0;

    .line 466
    .line 467
    invoke-direct {p1, v0, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 468
    .line 469
    .line 470
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 471
    .line 472
    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 473
    .line 474
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 475
    .line 476
    .line 477
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventRunnable:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 478
    .line 479
    new-instance p1, Landroidx/compose/ui/platform/f;

    .line 480
    .line 481
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/f;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 482
    .line 483
    .line 484
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 485
    .line 486
    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventOnLayout$1;

    .line 487
    .line 488
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventOnLayout$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 489
    .line 490
    .line 491
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Lkotlin/jvm/functions/Function0;

    .line 492
    .line 493
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 494
    .line 495
    const/16 v0, 0x1d

    .line 496
    .line 497
    if-lt p1, v0, :cond_2

    .line 498
    .line 499
    new-instance v3, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    .line 500
    .line 501
    invoke-direct {v3}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;-><init>()V

    .line 502
    .line 503
    .line 504
    goto :goto_2

    .line 505
    :cond_2
    new-instance v3, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 506
    .line 507
    invoke-direct {v3}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>()V

    .line 508
    .line 509
    .line 510
    :goto_2
    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindow;

    .line 511
    .line 512
    invoke-virtual {p0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 516
    .line 517
    .line 518
    const/16 v3, 0x1a

    .line 519
    .line 520
    if-lt p1, v3, :cond_3

    .line 521
    .line 522
    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;

    .line 523
    .line 524
    invoke-virtual {v3, p0, v1, v6}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->focusable(Landroid/view/View;IZ)V

    .line 525
    .line 526
    .line 527
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 534
    .line 535
    .line 536
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 537
    .line 538
    .line 539
    sget-object v1, Landroidx/compose/ui/platform/ViewRootForTest;->Companion:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    .line 540
    .line 541
    invoke-virtual {v1}, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->getOnViewCreatedCallback()Lkotlin/jvm/functions/Function1;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    if-eqz v1, :cond_4

    .line 546
    .line 547
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v1, p0}, Landroidx/compose/ui/node/LayoutNode;->attach$ui_release(Landroidx/compose/ui/node/Owner;)V

    .line 555
    .line 556
    .line 557
    if-lt p1, v0, :cond_5

    .line 558
    .line 559
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;

    .line 560
    .line 561
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->disallowForceDark(Landroid/view/View;)V

    .line 562
    .line 563
    .line 564
    :cond_5
    new-instance p1, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    .line 565
    .line 566
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 567
    .line 568
    .line 569
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    .line 570
    .line 571
    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener$lambda-2(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getDesiredPointerIcon$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->desiredPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGetBooleanMethod$cp()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->getBooleanMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPreviousMotionEvent$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRelayoutTime$p(Landroidx/compose/ui/platform/AndroidComposeView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getResendMotionEventRunnable$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventRunnable:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSystemPropertiesClass$cp()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->systemPropertiesClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$sendSimulatedEvent(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;IJZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setDesiredPointerIcon$p(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->desiredPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setGetBooleanMethod$cp(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->getBooleanMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRelayoutTime$p(Landroidx/compose/ui/platform/AndroidComposeView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSystemPropertiesClass$cp(Ljava/lang/Class;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->systemPropertiesClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method private final autofillSupported()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public static synthetic b(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent$lambda-5(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/platform/AndroidComposeView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener$lambda-3(Landroidx/compose/ui/platform/AndroidComposeView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final clearChildInvalidObservations(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->onEndApplyChanges()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->clearChildInvalidObservations(Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private final convertMeasureSpec(I)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x7fffffff

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    return-object p1
.end method

.method public static synthetic d(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener$lambda-1(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_2

    .line 6
    .line 7
    const-string v0, "getAccessibilityViewId"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v3, Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_0
    if-ge v1, v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "currentView.getChildAt(i)"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 p1, 0x0

    .line 71
    return-object p1
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method private final getFontWeightAdjustmentCompat(Landroid/content/res/Configuration;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/compose/ui/platform/b;->a(Landroid/content/res/Configuration;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final globalLayoutListener$lambda-1(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->updatePositionCacheAndDispatch()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventRunnable:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->desiredPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 18
    .line 19
    const-string v2, "AndroidOwner:onTouch"

    .line 20
    .line 21
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v11, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 29
    .line 30
    const/4 v12, 0x3

    .line 31
    if-eqz v11, :cond_0

    .line 32
    .line 33
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, v12, :cond_0

    .line 38
    .line 39
    move v13, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v13, v0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :goto_0
    if-eqz v11, :cond_2

    .line 47
    .line 48
    invoke-direct {p0, p1, v11}, Landroidx/compose/ui/platform/AndroidComposeView;->hasChangedDevices(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-direct {p0, v11}, Landroidx/compose/ui/platform/AndroidComposeView;->isDevicePressEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->processCancel()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/16 v4, 0xa

    .line 71
    .line 72
    if-eq v3, v4, :cond_2

    .line 73
    .line 74
    if-eqz v13, :cond_2

    .line 75
    .line 76
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    const/16 v9, 0x8

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    const/16 v5, 0xa

    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    move-object v3, p0

    .line 87
    move-object v4, v11

    .line 88
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;IJZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-ne v3, v12, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v1, v0

    .line 99
    :goto_2
    if-nez v13, :cond_4

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    if-eq v2, v12, :cond_4

    .line 104
    .line 105
    const/16 v1, 0x9

    .line 106
    .line 107
    if-eq v2, v1, :cond_4

    .line 108
    .line 109
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    const/16 v8, 0x8

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    const/16 v4, 0x9

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v2, p0

    .line 126
    move-object v3, p1

    .line 127
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;IJZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    if-eqz v11, :cond_5

    .line 131
    .line 132
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 133
    .line 134
    .line 135
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 140
    .line 141
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    .line 142
    .line 143
    .line 144
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 146
    .line 147
    .line 148
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    .line 149
    .line 150
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->desiredPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 151
    .line 152
    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->setPointerIcon(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    .line 154
    .line 155
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    .line 156
    .line 157
    return p1

    .line 158
    :catchall_1
    move-exception p1

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    .line 162
    .line 163
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :goto_4
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    .line 165
    .line 166
    throw p1
.end method

.method private final handleRotaryEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1a

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    neg-float v1, v1

    .line 16
    new-instance v2, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v0, v3}, Landroidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    mul-float/2addr v3, v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v0, v4}, Landroidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    mul-float/2addr v1, v0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-direct {v2, v3, v1, v4, v5}, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;-><init>(FFJ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusManagerImpl;->getActiveFocusModifier$ui_release()Landroidx/compose/ui/focus/FocusModifier;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroidx/compose/ui/focus/FocusModifier;->propagateRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    return p1
.end method

.method private final hasChangedDevices(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq p2, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    :cond_1
    return v0
.end method

.method private final invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui_release()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_0
    aget-object v2, p1, v1

    .line 20
    .line 21
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-lt v1, v0, :cond_0

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    aget-object v1, p1, v3

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    if-lt v3, v0, :cond_0

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private final isBadMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p1, 0x1

    .line 68
    :goto_0
    return p1
.end method

.method private final isDevicePressEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_1
    return v1
.end method

.method private final isInBounds(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    cmpg-float v0, v1, p1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    cmpg-float p1, p1, v0

    .line 33
    .line 34
    if-gtz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method private final isPositionChanged(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    cmpg-float v2, v2, v3

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    cmpg-float p1, p1, v0

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :cond_1
    return v1
.end method

.method private final recalculateWindowPosition()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->forceUseMatrixCache:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowViewTransforms()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p0

    .line 7
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 8
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 9
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 12
    aget v5, v0, v4

    int-to-float v5, v5

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    aget v1, v0, v2

    int-to-float v1, v1

    .line 15
    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v3, v1

    sub-float/2addr v5, v0

    .line 16
    invoke-static {v3, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    :cond_1
    return-void
.end method

.method private final recalculateWindowPosition(Landroid/view/MotionEvent;)V
    .locals 4

    .line 17
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 18
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowViewTransforms()V

    .line 19
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    sub-float/2addr v2, v3

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    sub-float/2addr p1, v0

    .line 22
    invoke-static {v2, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    return-void
.end method

.method private final recalculateWindowViewTransforms()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->matrixToWindow:Landroidx/compose/ui/platform/CalculateMatrixToWindow;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    .line 4
    .line 5
    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/platform/CalculateMatrixToWindow;->calculateMatrixToWindow-EL8BTi8(Landroid/view/View;[F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic scheduleMeasureAndLayout$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/node/LayoutNode;ILjava/lang/Object;)V
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
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final scrollChangedListener$lambda-2(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->updatePositionCacheAndDispatch()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final sendHoverExitEvent$lambda-5(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "The ACTION_HOVER_EXIT event was not cleared."

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method private final sendMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v2

    .line 32
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPosition-F1C5BW0()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iput-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v0, p0, v2}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->process-BIzXfog(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    if-ne v1, v2, :cond_5

    .line 70
    .line 71
    :cond_3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/ProcessResult;->getDispatchedToAPointerInputModifier-impl(I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v1, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->endStream(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->processCancel()V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-static {p1, p1}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessorKt;->ProcessResult(ZZ)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :cond_5
    :goto_1
    return v0
.end method

.method private final sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v15, 0x1

    .line 14
    if-eq v2, v15, :cond_1

    .line 15
    .line 16
    const/4 v6, 0x6

    .line 17
    if-eq v2, v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v2, 0x9

    .line 26
    .line 27
    if-eq v5, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0xa

    .line 30
    .line 31
    if-eq v5, v2, :cond_2

    .line 32
    .line 33
    move v3, v4

    .line 34
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ltz v3, :cond_3

    .line 39
    .line 40
    move v6, v15

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v6, v4

    .line 43
    :goto_1
    sub-int v6, v2, v6

    .line 44
    .line 45
    if-nez v6, :cond_4

    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 49
    .line 50
    move v2, v4

    .line 51
    :goto_2
    if-ge v2, v6, :cond_5

    .line 52
    .line 53
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    .line 54
    .line 55
    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 56
    .line 57
    .line 58
    aput-object v8, v7, v2

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 64
    .line 65
    move v2, v4

    .line 66
    :goto_3
    if-ge v2, v6, :cond_6

    .line 67
    .line 68
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    .line 69
    .line 70
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 71
    .line 72
    .line 73
    aput-object v9, v8, v2

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    move v2, v4

    .line 79
    :goto_4
    if-ge v2, v6, :cond_9

    .line 80
    .line 81
    if-ltz v3, :cond_8

    .line 82
    .line 83
    if-ge v2, v3, :cond_7

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_7
    move v9, v15

    .line 87
    goto :goto_6

    .line 88
    :cond_8
    :goto_5
    move v9, v4

    .line 89
    :goto_6
    add-int/2addr v9, v2

    .line 90
    aget-object v10, v7, v2

    .line 91
    .line 92
    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 93
    .line 94
    .line 95
    aget-object v10, v8, v2

    .line 96
    .line 97
    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 98
    .line 99
    .line 100
    iget v9, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 101
    .line 102
    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 103
    .line 104
    invoke-static {v9, v11}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    invoke-virtual {v0, v11, v12}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-MK-Hz9U(J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    iput v9, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 117
    .line 118
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    iput v9, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_9
    if-eqz p5, :cond_a

    .line 128
    .line 129
    move v10, v4

    .line 130
    goto :goto_7

    .line 131
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    move v10, v2

    .line 136
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 141
    .line 142
    .line 143
    move-result-wide v11

    .line 144
    cmp-long v2, v2, v11

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move-wide/from16 v2, p3

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 176
    .line 177
    .line 178
    move-result v16

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 180
    .line 181
    .line 182
    move-result v17

    .line 183
    move-wide v1, v2

    .line 184
    move-wide/from16 v3, p3

    .line 185
    .line 186
    move/from16 v5, p2

    .line 187
    .line 188
    move/from16 v15, v16

    .line 189
    .line 190
    move/from16 v16, v17

    .line 191
    .line 192
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->motionEventAdapter:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 197
    .line 198
    const-string v3, "event"

    .line 199
    .line 200
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerInputEventProcessor:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    invoke-virtual {v3, v2, v0, v4}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->process-BIzXfog(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;Z)I

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method static synthetic sendSimulatedEvent$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/MotionEvent;IJZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-wide v3, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setFontFamilyResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setViewTreeOwners(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewTreeOwners$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final touchModeChangeListener$lambda-3(Landroidx/compose/ui/platform/AndroidComposeView;Z)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/input/InputMode$Companion;->getTouch-aOaMEAU()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/input/InputMode$Companion;->getKeyboard-aOaMEAU()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/InputModeManagerImpl;->setInputMode-iuPiT84(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusManagerImpl;->fetchUpdatedFocusProperties()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final updatePositionCacheAndDispatch()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget v1, v1, v2

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    .line 27
    .line 28
    aget v1, v1, v3

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->tmpPositionArray:[I

    .line 33
    .line 34
    aget v1, v0, v2

    .line 35
    .line 36
    aget v0, v0, v3

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalPosition:J

    .line 43
    .line 44
    move v2, v3

    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final addAndroidView(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layoutNode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getHolderToLayoutNode()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;

    .line 45
    .line 46
    invoke-direct {v0, p2, p0, p0}, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->autofillSupported()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/compose/ui/autofill/AndroidAutofill_androidKt;->performAutofill(Landroidx/compose/ui/autofill/AndroidAutofill;Landroid/util/SparseArray;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final boundsUpdatesEventLoop(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->boundsUpdatesEventLoop(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public calculateLocalPosition-MK-Hz9U(J)J
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public calculatePositionInWindow-MK-Hz9U(J)J
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-0AR0LA0$ui_release(ZIJ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastDownPointerPosition:J

    .line 5
    .line 6
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->canScroll-0AR0LA0$ui_release(ZIJ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public createLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/OwnedLayer;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/node/OwnedLayer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "drawBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "invalidateParentLayer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Landroidx/compose/ui/platform/WeakCache;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/platform/WeakCache;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/node/OwnedLayer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->reuseLayer(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_0
    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/ui/platform/RenderNodeLayer;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :catchall_0
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isRenderNodeCompatible:Z

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->getHasRetrievedMethod()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    new-instance v1, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ViewLayer$Companion;->updateDisplayList(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->getShouldUseDispatchDraw()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const-string v1, "context"

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/ui/platform/DrawChildContainer;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/DrawChildContainer;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance v0, Landroidx/compose/ui/platform/ViewLayerContainer;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v2}, Landroidx/compose/ui/platform/ViewLayerContainer;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer;

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/compose/ui/platform/ViewLayer;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
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
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {p0, v1, v2, v0}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->canvasHolder:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->getInternalCanvas()Landroid/graphics/Canvas;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, p1}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutNode;->draw$ui_release(Landroidx/compose/ui/graphics/Canvas;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/CanvasHolder;->getAndroidCanvas()Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->setInternalCanvas(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 63
    .line 64
    check-cast v0, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    move v2, v1

    .line 79
    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    .line 81
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroidx/compose/ui/node/OwnedLayer;

    .line 88
    .line 89
    invoke-interface {v3}, Landroidx/compose/ui/node/OwnedLayer;->updateDisplayList()V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->getShouldUseDispatchDraw()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 109
    .line 110
    .line 111
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 120
    .line 121
    .line 122
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/List;

    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 132
    .line 133
    move-object v1, p1

    .line 134
    check-cast v1, Ljava/util/Collection;

    .line 135
    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 140
    .line 141
    .line 142
    :cond_3
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    const/high16 v0, 0x400000

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleRotaryEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/ProcessResult;->getDispatchedToAPointerInputModifier-impl(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_1
    return p1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v0, 0x1002

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v3, 0x7

    .line 61
    if-eq v0, v3, :cond_6

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    if-eq v0, v3, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isInBounds(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v3, 0x3

    .line 79
    if-eq v0, v3, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 93
    .line 94
    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    .line 95
    .line 96
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    return v1

    .line 109
    :cond_6
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isPositionChanged(Landroid/view/MotionEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    return v1

    .line 116
    :cond_7
    :goto_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/ProcessResult;->getDispatchedToAPointerInputModifier-impl(I)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    return p1

    .line 125
    :cond_8
    :goto_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->constructor-impl(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->sendKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "motionEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->hasChangedDevices(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hoverExitReceived:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sendHoverExitEvent:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isBadMotionEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_6

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x2

    .line 60
    if-ne v0, v2, :cond_4

    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->isPositionChanged(Landroid/view/MotionEvent;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    return v1

    .line 69
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->handleMotionEvent-8iAsVTc(Landroid/view/MotionEvent;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/ProcessResult;->getAnyMovementConsumed-impl(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/ProcessResult;->getDispatchedToAPointerInputModifier-impl(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_6
    :goto_2
    return v1
.end method

.method public final drawAndroidView(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "canvas"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/AndroidViewsHandler;->drawView(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1d

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    const-class v1, Landroid/view/View;

    .line 9
    .line 10
    const-string v2, "findViewByAccessibilityIdTraversal"

    .line 11
    .line 12
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    instance-of v1, p1, Landroid/view/View;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast p1, Landroid/view/View;

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAccessibilityManager()Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityManager()Landroidx/compose/ui/platform/AndroidAccessibilityManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityManager:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    return-object v0
.end method

.method public final getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "context"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public getAutofill()Landroidx/compose/ui/autofill/Autofill;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->clipboardManager:Landroidx/compose/ui/platform/AndroidClipboardManager;

    return-object v0
.end method

.method public bridge synthetic getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/AndroidClipboardManager;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigurationChangeObserver()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/res/Configuration;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFocusDirection-P8AzH3I(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/FocusDirection;
    .locals 6
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "keyEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object v2, Landroidx/compose/ui/input/key/Key;->Companion:Landroidx/compose/ui/input/key/Key$Companion;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getTab-EK5gGoQ()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionRight-EK5gGoQ()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionLeft-EK5gGoQ()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionUp-EK5gGoQ()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionDown-EK5gGoQ()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getDirectionCenter-EK5gGoQ()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    const/4 v3, 0x1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    move p1, v3

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getEnter-EK5gGoQ()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    :goto_1
    if-eqz p1, :cond_7

    .line 155
    .line 156
    move p1, v3

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getNumPadEnter-EK5gGoQ()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    :goto_2
    if-eqz p1, :cond_8

    .line 167
    .line 168
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getIn-dhqQ-8s()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_4

    .line 179
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getBack-EK5gGoQ()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_9

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/input/key/Key$Companion;->getEscape-EK5gGoQ()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    :goto_3
    if-eqz v3, :cond_a

    .line 199
    .line 200
    sget-object p1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getOut-dhqQ-8s()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    goto :goto_4

    .line 211
    :cond_a
    const/4 p1, 0x0

    .line 212
    :goto_4
    return-object p1
.end method

.method public getFocusManager()Landroidx/compose/ui/focus/FocusManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusManagerImpl;->getActiveFocusModifier$ui_release()Landroidx/compose/ui/focus/FocusModifier;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-nez v0, :cond_1

    .line 65
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontFamilyResolver$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 8
    .line 9
    return-object v0
.end method

.method public getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->fontLoader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getHasPendingMeasureOrLayout()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInputModeManager()Landroidx/compose/ui/input/InputModeManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_inputModeManager:Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layoutDirection$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    .line 9
    return-object v0
.end method

.method public getMeasureIteration()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getMeasureIteration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoot()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRootForTest()Landroidx/compose/ui/node/RootForTest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->rootForTest:Landroidx/compose/ui/node/RootForTest;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->sharedDrawScope:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowLayoutBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->showLayoutBounds:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewTreeOwners$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 8
    .line 9
    return-object v0
.end method

.method public getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Landroidx/compose/ui/platform/WindowInfoImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public invalidateDescendants()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isLifecycleInResumedState()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    return v0
.end method

.method public final keyboardVisibilityEventLoop(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputServiceAndroid:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandEventLoop(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public localToScreen-MK-Hz9U(J)J
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-float/2addr v0, v1

    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-float/2addr p1, p2

    .line 32
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    return-wide p1
.end method

.method public measureAndLayout(Z)V
    .locals 3

    .line 1
    const-string v0, "AndroidOwner:measureAndLayout"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object p1, v0

    .line 15
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout(Lkotlin/jvm/functions/Function0;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {p1, v1, v2, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "AndroidOwner:measureAndLayout"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    const/4 p3, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0, p2, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;ZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/OwnedLayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    .line 9
    .line 10
    if-nez p2, :cond_4

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Failed requirement."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->isDrawingContent:Z

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->dirtyLayers:Ljava/util/List;

    .line 34
    .line 35
    check-cast p2, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/List;

    .line 42
    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    new-instance p2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->postponedDirtyLayers:Ljava/util/List;

    .line 51
    .line 52
    :cond_3
    check-cast p2, Ljava/util/Collection;

    .line 53
    .line 54
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayers(Landroidx/compose/ui/node/LayoutNode;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->startObserving$ui_release()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->autofillSupported()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v1, Landroidx/compose/ui/autofill/AutofillCallback;->INSTANCE:Landroidx/compose/ui/autofill/AutofillCallback;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroidx/compose/ui/autofill/AutofillCallback;->register(Landroidx/compose/ui/autofill/AndroidAutofill;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-ne v0, v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eq v1, v3, :cond_4

    .line 69
    .line 70
    :cond_1
    if-eqz v0, :cond_6

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 99
    .line 100
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->setViewTreeOwners(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string v1, "Composed into the View which doesn\'t propagateViewTreeSavedStateRegistryOwner!"

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    const-string v1, "Composed into the View which doesn\'t propagate ViewTreeLifecycleOwner!"

    .line 173
    .line 174
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputServiceAndroid:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->isEditorFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "context"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->density:Landroidx/compose/ui/unit/Density;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontWeightAdjustmentCompat(Landroid/content/res/Configuration;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    .line 29
    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontWeightAdjustmentCompat(Landroid/content/res/Configuration;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->currentFontWeightAdjustment:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->setFontFamilyResolver(Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "outAttrs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->textInputServiceAndroid:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public onDetach(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onNodeDetached(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->stopObserving$ui_release()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->autofillSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/autofill/AutofillCallback;->INSTANCE:Landroidx/compose/ui/autofill/AutofillCallback;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroidx/compose/ui/autofill/AutofillCallback;->unregister(Landroidx/compose/ui/autofill/AndroidAutofill;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->scrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->touchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
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
    return-void
.end method

.method public onEndApplyChanges()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->clearInvalidObservations$ui_release()V

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->clearChildInvalidObservations(Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    move v2, v1

    .line 37
    :goto_1
    if-ge v2, v0, :cond_3

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    aget-object v3, v3, v2

    .line 46
    .line 47
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v2, v5}, Landroidx/compose/runtime/collection/MutableVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 64
    .line 65
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeRange(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p3, "Owner FocusChanged("

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 p3, 0x29

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "Compose Focus"

    .line 27
    .line 28
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusManagerImpl;->takeFocus()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusManagerImpl;->releaseFocus()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->updatePositionCacheAndDispatch()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sub-int/2addr p4, p2

    .line 16
    sub-int/2addr p5, p3

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onLayoutChange$ui_release(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    const-string v0, "AndroidOwner:onMeasure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateLayoutNodeMeasurement(Landroidx/compose/ui/node/LayoutNode;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->convertMeasureSpec(I)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->convertMeasureSpec(I)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p2}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {v0, p1, v1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onMeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 85
    .line 86
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_1
    if-nez v1, :cond_3

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->wasMeasuredWithMultipleConstraints:Z

    .line 104
    .line 105
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 106
    .line 107
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->updateRootConstraints-BRTryo0(J)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 111
    .line 112
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->resendMotionEventOnLayout:Lkotlin/jvm/functions/Function0;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout(Lkotlin/jvm/functions/Function0;)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_androidViewsHandler:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 137
    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    const/high16 v0, 0x40000000    # 2.0f

    .line 153
    .line 154
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getHeight()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 171
    .line 172
    .line 173
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 0
    .param p1    # Landroid/view/ViewStructure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->autofillSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_autofill:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {p2, p1}, Landroidx/compose/ui/autofill/AndroidAutofill_androidKt;->populateViewStructure(Landroidx/compose/ui/autofill/AndroidAutofill;Landroid/view/ViewStructure;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout(Landroidx/compose/ui/node/LayoutNode;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRelayout(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-static {p0, p2, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/node/LayoutNode;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
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
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeView;->Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->access$getIsShowingLayoutBounds(Landroidx/compose/ui/platform/AndroidComposeView$Companion;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->superclassInitComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->access$layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_focusManager:Landroidx/compose/ui/focus/FocusManagerImpl;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusManagerImpl;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onSemanticsChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->accessibilityDelegate:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->onSemanticsChange$ui_release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->_windowInfo:Landroidx/compose/ui/platform/WindowInfoImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/WindowInfoImpl;->setWindowFocused(Z)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeView;->Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->access$getIsShowingLayoutBounds(Landroidx/compose/ui/platform/AndroidComposeView$Companion;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidateDescendants()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/node/OwnedLayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewLayersContainer:Landroidx/compose/ui/platform/DrawChildContainer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/platform/ViewLayer;->Companion:Landroidx/compose/ui/platform/ViewLayer$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->getShouldUseDispatchDraw()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->layerCache:Landroidx/compose/ui/platform/WeakCache;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/WeakCache;->push(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V
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
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayoutDelegate:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p0, p1, v0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->scheduleMeasureAndLayout$default(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/node/LayoutNode;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final removeAndroidView(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getHolderToLayoutNode()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final requestClearInvalidObservations()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    .line 3
    .line 4
    return-void
.end method

.method public screenToLocal-MK-Hz9U(J)J
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-float/2addr v0, v1

    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowPosition:J

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-float/2addr p1, p2

    .line 26
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->windowToViewMatrix:[F

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {p2, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    return-wide p1
.end method

.method public sendKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "keyEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/key/KeyInputModifier;->processKeyInput-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/res/Configuration;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->configurationChangeObserver:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui_release(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->lastMatrixRecalculationAnimationTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOnViewTreeOwnersAvailable(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->onViewTreeOwnersAvailable:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->showLayoutBounds:Z

    .line 2
    .line 3
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
