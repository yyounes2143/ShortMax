.class public final Landroidx/compose/ui/text/android/animation/Segment;
.super Ljava/lang/Object;
.source "SegmentBreaker.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bottom:I

.field private final endOffset:I

.field private final left:I

.field private final right:I

.field private final startOffset:I

.field private final top:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/text/android/animation/Segment;IIIIIIILjava/lang/Object;)Landroidx/compose/ui/text/android/animation/Segment;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 12
    .line 13
    :cond_1
    move p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget p6, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    move-object p2, p0

    .line 43
    move p3, p1

    .line 44
    move p4, p8

    .line 45
    move p5, v0

    .line 46
    move p6, v1

    .line 47
    move p7, v2

    .line 48
    move p8, v3

    .line 49
    invoke-virtual/range {p2 .. p8}, Landroidx/compose/ui/text/android/animation/Segment;->copy(IIIIII)Landroidx/compose/ui/text/android/animation/Segment;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIIIII)Landroidx/compose/ui/text/android/animation/Segment;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/compose/ui/text/android/animation/Segment;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/android/animation/Segment;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/android/animation/Segment;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 28
    .line 29
    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 35
    .line 36
    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 42
    .line 43
    iget v3, p1, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 49
    .line 50
    iget p1, p1, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 51
    .line 52
    if-eq v1, p1, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    return v0
.end method

.method public final getBottom()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEndOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStartOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Segment(startOffset="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->startOffset:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", endOffset="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->endOffset:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", left="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->left:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", top="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->top:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", right="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->right:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", bottom="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/text/android/animation/Segment;->bottom:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
