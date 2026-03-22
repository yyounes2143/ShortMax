.class public final Landroidx/compose/ui/focus/FocusModifierKt;
.super Ljava/lang/Object;
.source "FocusModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusModifierKt$ModifierLocalParentFocusModifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$ModifierLocalParentFocusModifier$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$1;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$1;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$2;

    .line 21
    .line 22
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$2;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$3;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusModifierKt$ResetFocusModifierLocals$3;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    return-void
.end method

.method public static final focusModifier(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
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
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$$inlined$debugInspectorInfo$1;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    sget-object v1, Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$focusModifier$2;

    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final focusTarget(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 3
    :goto_0
    sget-object v1, Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$2;->INSTANCE:Landroidx/compose/ui/focus/FocusModifierKt$focusTarget$2;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusTarget(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusModifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/focus/FocusModifierKt;->ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final getModifierLocalParentFocusModifier()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
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
    sget-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ModifierLocalParentFocusModifier:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getResetFocusModifierLocals()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusModifierKt;->ResetFocusModifierLocals:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method
