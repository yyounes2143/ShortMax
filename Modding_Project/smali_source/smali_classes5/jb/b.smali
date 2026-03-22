.class public final Ljb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static b([B[B)[B
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Lmb/a;->c(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p1, v0}, Ljb/b;->c([B[B[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Ljb/b;->a([B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static c([B[B[B)[B
    .locals 5

    .line 1
    const-string v0, "GCM encrypt data error"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "GCM"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "encrypt 6 content is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-array p0, v1, [B

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    array-length v3, p0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const-string p0, "encrypt 6 content length is 0"

    .line 20
    .line 21
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-array p0, v1, [B

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    if-nez p1, :cond_2

    .line 28
    .line 29
    const-string p0, "encrypt 6 key is null"

    .line 30
    .line 31
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-array p0, v1, [B

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    array-length v3, p1

    .line 38
    const/16 v4, 0x10

    .line 39
    .line 40
    if-ge v3, v4, :cond_3

    .line 41
    .line 42
    const-string p0, "encrypt 6 key error: 6 key length less than 16 bytes."

    .line 43
    .line 44
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-array p0, v1, [B

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    const-string p0, "encrypt 6 iv is null"

    .line 53
    .line 54
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-array p0, v1, [B

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_4
    array-length v3, p2

    .line 61
    const/16 v4, 0xc

    .line 62
    .line 63
    if-ge v3, v4, :cond_5

    .line 64
    .line 65
    const-string p0, "encrypt 6 iv error: 6 iv length less than 16 bytes."

    .line 66
    .line 67
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-array p0, v1, [B

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_5
    invoke-static {}, Ljb/b;->e()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_6

    .line 78
    .line 79
    const-string p0, "encrypt 6 build version not higher than 19"

    .line 80
    .line 81
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-array p0, v1, [B

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_6
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 88
    .line 89
    const-string v4, "AES"

    .line 90
    .line 91
    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "AES/GCM/NoPadding"

    .line 95
    .line 96
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p2}, Ljb/b;->d([B)Ljava/security/spec/AlgorithmParameterSpec;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-virtual {p1, v4, v3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object p0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    goto :goto_0

    .line 115
    :catch_1
    move-exception p0

    .line 116
    goto :goto_1

    .line 117
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v2, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    new-array p0, v1, [B

    .line 163
    .line 164
    return-object p0
.end method

.method public static d([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
