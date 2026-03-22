.class public final Landroidx/compose/runtime/BitwiseOperatorsKt;
.super Ljava/lang/Object;
.source "BitwiseOperators.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final rol(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method public static final rol(JI)J
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final ror(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method public static final ror(JI)J
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method
