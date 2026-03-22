.class public final Landroidx/compose/foundation/Clickable_androidKt;
.super Ljava/lang/Object;
.source "Clickable.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final TapIndicationDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    sput-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$isInScrollableViewGroup(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->isInScrollableViewGroup(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final getTapIndicationDelay()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/Clickable_androidKt;->TapIndicationDelay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final isClick-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$isClick"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/Key_androidKt;->getNativeKeyCode-YVgTNJs(J)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/16 v0, 0x17

    .line 31
    .line 32
    if-eq p0, v0, :cond_0

    .line 33
    .line 34
    const/16 v0, 0x42

    .line 35
    .line 36
    if-eq p0, v0, :cond_0

    .line 37
    .line 38
    const/16 v0, 0xa0

    .line 39
    .line 40
    if-eq p0, v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0
.end method

.method public static final isComposeRootInScrollableContainer(Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p1, -0x76a4c0a8

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/Clickable_androidKt$isComposeRootInScrollableContainer$1;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/compose/foundation/Clickable_androidKt$isComposeRootInScrollableContainer$1;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static final isInScrollableViewGroup(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method
