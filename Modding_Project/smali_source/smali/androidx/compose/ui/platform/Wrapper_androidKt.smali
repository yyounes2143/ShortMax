.class public final Landroidx/compose/ui/platform/Wrapper_androidKt;
.super Ljava/lang/Object;
.source "Wrapper.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Wrapper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/Wrapper_androidKt;->DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    return-void
.end method

.method public static final createSubcomposition(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;
    .locals 1
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/node/UiApplier;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/UiApplier;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Landroidx/compose/runtime/CompositionKt;->Composition(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static final doSetContent(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 2
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/Composition;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/Wrapper_androidKt;->inspectionWanted(Landroidx/compose/ui/platform/AndroidComposeView;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Landroidx/compose/ui/R$id;->inspection_slot_table_set:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/ui/platform/Wrapper_androidKt;->enableDebugInspectorInfo()V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/UiApplier;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/UiApplier;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Landroidx/compose/runtime/CompositionKt;->Composition(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Landroidx/compose/ui/R$id;->wrapped_composition_tag:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    instance-of v1, v0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    check-cast v0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/WrappedComposition;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/Composition;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    sget p1, Landroidx/compose/ui/R$id;->wrapped_composition_tag:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/ui/platform/WrappedComposition;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private static final enableDebugInspectorInfo()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Landroidx/compose/ui/platform/InspectableValueKt;

    .line 8
    .line 9
    const-string v1, "isDebugInspectorInfoEnabled"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    sget-object v0, Landroidx/compose/ui/platform/Wrapper_androidKt;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Could not access isDebugInspectorInfoEnabled. Please set explicitly."

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method private static final inspectionWanted(Landroidx/compose/ui/platform/AndroidComposeView;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;->attributeSourceResourceMap(Landroid/view/View;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static final setContent(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 3
    .param p0    # Landroidx/compose/ui/platform/AbstractComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AbstractComposeView;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/Composition;"
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
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "content"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/platform/GlobalSnapshotManager;->INSTANCE:Landroidx/compose/ui/platform/GlobalSnapshotManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GlobalSnapshotManager;->ensureStarted()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "context"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v2, Landroidx/compose/ui/platform/Wrapper_androidKt;->DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v1, p1, p2}, Landroidx/compose/ui/platform/Wrapper_androidKt;->doSetContent(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
