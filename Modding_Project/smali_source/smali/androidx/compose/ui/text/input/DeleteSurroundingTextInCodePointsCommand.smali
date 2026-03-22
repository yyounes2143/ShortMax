.class public final Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;
.super Ljava/lang/Object;
.source "EditCommand.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final lengthAfterCursor:I

.field private final lengthBeforeCursor:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    if-ltz p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " and "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " respectively."

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2
.end method


# virtual methods
.method public applyTo(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 7
    .param p1    # Landroidx/compose/ui/text/input/EditingBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 v4, v3, 0x1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-le v5, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    sub-int/2addr v5, v4

    .line 26
    add-int/lit8 v5, v5, -0x1

    .line 27
    .line 28
    invoke-virtual {p1, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->get$ui_text_release(I)C

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    sub-int/2addr v6, v4

    .line 37
    invoke-virtual {p1, v6}, Landroidx/compose/ui/text/input/EditingBuffer;->get$ui_text_release(I)C

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v5, v6}, Landroidx/compose/ui/text/input/EditCommandKt;->access$isSurrogatePair(CC)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v3, v4

    .line 51
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eq v3, v4, :cond_1

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 61
    .line 62
    move v2, v1

    .line 63
    :goto_2
    if-ge v1, v0, :cond_3

    .line 64
    .line 65
    add-int/lit8 v4, v2, 0x1

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/2addr v5, v4

    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getLength$ui_text_release()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-ge v5, v6, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    add-int/2addr v5, v4

    .line 83
    add-int/lit8 v5, v5, -0x1

    .line 84
    .line 85
    invoke-virtual {p1, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->get$ui_text_release(I)C

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    add-int/2addr v6, v4

    .line 94
    invoke-virtual {p1, v6}, Landroidx/compose/ui/text/input/EditingBuffer;->get$ui_text_release(I)C

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-static {v5, v6}, Landroidx/compose/ui/text/input/EditCommandKt;->access$isSurrogatePair(CC)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x2

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    move v2, v4

    .line 108
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    add-int/2addr v4, v2

    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getLength$ui_text_release()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eq v4, v5, :cond_3

    .line 118
    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    add-int/2addr v1, v2

    .line 131
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    sub-int/2addr v0, v3

    .line 139
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    .line 144
    .line 145
    .line 146
    return-void
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
    instance-of v1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

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
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 21
    .line 22
    iget p1, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 23
    .line 24
    if-eq v1, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public final getLengthAfterCursor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLengthBeforeCursor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
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
    const-string v1, "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthBeforeCursor:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", lengthAfterCursor="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->lengthAfterCursor:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
