.class public abstract Lcom/inmobi/media/m8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)B
    .locals 7

    .line 1
    const-string v0, "referencedCreativeString"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    const-string v1, "US"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-gt v3, v0, :cond_5

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    move v5, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v5, v0

    .line 38
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-gtz v5, :cond_1

    .line 49
    .line 50
    move v5, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move v5, v2

    .line 53
    :goto_2
    if-nez v4, :cond_3

    .line 54
    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    move v4, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-nez v5, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const v3, -0x54361cf4

    .line 77
    .line 78
    .line 79
    if-eq v0, v3, :cond_8

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    const v3, 0x6b0147b

    .line 84
    .line 85
    .line 86
    if-eq v0, v3, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const-string v0, "video"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_9

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const-string v0, ""

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_b

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_8
    const-string v0, "companion"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-nez p0, :cond_a

    .line 114
    .line 115
    :cond_9
    :goto_4
    move v1, v2

    .line 116
    goto :goto_5

    .line 117
    :cond_a
    const/4 v1, 0x2

    .line 118
    :cond_b
    :goto_5
    return v1
.end method
