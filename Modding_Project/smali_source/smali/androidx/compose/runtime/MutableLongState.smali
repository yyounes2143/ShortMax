.class public interface abstract Landroidx/compose/runtime/MutableLongState;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"

# interfaces
.implements Landroidx/compose/runtime/LongState;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/MutableLongState$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/LongState;",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$getValue$jd(Landroidx/compose/runtime/MutableLongState;)J
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/MutableLongState;->getValue()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static synthetic access$setValue$jd(Landroidx/compose/runtime/MutableLongState;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setValue(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getLongValue()J
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "longValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-interface {p0}, Landroidx/compose/runtime/MutableLongState;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/MutableLongState;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public abstract setLongValue(J)V
.end method

.method public setValue(J)V
    .locals 0
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "longValue"
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/MutableLongState;->setLongValue(J)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/MutableLongState;->setValue(J)V

    return-void
.end method
