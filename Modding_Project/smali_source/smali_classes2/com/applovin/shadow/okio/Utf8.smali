.class public final Lcom/applovin/shadow/okio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,559:1\n397#1,9:563\n127#1:572\n406#1,20:574\n440#1,4:595\n127#1:599\n446#1,10:601\n127#1:611\n456#1,5:612\n127#1:617\n461#1,24:618\n500#1,4:643\n127#1:647\n506#1,2:649\n127#1:651\n510#1,10:652\n127#1:662\n520#1,5:663\n127#1:668\n525#1,5:669\n127#1:674\n530#1,28:675\n397#1,9:704\n127#1:713\n406#1,20:715\n440#1,4:736\n127#1:740\n446#1,10:742\n127#1:752\n456#1,5:753\n127#1:758\n461#1,24:759\n500#1,4:784\n127#1:788\n506#1,2:790\n127#1:792\n510#1,10:793\n127#1:803\n520#1,5:804\n127#1:809\n525#1,5:810\n127#1:815\n530#1,28:816\n127#1:844\n127#1:846\n127#1:848\n127#1:850\n127#1:852\n127#1:854\n127#1:856\n127#1:858\n127#1:860\n1#2:560\n74#3:561\n68#3:562\n74#3:573\n68#3:594\n74#3:600\n68#3:642\n74#3:648\n68#3:703\n74#3:714\n68#3:735\n74#3:741\n68#3:783\n74#3:789\n74#3:845\n74#3:847\n74#3:849\n74#3:851\n74#3:853\n74#3:855\n74#3:857\n74#3:859\n74#3:861\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n228#1:563,9\n228#1:572\n228#1:574,20\n232#1:595,4\n232#1:599\n232#1:601,10\n232#1:611\n232#1:612,5\n232#1:617\n232#1:618,24\n236#1:643,4\n236#1:647\n236#1:649,2\n236#1:651\n236#1:652,10\n236#1:662\n236#1:663,5\n236#1:668\n236#1:669,5\n236#1:674\n236#1:675,28\n277#1:704,9\n277#1:713\n277#1:715,20\n281#1:736,4\n281#1:740\n281#1:742,10\n281#1:752\n281#1:753,5\n281#1:758\n281#1:759,24\n285#1:784,4\n285#1:788\n285#1:790,2\n285#1:792\n285#1:793,10\n285#1:803\n285#1:804,5\n285#1:809\n285#1:810,5\n285#1:815\n285#1:816,28\n405#1:844\n443#1:846\n455#1:848\n460#1:850\n503#1:852\n507#1:854\n519#1:856\n524#1:858\n529#1:860\n127#1:561\n226#1:562\n228#1:573\n230#1:594\n232#1:600\n234#1:642\n236#1:648\n275#1:703\n277#1:714\n279#1:735\n281#1:741\n283#1:783\n285#1:789\n405#1:845\n443#1:847\n455#1:849\n460#1:851\n503#1:853\n507#1:855\n519#1:857\n524#1:859\n529#1:861\n*E\n"
    }
.end annotation


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x7f

    .line 9
    .line 10
    if-gt v0, p0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xa0

    .line 13
    .line 14
    if-ge p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_1
    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xc0

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final process2Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 3
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "yield"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    const v1, 0xfffd

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-gt p2, v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    aget-byte p1, p0, p1

    .line 29
    .line 30
    aget-byte p0, p0, v0

    .line 31
    .line 32
    and-int/lit16 p2, p0, 0xc0

    .line 33
    .line 34
    const/16 v0, 0x80

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    xor-int/lit16 p0, p0, 0xf80

    .line 39
    .line 40
    shl-int/lit8 p1, p1, 0x6

    .line 41
    .line 42
    xor-int/2addr p0, p1

    .line 43
    if-ge p0, v0, :cond_1

    .line 44
    .line 45
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 p0, 0x2

    .line 57
    return p0

    .line 58
    :cond_2
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return v2
.end method

