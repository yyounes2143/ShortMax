.class public final Landroidx/compose/material/TouchTargetKt;
.super Ljava/lang/Object;
.source "TouchTarget.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TouchTargetKt$LocalMinimumTouchTargetEnforcement$1;->INSTANCE:Landroidx/compose/material/TouchTargetKt$LocalMinimumTouchTargetEnforcement$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material/TouchTargetKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    return-void
.end method

.method public static final getLocalMinimumTouchTargetEnforcement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/TouchTargetKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getLocalMinimumTouchTargetEnforcement$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static final minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1;-><init>()V

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
    sget-object v1, Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$2;->INSTANCE:Landroidx/compose/material/TouchTargetKt$minimumTouchTargetSize$2;

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
