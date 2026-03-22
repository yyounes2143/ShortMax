.class public final Landroidx/compose/material/FabPlacement;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final height:I

.field private final isDocked:Z

.field private final left:I

.field private final width:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material/FabPlacement;->isDocked:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/FabPlacement;->left:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material/FabPlacement;->width:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/FabPlacement;->height:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/FabPlacement;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/FabPlacement;->left:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/FabPlacement;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final isDocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material/FabPlacement;->isDocked:Z

    .line 2
    .line 3
    return v0
.end method
