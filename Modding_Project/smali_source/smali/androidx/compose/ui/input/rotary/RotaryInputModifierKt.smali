.class public final Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;
.super Ljava/lang/Object;
.source "RotaryInputModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ModifierLocalRotaryScrollParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/focus/FocusAwareInputModifier<",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$ModifierLocalRotaryScrollParent$1;->INSTANCE:Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$ModifierLocalRotaryScrollParent$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->ModifierLocalRotaryScrollParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 8
    .line 9
    return-void
.end method

.method private static final focusAwareCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/focus/FocusAwareEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$focusAwareCallback$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$focusAwareCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final getModifierLocalRotaryScrollParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/focus/FocusAwareInputModifier<",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->ModifierLocalRotaryScrollParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getModifierLocalRotaryScrollParent$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static final onPreRotaryScrollEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
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
    const-string v0, "onPreRotaryScrollEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onPreRotaryScrollEvent$$inlined$debugInspectorInfo$1;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onPreRotaryScrollEvent$$inlined$debugInspectorInfo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->focusAwareCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->ModifierLocalRotaryScrollParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v1, v3, p1, v2}, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/modifier/ProvidableModifierLocal;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/platform/InspectableValueKt;->inspectableWrapper(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final onRotaryScrollEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
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
    const-string v0, "onRotaryScrollEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$debugInspectorInfo$1;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt$onRotaryScrollEvent$$inlined$debugInspectorInfo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->focusAwareCallback(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v2, 0x0

    .line 36
    sget-object v3, Landroidx/compose/ui/input/rotary/RotaryInputModifierKt;->ModifierLocalRotaryScrollParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 37
    .line 38
    invoke-direct {v1, p1, v2, v3}, Landroidx/compose/ui/input/focus/FocusAwareInputModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/modifier/ProvidableModifierLocal;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/platform/InspectableValueKt;->inspectableWrapper(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
