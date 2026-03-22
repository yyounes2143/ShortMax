.class public interface abstract Landroidx/compose/runtime/MutableDoubleState;
.super Ljava/lang/Object;
.source "SnapshotDoubleState.kt"

# interfaces
.implements Landroidx/compose/runtime/DoubleState;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MutableDoubleState$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/DoubleState;",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$getValue$jd(Landroidx/compose/runtime/MutableDoubleState;)D
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/MutableDoubleState;->getValue()Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static synthetic access$setValue$jd(Landroidx/compose/runtime/MutableDoubleState;D)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setValue(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getDoubleValue()D
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "doubleValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/MutableDoubleState;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public abstract setDoubleValue(D)V
.end method

.method public setValue(D)V
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "doubleValue"
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableDoubleState;->setDoubleValue(D)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableDoubleState;->setValue(D)V

    return-void
.end method
