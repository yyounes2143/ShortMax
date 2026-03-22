.class public final Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $draggableState$inlined:Landroidx/compose/foundation/gestures/DraggableState;

.field final synthetic $enabled$inlined:Z

.field final synthetic $gestureEndAction$inlined:Landroidx/compose/runtime/State;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isRtl$inlined:Z

.field final synthetic $maxPx$inlined:F

.field final synthetic $pressOffset$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $rawOffset$inlined:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$draggableState$inlined:Landroidx/compose/foundation/gestures/DraggableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$maxPx$inlined:F

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$isRtl$inlined:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$rawOffset$inlined:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$gestureEndAction$inlined:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$pressOffset$inlined:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    iput-boolean p8, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/platform/InspectorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "sliderTapModifier"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "draggableState"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$draggableState$inlined:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$maxPx$inlined:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "maxPx"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$isRtl$inlined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRtl"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "rawOffset"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$rawOffset$inlined:Landroidx/compose/runtime/State;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "gestureEndAction"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$gestureEndAction$inlined:Landroidx/compose/runtime/State;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "pressOffset"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$pressOffset$inlined:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
