.class public abstract Lcom/inmobi/media/E9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "valueTypeString"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-gt v3, v0, :cond_5

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    move v5, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v5, v0

    .line 22
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x20

    .line 27
    .line 28
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-gtz v5, :cond_1

    .line 33
    .line 34
    move v5, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move v5, v2

    .line 37
    :goto_2
    if-nez v4, :cond_3

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    move v4, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-nez v5, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const v1, -0x7144a7e1

    .line 61
    .line 62
    .line 63
    if-eq v0, v1, :cond_c

    .line 64
    .line 65
    const v1, -0x31c879e8

    .line 66
    .line 67
    .line 68
    if-eq v0, v1, :cond_a

    .line 69
    .line 70
    const v1, 0x1c56f

    .line 71
    .line 72
    .line 73
    if-eq v0, v1, :cond_8

    .line 74
    .line 75
    const v1, 0x3107ab

    .line 76
    .line 77
    .line 78
    if-eq v0, v1, :cond_6

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const-string v0, "html"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_7

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const-string p0, "HTML"

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const-string v0, "url"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_9

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_9
    const-string p0, "URL"

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_a
    const-string v0, "reference_iframe"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_b

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_b
    const-string p0, "REF_IFRAME"

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_c
    const-string v0, "reference_html"

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_d

    .line 124
    .line 125
    :goto_4
    const-string p0, "UNKNOWN"

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_d
    const-string p0, "REF_HTML"

    .line 129
    .line 130
    :goto_5
    return-object p0
.end method
