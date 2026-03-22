.class public interface abstract Landroidx/compose/ui/layout/Measured;
.super Ljava/lang/Object;
.source "Measured.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract get(Landroidx/compose/ui/layout/AlignmentLine;)I
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getMeasuredHeight()I
.end method

.method public abstract getMeasuredWidth()I
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
