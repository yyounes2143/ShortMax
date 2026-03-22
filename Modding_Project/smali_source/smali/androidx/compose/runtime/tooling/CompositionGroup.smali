.class public interface abstract Landroidx/compose/runtime/tooling/CompositionGroup;
.super Ljava/lang/Object;
.source "CompositionData.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/tooling/CompositionGroup$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$find$jd(Landroidx/compose/runtime/tooling/CompositionGroup;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/runtime/tooling/CompositionData;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$getGroupSize$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getGroupSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$getIdentity$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getIdentity()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$getSlotsSize$jd(Landroidx/compose/runtime/tooling/CompositionGroup;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/compose/runtime/tooling/CompositionGroup;->getSlotsSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public abstract getData()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getGroupSize()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getNode()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public getSlotsSize()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getSourceInfo()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