.method public static final process3Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "yield"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x2

    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const v3, 0xfffd

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x2

    .line 25
    if-gt p2, v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/2addr p1, v2

    .line 31
    if-le p2, p1, :cond_0

    .line 32
    .line 33
    aget-byte p0, p0, p1

    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xc0

    .line 36
    .line 37
    if-ne p0, v1, :cond_0

    .line 38
    .line 39
    return v4

    .line 40
    :cond_0
    return v2

    .line 41
    :cond_1
    aget-byte p2, p0, p1

    .line 42
    .line 43
    add-int/2addr p1, v2

    .line 44
    aget-byte p1, p0, p1

    .line 45
    .line 46
    and-int/lit16 v5, p1, 0xc0

    .line 47
    .line 48
    if-ne v5, v1, :cond_5

    .line 49
    .line 50
    aget-byte p0, p0, v0

    .line 51
    .line 52
    and-int/lit16 v0, p0, 0xc0

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    const v0, -0x1e080

    .line 57
    .line 58
    .line 59
    xor-int/2addr p0, v0

    .line 60
    shl-int/lit8 p1, p1, 0x6

    .line 61
    .line 62
    xor-int/2addr p0, p1

    .line 63
    shl-int/lit8 p1, p2, 0xc

    .line 64
    .line 65
    xor-int/2addr p0, p1

    .line 66
    const/16 p1, 0x800

    .line 67
    .line 68
    if-ge p0, p1, :cond_2

    .line 69
    .line 70
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const p1, 0xd800

    .line 75
    .line 76
    .line 77
    if-gt p1, p0, :cond_3

    .line 78
    .line 79
    const p1, 0xe000

    .line 80
    .line 81
    .line 82
    if-ge p0, p1, :cond_3

    .line 83
    .line 84
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_0
    const/4 p0, 0x3

    .line 96
    return p0

    .line 97
    :cond_4
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    return v4

    .line 101
    :cond_5
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    return v2
.end method

