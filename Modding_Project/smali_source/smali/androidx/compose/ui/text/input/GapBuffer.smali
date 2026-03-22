.class final Landroidx/compose/ui/text/input/GapBuffer;
.super Ljava/lang/Object;
.source "GapBuffer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private buffer:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private capacity:I

.field private gapEnd:I

.field private gapStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 1
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initBuffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v0, p1

    .line 10
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 13
    .line 14
    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 15
    .line 16
    iput p3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 17
    .line 18
    return-void
.end method

.method private final delete(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    if-gt p2, v0, :cond_0

    .line 6
    .line 7
    sub-int v1, v0, p2

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 10
    .line 11
    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 12
    .line 13
    sub-int/2addr v3, v1

    .line 14
    invoke-static {v2, v2, v3, p2, v0}, Lkotlin/collections/n;->i([C[CIII)[C

    .line 15
    .line 16
    .line 17
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 18
    .line 19
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 20
    .line 21
    sub-int/2addr p1, v1

    .line 22
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-ge p1, v0, :cond_1

    .line 26
    .line 27
    if-lt p2, v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 35
    .line 36
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr p1, v0

    .line 44
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr p2, v0

    .line 49
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 50
    .line 51
    sub-int v1, p1, v0

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 54
    .line 55
    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 56
    .line 57
    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/n;->i([C[CIII)[C

    .line 58
    .line 59
    .line 60
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 61
    .line 62
    add-int/2addr p1, v1

    .line 63
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 64
    .line 65
    iput p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method private final gapLength()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method private final makeSureAvailableSpace(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int/2addr p1, v0

    .line 13
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 14
    .line 15
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 18
    .line 19
    sub-int v1, v0, v1

    .line 20
    .line 21
    if-ge v1, p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-array p1, v0, [C

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 27
    .line 28
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v1, p1, v3, v3, v2}, Lkotlin/collections/n;->i([C[CIII)[C

    .line 32
    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 35
    .line 36
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    sub-int v3, v0, v1

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    invoke-static {v4, p1, v3, v2, v1}, Lkotlin/collections/n;->i([C[CIII)[C

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 48
    .line 49
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 50
    .line 51
    iput v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 17
    .line 18
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 19
    .line 20
    sub-int/2addr v2, v1

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final get(I)C
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 6
    .line 7
    aget-char p1, v0, p1

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 14
    .line 15
    add-int/2addr p1, v0

    .line 16
    aget-char p1, v1, p1

    .line 17
    .line 18
    return p1
.end method

.method public final length()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/input/GapBuffer;->gapLength()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public final replace(IILjava/lang/String;)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-int v1, p2, p1

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->makeSureAvailableSpace(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/input/GapBuffer;->delete(II)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:[C

    .line 20
    .line 21
    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 22
    .line 23
    const/16 v6, 0xc

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, p3

    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/GapBufferKt;->toCharArray$default(Ljava/lang/String;[CIIIILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    add-int/2addr p1, p2

    .line 39
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 40
    .line 41
    return-void
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
    invoke-virtual {v0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "StringBuilder().apply { append(this) }.toString()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
