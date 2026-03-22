.class public interface abstract Landroidx/compose/runtime/IntState;
.super Ljava/lang/Object;
.source "SnapshotIntState.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/IntState$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$getValue$jd(Landroidx/compose/runtime/IntState;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/IntState;->getValue()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public abstract getIntValue()I
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "intValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