.method public static final process4Utf8Bytes([BIILkotlin/jvm/functions/Function1;)I
    .locals 8
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "yield"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    const v4, 0xfffd

    .line 19
    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x3

    .line 26
    if-gt p2, v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    add-int/lit8 p3, p1, 0x1

    .line 32
    .line 33
    if-le p2, p3, :cond_1

    .line 34
    .line 35
    aget-byte p3, p0, p3

    .line 36
    .line 37
    and-int/lit16 p3, p3, 0xc0

    .line 38
    .line 39
    if-ne p3, v3, :cond_1

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    if-le p2, p1, :cond_0

    .line 43
    .line 44
    aget-byte p0, p0, p1

    .line 45
    .line 46
    and-int/lit16 p0, p0, 0xc0

    .line 47
    .line 48
    if-ne p0, v3, :cond_0

    .line 49
    .line 50
    return v5

    .line 51
    :cond_0
    return v1

    .line 52
    :cond_1
    return v2

    .line 53
    :cond_2
    aget-byte p2, p0, p1

    .line 54
    .line 55
    add-int/lit8 v6, p1, 0x1

    .line 56
    .line 57
    aget-byte v6, p0, v6

    .line 58
    .line 59
    and-int/lit16 v7, v6, 0xc0

    .line 60
    .line 61
    if-ne v7, v3, :cond_8

    .line 62
    .line 63
    add-int/2addr p1, v1

    .line 64
    aget-byte p1, p0, p1

    .line 65
    .line 66
    and-int/lit16 v2, p1, 0xc0

    .line 67
    .line 68
    if-ne v2, v3, :cond_7

    .line 69
    .line 70
    aget-byte p0, p0, v0

    .line 71
    .line 72
    and-int/lit16 v0, p0, 0xc0

    .line 73
    .line 74
    if-ne v0, v3, :cond_6

    .line 75
    .line 76
    const v0, 0x381f80

    .line 77
    .line 78
    .line 79
    xor-int/2addr p0, v0

    .line 80
    shl-int/lit8 p1, p1, 0x6

    .line 81
    .line 82
    xor-int/2addr p0, p1

    .line 83
    shl-int/lit8 p1, v6, 0xc

    .line 84
    .line 85
    xor-int/2addr p0, p1

    .line 86
    shl-int/lit8 p1, p2, 0x12

    .line 87
    .line 88
    xor-int/2addr p0, p1

    .line 89
    const p1, 0x10ffff

    .line 90
    .line 91
    .line 92
    if-le p0, p1, :cond_3

    .line 93
    .line 94
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const p1, 0xd800

    .line 99
    .line 100
    .line 101
    if-gt p1, p0, :cond_4

    .line 102
    .line 103
    const p1, 0xe000

    .line 104
    .line 105
    .line 106
    if-ge p0, p1, :cond_4

    .line 107
    .line 108
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const/high16 p1, 0x10000

    .line 113
    .line 114
    if-ge p0, p1, :cond_5

    .line 115
    .line 116
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_0
    const/4 p0, 0x4

    .line 128
    return p0

    .line 129
    :cond_6
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return v5

    .line 133
    :cond_7
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_8
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return v2
.end method

.method public static final processUtf16Chars([BIILkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const-string v7, "<this>"

    .line 12
    .line 13
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v7, "yield"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move/from16 v7, p1

    .line 23
    .line 24
    :cond_0
    :goto_0
    if-ge v7, v1, :cond_18

    .line 25
    .line 26
    aget-byte v8, v0, v7

    .line 27
    .line 28
    if-ltz v8, :cond_1

    .line 29
    .line 30
    int-to-char v8, v8

    .line 31
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    add-int/2addr v7, v6

    .line 39
    :goto_1
    if-ge v7, v1, :cond_0

    .line 40
    .line 41
    aget-byte v8, v0, v7

    .line 42
    .line 43
    if-ltz v8, :cond_0

    .line 44
    .line 45
    add-int/2addr v7, v6

    .line 46
    int-to-char v8, v8

    .line 47
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    shr-int/lit8 v9, v8, 0x5

    .line 56
    .line 57
    const/4 v10, -0x2

    .line 58
    const/16 v11, 0x80

    .line 59
    .line 60
    const v12, 0xfffd

    .line 61
    .line 62
    .line 63
    if-ne v9, v10, :cond_6

    .line 64
    .line 65
    add-int/lit8 v9, v7, 0x1

    .line 66
    .line 67
    if-gt v1, v9, :cond_4

    .line 68
    .line 69
    :cond_2
    int-to-char v8, v12

    .line 70
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    :cond_3
    :goto_2
    move v8, v6

    .line 80
    goto :goto_5

    .line 81
    :cond_4
    aget-byte v9, v0, v9

    .line 82
    .line 83
    and-int/lit16 v10, v9, 0xc0

    .line 84
    .line 85
    if-ne v10, v11, :cond_2

    .line 86
    .line 87
    xor-int/lit16 v9, v9, 0xf80

    .line 88
    .line 89
    shl-int/lit8 v8, v8, 0x6

    .line 90
    .line 91
    xor-int/2addr v8, v9

    .line 92
    if-ge v8, v11, :cond_5

    .line 93
    .line 94
    int-to-char v8, v12

    .line 95
    :goto_3
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    int-to-char v8, v8

    .line 106
    goto :goto_3

    .line 107
    :goto_4
    move v8, v5

    .line 108
    :goto_5
    add-int/2addr v7, v8

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    shr-int/lit8 v9, v8, 0x4

    .line 111
    .line 112
    const v13, 0xe000

    .line 113
    .line 114
    .line 115
    const v14, 0xd800

    .line 116
    .line 117
    .line 118
    if-ne v9, v10, :cond_c

    .line 119
    .line 120
    add-int/lit8 v9, v7, 0x2

    .line 121
    .line 122
    if-gt v1, v9, :cond_7

    .line 123
    .line 124
    int-to-char v8, v12

    .line 125
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    add-int/lit8 v8, v7, 0x1

    .line 135
    .line 136
    if-le v1, v8, :cond_3

    .line 137
    .line 138
    aget-byte v8, v0, v8

    .line 139
    .line 140
    and-int/lit16 v8, v8, 0xc0

    .line 141
    .line 142
    if-ne v8, v11, :cond_3

    .line 143
    .line 144
    :goto_6
    goto :goto_4

    .line 145
    :cond_7
    add-int/lit8 v10, v7, 0x1

    .line 146
    .line 147
    aget-byte v10, v0, v10

    .line 148
    .line 149
    and-int/lit16 v15, v10, 0xc0

    .line 150
    .line 151
    if-ne v15, v11, :cond_b

    .line 152
    .line 153
    aget-byte v9, v0, v9

    .line 154
    .line 155
    and-int/lit16 v15, v9, 0xc0

    .line 156
    .line 157
    if-ne v15, v11, :cond_a

    .line 158
    .line 159
    const v11, -0x1e080

    .line 160
    .line 161
    .line 162
    xor-int/2addr v9, v11

    .line 163
    shl-int/lit8 v10, v10, 0x6

    .line 164
    .line 165
    xor-int/2addr v9, v10

    .line 166
    shl-int/lit8 v8, v8, 0xc

    .line 167
    .line 168
    xor-int/2addr v8, v9

    .line 169
    const/16 v9, 0x800

    .line 170
    .line 171
    if-ge v8, v9, :cond_8

    .line 172
    .line 173
    :goto_7
    int-to-char v8, v12

    .line 174
    :goto_8
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_8
    if-gt v14, v8, :cond_9

    .line 185
    .line 186
    if-ge v8, v13, :cond_9

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    int-to-char v8, v8

    .line 190
    goto :goto_8

    .line 191
    :goto_9
    move v8, v4

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    int-to-char v8, v12

    .line 194
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    int-to-char v8, v12

    .line 205
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :cond_c
    shr-int/lit8 v9, v8, 0x3

    .line 217
    .line 218
    if-ne v9, v10, :cond_17

    .line 219
    .line 220
    add-int/lit8 v9, v7, 0x3

    .line 221
    .line 222
    if-gt v1, v9, :cond_f

    .line 223
    .line 224
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    add-int/lit8 v8, v7, 0x1

    .line 234
    .line 235
    if-le v1, v8, :cond_e

    .line 236
    .line 237
    aget-byte v8, v0, v8

    .line 238
    .line 239
    and-int/lit16 v8, v8, 0xc0

    .line 240
    .line 241
    if-ne v8, v11, :cond_e

    .line 242
    .line 243
    add-int/lit8 v8, v7, 0x2

    .line 244
    .line 245
    if-le v1, v8, :cond_d

    .line 246
    .line 247
    aget-byte v8, v0, v8

    .line 248
    .line 249
    and-int/lit16 v8, v8, 0xc0

    .line 250
    .line 251
    if-ne v8, v11, :cond_d

    .line 252
    .line 253
    :goto_a
    move v3, v4

    .line 254
    goto/16 :goto_10

    .line 255
    .line 256
    :cond_d
    :goto_b
    move v3, v5

    .line 257
    goto/16 :goto_10

    .line 258
    .line 259
    :cond_e
    :goto_c
    move v3, v6

    .line 260
    goto/16 :goto_10

    .line 261
    .line 262
    :cond_f
    add-int/lit8 v10, v7, 0x1

    .line 263
    .line 264
    aget-byte v10, v0, v10

    .line 265
    .line 266
    and-int/lit16 v15, v10, 0xc0

    .line 267
    .line 268
    if-ne v15, v11, :cond_16

    .line 269
    .line 270
    add-int/lit8 v15, v7, 0x2

    .line 271
    .line 272
    aget-byte v15, v0, v15

    .line 273
    .line 274
    and-int/lit16 v3, v15, 0xc0

    .line 275
    .line 276
    if-ne v3, v11, :cond_15

    .line 277
    .line 278
    aget-byte v3, v0, v9

    .line 279
    .line 280
    and-int/lit16 v9, v3, 0xc0

    .line 281
    .line 282
    if-ne v9, v11, :cond_14

    .line 283
    .line 284
    const v9, 0x381f80

    .line 285
    .line 286
    .line 287
    xor-int/2addr v3, v9

    .line 288
    shl-int/lit8 v9, v15, 0x6

    .line 289
    .line 290
    xor-int/2addr v3, v9

    .line 291
    shl-int/lit8 v9, v10, 0xc

    .line 292
    .line 293
    xor-int/2addr v3, v9

    .line 294
    shl-int/lit8 v8, v8, 0x12

    .line 295
    .line 296
    xor-int/2addr v3, v8

    .line 297
    const v8, 0x10ffff

    .line 298
    .line 299
    .line 300
    if-le v3, v8, :cond_11

    .line 301
    .line 302
    :cond_10
    :goto_d
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    :goto_e
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 310
    .line 311
    goto :goto_f

    .line 312
    :cond_11
    if-gt v14, v3, :cond_12

    .line 313
    .line 314
    if-ge v3, v13, :cond_12

    .line 315
    .line 316
    goto :goto_d

    .line 317
    :cond_12
    const/high16 v8, 0x10000

    .line 318
    .line 319
    if-ge v3, v8, :cond_13

    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_13
    if-eq v3, v12, :cond_10

    .line 323
    .line 324
    ushr-int/lit8 v8, v3, 0xa

    .line 325
    .line 326
    const v9, 0xd7c0

    .line 327
    .line 328
    .line 329
    add-int/2addr v8, v9

    .line 330
    int-to-char v8, v8

    .line 331
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    and-int/lit16 v3, v3, 0x3ff

    .line 339
    .line 340
    const v8, 0xdc00

    .line 341
    .line 342
    .line 343
    add-int/2addr v3, v8

    .line 344
    int-to-char v3, v3

    .line 345
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    goto :goto_e

    .line 353
    :goto_f
    const/4 v3, 0x4

    .line 354
    goto :goto_10

    .line 355
    :cond_14
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_15
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_16
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :goto_10
    add-int/2addr v7, v3

    .line 386
    :goto_11
    const/4 v3, 0x4

    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_17
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    add-int/2addr v7, v6

    .line 397
    goto :goto_11

    .line 398
    :cond_18
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "yield"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x80

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gez v2, :cond_1

    .line 25
    .line 26
    int-to-byte v0, v0

    .line 27
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    :goto_1
    if-ge p1, p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    add-int/lit8 v0, p1, 0x1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-byte p1, p1

    .line 55
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move p1, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/16 v2, 0x800

    .line 65
    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-gez v2, :cond_2

    .line 71
    .line 72
    shr-int/lit8 v2, v0, 0x6

    .line 73
    .line 74
    or-int/lit16 v2, v2, 0xc0

    .line 75
    .line 76
    int-to-byte v2, v2

    .line 77
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    and-int/lit8 v0, v0, 0x3f

    .line 85
    .line 86
    or-int/2addr v0, v1

    .line 87
    int-to-byte v0, v0

    .line 88
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const v2, 0xd800

    .line 99
    .line 100
    .line 101
    const/16 v3, 0x3f

    .line 102
    .line 103
    if-gt v2, v0, :cond_4

    .line 104
    .line 105
    const v2, 0xe000

    .line 106
    .line 107
    .line 108
    if-ge v0, v2, :cond_4

    .line 109
    .line 110
    const v4, 0xdbff

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-gtz v4, :cond_3

    .line 118
    .line 119
    add-int/lit8 v4, p1, 0x1

    .line 120
    .line 121
    if-le p2, v4, :cond_3

    .line 122
    .line 123
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const v6, 0xdc00

    .line 128
    .line 129
    .line 130
    if-gt v6, v5, :cond_3

    .line 131
    .line 132
    if-ge v5, v2, :cond_3

    .line 133
    .line 134
    shl-int/lit8 v0, v0, 0xa

    .line 135
    .line 136
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    add-int/2addr v0, v2

    .line 141
    const v2, -0x35fdc00

    .line 142
    .line 143
    .line 144
    add-int/2addr v0, v2

    .line 145
    shr-int/lit8 v2, v0, 0x12

    .line 146
    .line 147
    or-int/lit16 v2, v2, 0xf0

    .line 148
    .line 149
    int-to-byte v2, v2

    .line 150
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    shr-int/lit8 v2, v0, 0xc

    .line 158
    .line 159
    and-int/2addr v2, v3

    .line 160
    or-int/2addr v2, v1

    .line 161
    int-to-byte v2, v2

    .line 162
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    shr-int/lit8 v2, v0, 0x6

    .line 170
    .line 171
    and-int/2addr v2, v3

    .line 172
    or-int/2addr v2, v1

    .line 173
    int-to-byte v2, v2

    .line 174
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    and-int/2addr v0, v3

    .line 182
    or-int/2addr v0, v1

    .line 183
    int-to-byte v0, v0

    .line 184
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    add-int/lit8 p1, p1, 0x2

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    shr-int/lit8 v2, v0, 0xc

    .line 204
    .line 205
    or-int/lit16 v2, v2, 0xe0

    .line 206
    .line 207
    int-to-byte v2, v2

    .line 208
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    shr-int/lit8 v2, v0, 0x6

    .line 216
    .line 217
    and-int/2addr v2, v3

    .line 218
    or-int/2addr v2, v1

    .line 219
    int-to-byte v2, v2

    .line 220
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    and-int/lit8 v0, v0, 0x3f

    .line 228
    .line 229
    or-int/2addr v0, v1

    .line 230
    int-to-byte v0, v0

    .line 231
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_5
    return-void
.end method

.method public static final processUtf8CodePoints([BIILkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const-string v7, "<this>"

    .line 12
    .line 13
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v7, "yield"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move/from16 v7, p1

    .line 23
    .line 24
    :cond_0
    :goto_0
    if-ge v7, v1, :cond_17

    .line 25
    .line 26
    aget-byte v8, v0, v7

    .line 27
    .line 28
    if-ltz v8, :cond_1

    .line 29
    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    add-int/2addr v7, v6

    .line 38
    :goto_1
    if-ge v7, v1, :cond_0

    .line 39
    .line 40
    aget-byte v8, v0, v7

    .line 41
    .line 42
    if-ltz v8, :cond_0

    .line 43
    .line 44
    add-int/2addr v7, v6

    .line 45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    shr-int/lit8 v9, v8, 0x5

    .line 54
    .line 55
    const/4 v10, -0x2

    .line 56
    const/16 v11, 0x80

    .line 57
    .line 58
    const v12, 0xfffd

    .line 59
    .line 60
    .line 61
    if-ne v9, v10, :cond_6

    .line 62
    .line 63
    add-int/lit8 v9, v7, 0x1

    .line 64
    .line 65
    if-gt v1, v9, :cond_4

    .line 66
    .line 67
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    :cond_3
    :goto_2
    move v8, v6

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    aget-byte v9, v0, v9

    .line 79
    .line 80
    and-int/lit16 v10, v9, 0xc0

    .line 81
    .line 82
    if-ne v10, v11, :cond_2

    .line 83
    .line 84
    xor-int/lit16 v9, v9, 0xf80

    .line 85
    .line 86
    shl-int/lit8 v8, v8, 0x6

    .line 87
    .line 88
    xor-int/2addr v8, v9

    .line 89
    if-ge v8, v11, :cond_5

    .line 90
    .line 91
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :goto_3
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    goto :goto_3

    .line 106
    :goto_4
    move v8, v5

    .line 107
    :goto_5
    add-int/2addr v7, v8

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    shr-int/lit8 v9, v8, 0x4

    .line 110
    .line 111
    const v13, 0xe000

    .line 112
    .line 113
    .line 114
    const v14, 0xd800

    .line 115
    .line 116
    .line 117
    if-ne v9, v10, :cond_c

    .line 118
    .line 119
    add-int/lit8 v9, v7, 0x2

    .line 120
    .line 121
    if-gt v1, v9, :cond_7

    .line 122
    .line 123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    add-int/lit8 v8, v7, 0x1

    .line 133
    .line 134
    if-le v1, v8, :cond_3

    .line 135
    .line 136
    aget-byte v8, v0, v8

    .line 137
    .line 138
    and-int/lit16 v8, v8, 0xc0

    .line 139
    .line 140
    if-ne v8, v11, :cond_3

    .line 141
    .line 142
    :goto_6
    goto :goto_4

    .line 143
    :cond_7
    add-int/lit8 v10, v7, 0x1

    .line 144
    .line 145
    aget-byte v10, v0, v10

    .line 146
    .line 147
    and-int/lit16 v15, v10, 0xc0

    .line 148
    .line 149
    if-ne v15, v11, :cond_b

    .line 150
    .line 151
    aget-byte v9, v0, v9

    .line 152
    .line 153
    and-int/lit16 v15, v9, 0xc0

    .line 154
    .line 155
    if-ne v15, v11, :cond_a

    .line 156
    .line 157
    const v11, -0x1e080

    .line 158
    .line 159
    .line 160
    xor-int/2addr v9, v11

    .line 161
    shl-int/lit8 v10, v10, 0x6

    .line 162
    .line 163
    xor-int/2addr v9, v10

    .line 164
    shl-int/lit8 v8, v8, 0xc

    .line 165
    .line 166
    xor-int/2addr v8, v9

    .line 167
    const/16 v9, 0x800

    .line 168
    .line 169
    if-ge v8, v9, :cond_8

    .line 170
    .line 171
    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    :goto_8
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_8
    if-gt v14, v8, :cond_9

    .line 182
    .line 183
    if-ge v8, v13, :cond_9

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    goto :goto_8

    .line 191
    :goto_9
    move v8, v4

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_c
    shr-int/lit8 v9, v8, 0x3

    .line 215
    .line 216
    if-ne v9, v10, :cond_16

    .line 217
    .line 218
    add-int/lit8 v9, v7, 0x3

    .line 219
    .line 220
    if-gt v1, v9, :cond_f

    .line 221
    .line 222
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 230
    .line 231
    add-int/lit8 v8, v7, 0x1

    .line 232
    .line 233
    if-le v1, v8, :cond_e

    .line 234
    .line 235
    aget-byte v8, v0, v8

    .line 236
    .line 237
    and-int/lit16 v8, v8, 0xc0

    .line 238
    .line 239
    if-ne v8, v11, :cond_e

    .line 240
    .line 241
    add-int/lit8 v8, v7, 0x2

    .line 242
    .line 243
    if-le v1, v8, :cond_d

    .line 244
    .line 245
    aget-byte v8, v0, v8

    .line 246
    .line 247
    and-int/lit16 v8, v8, 0xc0

    .line 248
    .line 249
    if-ne v8, v11, :cond_d

    .line 250
    .line 251
    :goto_a
    move v3, v4

    .line 252
    goto/16 :goto_10

    .line 253
    .line 254
    :cond_d
    :goto_b
    move v3, v5

    .line 255
    goto/16 :goto_10

    .line 256
    .line 257
    :cond_e
    :goto_c
    move v3, v6

    .line 258
    goto :goto_10

    .line 259
    :cond_f
    add-int/lit8 v10, v7, 0x1

    .line 260
    .line 261
    aget-byte v10, v0, v10

    .line 262
    .line 263
    and-int/lit16 v15, v10, 0xc0

    .line 264
    .line 265
    if-ne v15, v11, :cond_15

    .line 266
    .line 267
    add-int/lit8 v15, v7, 0x2

    .line 268
    .line 269
    aget-byte v15, v0, v15

    .line 270
    .line 271
    and-int/lit16 v3, v15, 0xc0

    .line 272
    .line 273
    if-ne v3, v11, :cond_14

    .line 274
    .line 275
    aget-byte v3, v0, v9

    .line 276
    .line 277
    and-int/lit16 v9, v3, 0xc0

    .line 278
    .line 279
    if-ne v9, v11, :cond_13

    .line 280
    .line 281
    const v9, 0x381f80

    .line 282
    .line 283
    .line 284
    xor-int/2addr v3, v9

    .line 285
    shl-int/lit8 v9, v15, 0x6

    .line 286
    .line 287
    xor-int/2addr v3, v9

    .line 288
    shl-int/lit8 v9, v10, 0xc

    .line 289
    .line 290
    xor-int/2addr v3, v9

    .line 291
    shl-int/lit8 v8, v8, 0x12

    .line 292
    .line 293
    xor-int/2addr v3, v8

    .line 294
    const v8, 0x10ffff

    .line 295
    .line 296
    .line 297
    if-le v3, v8, :cond_10

    .line 298
    .line 299
    :goto_d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :goto_e
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 307
    .line 308
    goto :goto_f

    .line 309
    :cond_10
    if-gt v14, v3, :cond_11

    .line 310
    .line 311
    if-ge v3, v13, :cond_11

    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_11
    const/high16 v8, 0x10000

    .line 315
    .line 316
    if-ge v3, v8, :cond_12

    .line 317
    .line 318
    goto :goto_d

    .line 319
    :cond_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    goto :goto_e

    .line 324
    :goto_f
    const/4 v3, 0x4

    .line 325
    goto :goto_10

    .line 326
    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_14
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_15
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 354
    .line 355
    goto :goto_c

    .line 356
    :goto_10
    add-int/2addr v7, v3

    .line 357
    :goto_11
    const/4 v3, 0x4

    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    add-int/2addr v7, v6

    .line 368
    goto :goto_11

    .line 369
    :cond_17
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/applovin/shadow/okio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/applovin/shadow/okio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_7

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_0

    add-long/2addr v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_6

    const v3, 0xdfff

    if-le v2, v3, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_3

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const v8, 0xdbff

    if-gt v2, v8, :cond_5

    const v2, 0xdc00

    if-lt v7, v2, :cond_5

    if-le v7, v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    :goto_4
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_0

    :cond_6
    :goto_5
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    return-wide v0

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/applovin/shadow/okio/Utf8;->size(Ljava/lang/String;II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
