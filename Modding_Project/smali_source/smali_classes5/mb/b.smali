.class public final Lmb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    aget-byte v2, p0, v1

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ne v3, v4, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x30

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    :goto_1
    const-string p0, ""

    .line 48
    .line 49
    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "HexUtil"

    .line 3
    .line 4
    const-string v2, "0x"

    .line 5
    .line 6
    const-string v3, "UTF-8"

    .line 7
    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    new-array p0, v5, [B

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    :try_start_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    div-int/lit8 v4, v4, 0x2

    .line 29
    .line 30
    new-array v6, v4, [B

    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move v7, v5

    .line 37
    :goto_0
    if-ge v7, v4, :cond_1

    .line 38
    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v9, Ljava/lang/String;

    .line 48
    .line 49
    mul-int/lit8 v10, v7, 0x2

    .line 50
    .line 51
    aget-byte v11, p0, v10

    .line 52
    .line 53
    new-array v12, v0, [B

    .line 54
    .line 55
    aput-byte v11, v12, v5

    .line 56
    .line 57
    invoke-direct {v9, v12, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {v8}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    shl-int/lit8 v8, v8, 0x4

    .line 76
    .line 77
    int-to-byte v8, v8

    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v11, Ljava/lang/String;

    .line 87
    .line 88
    add-int/2addr v10, v0

    .line 89
    aget-byte v10, p0, v10

    .line 90
    .line 91
    new-array v12, v0, [B

    .line 92
    .line 93
    aput-byte v10, v12, v5

    .line 94
    .line 95
    invoke-direct {v11, v12, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-static {v9}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    xor-int/2addr v8, v9

    .line 114
    int-to-byte v8, v8

    .line 115
    aput-byte v8, v6, v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    add-int/2addr v7, v0

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    return-object v6

    .line 124
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "hex string 2 byte array exception : "

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-array p0, v5, [B

    .line 149
    .line 150
    return-object p0

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v2, "hex string toUpperCase exception : "

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-array p0, v5, [B

    .line 177
    .line 178
    return-object p0
.end method
