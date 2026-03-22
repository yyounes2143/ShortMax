.class Lcom/google/android/gms/internal/measurement/zzlg;
.super Lcom/google/android/gms/internal/measurement/zzlf;
.source "com.google.android.gms:play-services-measurement-base@@23.0.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlf;-><init>([B)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlh;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlg;

    .line 33
    .line 34
    if-eqz v1, :cond_a

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlg;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzi()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzi()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    if-ne v1, v3, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v2

    .line 54
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-gt v1, v3, :cond_9

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-gt v1, v3, :cond_8

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 71
    .line 72
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzd()I

    .line 75
    .line 76
    .line 77
    move p1, v2

    .line 78
    move v5, p1

    .line 79
    :goto_1
    if-ge p1, v1, :cond_7

    .line 80
    .line 81
    aget-byte v6, v3, p1

    .line 82
    .line 83
    aget-byte v7, v4, v5

    .line 84
    .line 85
    if-eq v6, v7, :cond_6

    .line 86
    .line 87
    move v0, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    :goto_2
    return v0

    .line 95
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    add-int/lit8 v2, v2, 0x1b

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    add-int/2addr v2, v3

    .line 122
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const-string v2, "Ran off end of other: 0, "

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", "

    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    add-int/lit8 v2, v2, 0x12

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    add-int/2addr v2, v3

    .line 176
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    .line 178
    .line 179
    const-string v2, "Length too large: "

    .line 180
    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method protected zzd()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzj(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlc;

    .line 18
    .line 19
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method final zzf(Lcom/google/android/gms/internal/measurement/zzkz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlk;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzv([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected final zzg(III)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlg;->zza:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzmp;->zzc(I[BII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method
