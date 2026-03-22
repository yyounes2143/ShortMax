.class public final Landroidx/compose/ui/focus/FocusModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "FocusModifier.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/layout/OnPlacedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusModifier$Companion;,
        Landroidx/compose/ui/focus/FocusModifier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/focus/FocusModifier;",
        ">;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Landroidx/compose/ui/layout/OnPlacedModifier;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusModifier$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RefreshFocusProperties:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final children:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final focusProperties:Landroidx/compose/ui/focus/FocusProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusRequestedOnPlaced:Z

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusState:Landroidx/compose/ui/focus/FocusStateImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focusedChild:Landroidx/compose/ui/focus/FocusModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/key/KeyInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public modifierLocalReadScope:Landroidx/compose/ui/modifier/ModifierLocalReadScope;

.field private parent:Landroidx/compose/ui/focus/FocusModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/input/focus/FocusAwareInputModifier<",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusModifier$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusModifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/focus/FocusModifier;->Companion:Landroidx/compose/ui/focus/FocusModifier$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/focus/FocusModifier$Companion$RefreshFocusProperties$1;->INSTANCE:Landroidx/compose/ui/focus/FocusModifier$Companion$RefreshFocusProperties$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/focus/FocusModifier;->RefreshFocusProperties:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/FocusStateImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/focus/FocusStateImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusStateImpl;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialFocus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/focus/FocusModifier;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 5
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 7
    new-instance p1, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusPropertiesImpl;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    .line 8
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    new-array p2, v0, [Landroidx/compose/ui/input/key/KeyInputModifier;

    invoke-direct {p1, p2, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 9
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusStateImpl;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/focus/FocusModifier;-><init>(Landroidx/compose/ui/focus/FocusStateImpl;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getRefreshFocusProperties$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusModifier;->RefreshFocusProperties:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic getRotaryScrollParent$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChildren()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusEventListener()Landroidx/compose/ui/focus/FocusEventModifierLocal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusPropertiesModifier()Landroidx/compose/ui/focus/FocusPropertiesModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusRequestedOnPlaced()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFocusRequester()Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusedChild()Landroidx/compose/ui/focus/FocusModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusedChild:Landroidx/compose/ui/focus/FocusModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/focus/FocusModifierKt;->getModifierLocalParentFocusModifier()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getKeyInputChildren()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/key/KeyInputModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyInputModifier()Landroidx/compose/ui/input/key/KeyInputModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifierLocalReadScope()Landroidx/compose/ui/modifier/ModifierLocalReadScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->modifierLocalReadScope:Landroidx/compose/ui/modifier/ModifierLocalReadScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "modifierLocalReadScope"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getParent()Landroidx/compose/ui/focus/FocusModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Landroidx/compose/ui/focus/FocusModifier;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getValue()Landroidx/compose/ui/focus/FocusModifier;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

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

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusModifier;->setModifierLocalReadScope(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/focus/FocusModifierKt;->getModifierLocalParentFocusModifier()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/focus/FocusModifier;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/ui/focus/FocusModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    aget v1, v2, v1

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq v1, v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusManager()Landroidx/compose/ui/focus/FocusManager;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v1, v2}, Landroidx/compose/ui/focus/FocusManager;->clearFocus(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusModifier;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 92
    .line 93
    invoke-static {}, Landroidx/compose/ui/focus/FocusEventModifierKt;->getModifierLocalFocusEvent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 112
    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->removeFocusModifier(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusEventModifierLocal;->addFocusModifier(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->getModifierLocalFocusRequester()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 134
    .line 135
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 136
    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1, p0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->removeFocusModifier(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    if-eqz v0, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusRequesterModifierLocal;->addFocusModifier(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 156
    .line 157
    invoke-static {}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->getModifierLocalRotaryScrollParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 166
    .line 167
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 178
    .line 179
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 180
    .line 181
    invoke-static {}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->getModifierLocalKeyInput()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 190
    .line 191
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->keyInputModifier:Landroidx/compose/ui/input/key/KeyInputModifier;

    .line 192
    .line 193
    invoke-static {}, Landroidx/compose/ui/focus/FocusPropertiesKt;->getModifierLocalFocusProperties()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 202
    .line 203
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 204
    .line 205
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->refreshFocusProperties(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->refreshFocusProperties(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iput-boolean v1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 28
    .line 29
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final propagateRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/input/rotary/RotaryScrollEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusModifier;->rotaryScrollParent:Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;->propagateFocusAwareEvent(Landroidx/compose/ui/input/focus/FocusAwareEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final setBeyondBoundsLayoutParent(Landroidx/compose/ui/layout/BeyondBoundsLayout;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/BeyondBoundsLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->beyondBoundsLayoutParent:Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 2
    .line 3
    return-void
.end method

.method public final setFocusEventListener(Landroidx/compose/ui/focus/FocusEventModifierLocal;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusEventModifierLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusEventListener:Landroidx/compose/ui/focus/FocusEventModifierLocal;

    .line 2
    .line 3
    return-void
.end method

.method public final setFocusPropertiesModifier(Landroidx/compose/ui/focus/FocusPropertiesModifier;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusPropertiesModifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusPropertiesModifier:Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 2
    .line 3
    return-void
.end method

.method public final setFocusRequestedOnPlaced(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequestedOnPlaced:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFocusRequester(Landroidx/compose/ui/focus/FocusRequesterModifierLocal;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusRequesterModifierLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusRequester:Landroidx/compose/ui/focus/FocusRequesterModifierLocal;

    .line 2
    .line 3
    return-void
.end method

.method public final setFocusState(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/focus/FocusStateImpl;
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
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusState:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->sendOnFocusEvent(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setFocusedChild(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->focusedChild:Landroidx/compose/ui/focus/FocusModifier;

    .line 2
    .line 3
    return-void
.end method

.method public final setLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setModifierLocalReadScope(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
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
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->modifierLocalReadScope:Landroidx/compose/ui/modifier/ModifierLocalReadScope;

    .line 7
    .line 8
    return-void
.end method

.method public final setParent(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusModifier;->parent:Landroidx/compose/ui/focus/FocusModifier;

    .line 2
    .line 3
    return-void
.end method
