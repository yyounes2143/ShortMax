.class public final Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;
.super Ljava/lang/Object;
.source "SelectionManager.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final isCopyKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "keyEvent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static final selectionMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/SelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ModifierInspectorInfo"
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
    const-string v0, "manager"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->getTextDefault()Landroidx/compose/foundation/MagnifierStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/compose/foundation/MagnifierStyle;->isSupported()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$selectionMagnifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p0, v1, v0, p1, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
