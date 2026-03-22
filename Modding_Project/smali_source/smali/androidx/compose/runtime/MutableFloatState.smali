.class public interface abstract Landroidx/compose/runtime/MutableFloatState;
.super Ljava/lang/Object;
.source "SnapshotFloatState.kt"

# interfaces
.implements Landroidx/compose/runtime/FloatState;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MutableFloatState$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/FloatState;",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$getValue$jd(Landroidx/compose/runtime/MutableFloatState;)F
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/MutableFloatState;->getValue()Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static synthetic access$setValue$jd(Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setValue(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getFloatValue()F
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "floatValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public abstract setFloatValue(F)V
.end method

.method public setValue(F)V
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "floatValue"
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setValue(F)V

    return-void
.end method
