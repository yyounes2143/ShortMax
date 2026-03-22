.class public final Lcom/google/android/gms/internal/ads/zzamx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzz;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    .line 6
    new-array p3, p3, [B

    .line 7
    .line 8
    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 15
    .line 16
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 22
    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 p3, -0x1

    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzo:I

    .line 32
    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzp:I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Ljava/lang/String;

    .line 36
    .line 37
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:I

    .line 38
    .line 39
    const-string p1, "video/mp2t"

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzads;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    .line 2
    .line 3
    const v1, -0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzads;->zzc:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzads;->zza:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzads;->zza:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:I

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 88
    .line 89
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v3, :cond_20

    .line 17
    .line 18
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x4

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v3, :cond_14

    .line 26
    .line 27
    const/4 v9, 0x5

    .line 28
    const/4 v10, 0x7

    .line 29
    const/4 v11, 0x6

    .line 30
    if-eq v3, v8, :cond_b

    .line 31
    .line 32
    if-eq v3, v5, :cond_a

    .line 33
    .line 34
    const-wide/16 v12, 0x0

    .line 35
    .line 36
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    if-eq v3, v4, :cond_8

    .line 42
    .line 43
    if-eq v3, v7, :cond_6

    .line 44
    .line 45
    if-eq v3, v9, :cond_3

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 52
    .line 53
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 54
    .line 55
    sub-int/2addr v4, v5

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 61
    .line 62
    invoke-interface {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 63
    .line 64
    .line 65
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 66
    .line 67
    add-int/2addr v4, v3

    .line 68
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 69
    .line 70
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 71
    .line 72
    if-ne v4, v3, :cond_0

    .line 73
    .line 74
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 75
    .line 76
    cmp-long v3, v3, v14

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    move v3, v8

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move v3, v6

    .line 83
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 87
    .line 88
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 89
    .line 90
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzn:I

    .line 91
    .line 92
    if-ne v3, v7, :cond_2

    .line 93
    .line 94
    move v12, v6

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move v12, v8

    .line 97
    :goto_2
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    const/4 v15, 0x0

    .line 101
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 102
    .line 103
    .line 104
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 105
    .line 106
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:J

    .line 107
    .line 108
    add-long/2addr v3, v7

    .line 109
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 110
    .line 111
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzp:I

    .line 121
    .line 122
    invoke-direct {v0, v1, v5, v7}, Lcom/google/android/gms/internal/ads/zzamx;->zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_0

    .line 127
    .line 128
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzadu;->zze([BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/google/android/gms/internal/ads/zzads;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzn:I

    .line 139
    .line 140
    if-ne v7, v4, :cond_4

    .line 141
    .line 142
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzamx;->zzf(Lcom/google/android/gms/internal/ads/zzads;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget v4, v5, Lcom/google/android/gms/internal/ads/zzads;->zzd:I

    .line 146
    .line 147
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 148
    .line 149
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzads;->zze:J

    .line 150
    .line 151
    cmp-long v7, v4, v14

    .line 152
    .line 153
    if-nez v7, :cond_5

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move-wide v12, v4

    .line 157
    :goto_3
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:J

    .line 158
    .line 159
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 160
    .line 161
    .line 162
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 163
    .line 164
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzp:I

    .line 165
    .line 166
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 167
    .line 168
    .line 169
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/ads/zzamx;->zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_0

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadu;->zzb([B)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzp:I

    .line 194
    .line 195
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 196
    .line 197
    if-le v4, v3, :cond_7

    .line 198
    .line 199
    sub-int v3, v4, v3

    .line 200
    .line 201
    sub-int/2addr v4, v3

    .line 202
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    sub-int/2addr v4, v3

    .line 209
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 210
    .line 211
    .line 212
    :cond_7
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_8
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzo:I

    .line 223
    .line 224
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzamx;->zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_0

    .line 229
    .line 230
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadu;->zzd([B)Lcom/google/android/gms/internal/ads/zzads;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzamx;->zzf(Lcom/google/android/gms/internal/ads/zzads;)V

    .line 239
    .line 240
    .line 241
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzads;->zzd:I

    .line 242
    .line 243
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 244
    .line 245
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzads;->zze:J

    .line 246
    .line 247
    cmp-long v7, v4, v14

    .line 248
    .line 249
    if-nez v7, :cond_9

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_9
    move-wide v12, v4

    .line 253
    :goto_4
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:J

    .line 254
    .line 255
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 256
    .line 257
    .line 258
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 259
    .line 260
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzo:I

    .line 261
    .line 262
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 263
    .line 264
    .line 265
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-direct {v0, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzamx;->zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_0

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadu;->zza([B)I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzo:I

    .line 290
    .line 291
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    const/16 v13, 0x12

    .line 302
    .line 303
    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzamx;->zzg(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    if-eqz v12, :cond_0

    .line 308
    .line 309
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 314
    .line 315
    if-nez v14, :cond_c

    .line 316
    .line 317
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:Ljava/lang/String;

    .line 318
    .line 319
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Ljava/lang/String;

    .line 320
    .line 321
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:I

    .line 322
    .line 323
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Ljava/lang/String;

    .line 324
    .line 325
    const/16 v19, 0x0

    .line 326
    .line 327
    move-object/from16 v16, v14

    .line 328
    .line 329
    move-object v14, v12

    .line 330
    move/from16 v17, v13

    .line 331
    .line 332
    move-object/from16 v18, v5

    .line 333
    .line 334
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzadu;->zzc([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 339
    .line 340
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 341
    .line 342
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 343
    .line 344
    .line 345
    :cond_c
    sget v5, Lcom/google/android/gms/internal/ads/zzadu;->zza:I

    .line 346
    .line 347
    aget-byte v5, v12, v6

    .line 348
    .line 349
    const/16 v13, 0x1f

    .line 350
    .line 351
    const/4 v14, -0x1

    .line 352
    const/4 v15, -0x2

    .line 353
    if-eq v5, v15, :cond_f

    .line 354
    .line 355
    if-eq v5, v14, :cond_e

    .line 356
    .line 357
    if-eq v5, v13, :cond_d

    .line 358
    .line 359
    aget-byte v16, v12, v9

    .line 360
    .line 361
    and-int/lit8 v4, v16, 0x3

    .line 362
    .line 363
    shl-int/lit8 v4, v4, 0xc

    .line 364
    .line 365
    aget-byte v6, v12, v11

    .line 366
    .line 367
    and-int/lit16 v6, v6, 0xff

    .line 368
    .line 369
    shl-int/2addr v6, v7

    .line 370
    aget-byte v9, v12, v10

    .line 371
    .line 372
    :goto_5
    and-int/lit16 v9, v9, 0xf0

    .line 373
    .line 374
    shr-int/2addr v9, v7

    .line 375
    or-int/2addr v4, v6

    .line 376
    or-int/2addr v4, v9

    .line 377
    add-int/2addr v4, v8

    .line 378
    const/4 v6, 0x0

    .line 379
    goto :goto_7

    .line 380
    :cond_d
    aget-byte v6, v12, v11

    .line 381
    .line 382
    and-int/2addr v4, v6

    .line 383
    shl-int/lit8 v4, v4, 0xc

    .line 384
    .line 385
    aget-byte v6, v12, v10

    .line 386
    .line 387
    and-int/lit16 v6, v6, 0xff

    .line 388
    .line 389
    shl-int/2addr v6, v7

    .line 390
    aget-byte v9, v12, v2

    .line 391
    .line 392
    :goto_6
    and-int/lit8 v9, v9, 0x3c

    .line 393
    .line 394
    const/16 v18, 0x2

    .line 395
    .line 396
    shr-int/lit8 v9, v9, 0x2

    .line 397
    .line 398
    or-int/2addr v4, v6

    .line 399
    or-int/2addr v4, v9

    .line 400
    add-int/2addr v4, v8

    .line 401
    move v6, v8

    .line 402
    goto :goto_7

    .line 403
    :cond_e
    aget-byte v6, v12, v10

    .line 404
    .line 405
    and-int/2addr v4, v6

    .line 406
    shl-int/lit8 v4, v4, 0xc

    .line 407
    .line 408
    aget-byte v6, v12, v11

    .line 409
    .line 410
    and-int/lit16 v6, v6, 0xff

    .line 411
    .line 412
    shl-int/2addr v6, v7

    .line 413
    const/16 v9, 0x9

    .line 414
    .line 415
    aget-byte v9, v12, v9

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_f
    aget-byte v6, v12, v7

    .line 419
    .line 420
    and-int/2addr v4, v6

    .line 421
    shl-int/lit8 v4, v4, 0xc

    .line 422
    .line 423
    aget-byte v6, v12, v10

    .line 424
    .line 425
    and-int/lit16 v6, v6, 0xff

    .line 426
    .line 427
    shl-int/2addr v6, v7

    .line 428
    aget-byte v9, v12, v11

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :goto_7
    if-eqz v6, :cond_10

    .line 432
    .line 433
    mul-int/lit8 v4, v4, 0x10

    .line 434
    .line 435
    div-int/lit8 v4, v4, 0xe

    .line 436
    .line 437
    :cond_10
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:I

    .line 438
    .line 439
    if-eq v5, v15, :cond_13

    .line 440
    .line 441
    if-eq v5, v14, :cond_12

    .line 442
    .line 443
    if-eq v5, v13, :cond_11

    .line 444
    .line 445
    aget-byte v4, v12, v7

    .line 446
    .line 447
    and-int/2addr v4, v8

    .line 448
    shl-int/2addr v4, v11

    .line 449
    const/4 v5, 0x5

    .line 450
    aget-byte v5, v12, v5

    .line 451
    .line 452
    and-int/lit16 v5, v5, 0xfc

    .line 453
    .line 454
    const/4 v6, 0x2

    .line 455
    :goto_8
    shr-int/2addr v5, v6

    .line 456
    or-int/2addr v4, v5

    .line 457
    goto :goto_a

    .line 458
    :cond_11
    const/4 v5, 0x5

    .line 459
    const/4 v6, 0x2

    .line 460
    aget-byte v4, v12, v5

    .line 461
    .line 462
    and-int/2addr v4, v10

    .line 463
    shl-int/2addr v4, v7

    .line 464
    aget-byte v5, v12, v11

    .line 465
    .line 466
    :goto_9
    and-int/lit8 v5, v5, 0x3c

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_12
    const/4 v6, 0x2

    .line 470
    aget-byte v4, v12, v7

    .line 471
    .line 472
    and-int/2addr v4, v10

    .line 473
    shl-int/2addr v4, v7

    .line 474
    aget-byte v5, v12, v10

    .line 475
    .line 476
    goto :goto_9

    .line 477
    :cond_13
    const/4 v4, 0x5

    .line 478
    const/4 v6, 0x2

    .line 479
    aget-byte v4, v12, v4

    .line 480
    .line 481
    and-int/2addr v4, v8

    .line 482
    shl-int/2addr v4, v11

    .line 483
    aget-byte v5, v12, v7

    .line 484
    .line 485
    and-int/lit16 v5, v5, 0xfc

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :goto_a
    add-int/2addr v4, v8

    .line 489
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 490
    .line 491
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 492
    .line 493
    mul-int/lit8 v4, v4, 0x20

    .line 494
    .line 495
    int-to-long v6, v4

    .line 496
    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgbt;->zzb(J)I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    int-to-long v4, v4

    .line 505
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:J

    .line 506
    .line 507
    const/4 v4, 0x0

    .line 508
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 509
    .line 510
    .line 511
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 512
    .line 513
    const/16 v5, 0x12

    .line 514
    .line 515
    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 516
    .line 517
    .line 518
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 519
    .line 520
    goto/16 :goto_0

    .line 521
    .line 522
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-lez v3, :cond_0

    .line 527
    .line 528
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 529
    .line 530
    shl-int/2addr v3, v2

    .line 531
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 532
    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    or-int/2addr v3, v5

    .line 538
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 539
    .line 540
    sget v5, Lcom/google/android/gms/internal/ads/zzadu;->zza:I

    .line 541
    .line 542
    const v5, 0x7ffe8001

    .line 543
    .line 544
    .line 545
    if-eq v3, v5, :cond_15

    .line 546
    .line 547
    const v5, -0x180fe80

    .line 548
    .line 549
    .line 550
    if-eq v3, v5, :cond_15

    .line 551
    .line 552
    const v5, 0x1fffe800

    .line 553
    .line 554
    .line 555
    if-eq v3, v5, :cond_15

    .line 556
    .line 557
    const v5, -0xe0ff18

    .line 558
    .line 559
    .line 560
    if-ne v3, v5, :cond_16

    .line 561
    .line 562
    :cond_15
    move v3, v8

    .line 563
    goto :goto_b

    .line 564
    :cond_16
    const v5, 0x64582025

    .line 565
    .line 566
    .line 567
    if-eq v3, v5, :cond_17

    .line 568
    .line 569
    const v5, 0x25205864

    .line 570
    .line 571
    .line 572
    if-ne v3, v5, :cond_18

    .line 573
    .line 574
    :cond_17
    const/4 v3, 0x2

    .line 575
    goto :goto_b

    .line 576
    :cond_18
    const v5, 0x40411bf2

    .line 577
    .line 578
    .line 579
    if-eq v3, v5, :cond_19

    .line 580
    .line 581
    const v5, -0xde4bec0

    .line 582
    .line 583
    .line 584
    if-ne v3, v5, :cond_1a

    .line 585
    .line 586
    :cond_19
    move v3, v4

    .line 587
    goto :goto_b

    .line 588
    :cond_1a
    const v5, 0x71c442e8

    .line 589
    .line 590
    .line 591
    if-eq v3, v5, :cond_1b

    .line 592
    .line 593
    const v5, -0x17bd3b8f

    .line 594
    .line 595
    .line 596
    if-ne v3, v5, :cond_1c

    .line 597
    .line 598
    :cond_1b
    move v3, v7

    .line 599
    goto :goto_b

    .line 600
    :cond_1c
    const/4 v3, 0x0

    .line 601
    :goto_b
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzn:I

    .line 602
    .line 603
    if-eqz v3, :cond_14

    .line 604
    .line 605
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 606
    .line 607
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 612
    .line 613
    shr-int/lit8 v9, v6, 0x18

    .line 614
    .line 615
    and-int/lit16 v9, v9, 0xff

    .line 616
    .line 617
    int-to-byte v9, v9

    .line 618
    const/4 v10, 0x0

    .line 619
    aput-byte v9, v5, v10

    .line 620
    .line 621
    shr-int/lit8 v9, v6, 0x10

    .line 622
    .line 623
    and-int/lit16 v9, v9, 0xff

    .line 624
    .line 625
    int-to-byte v9, v9

    .line 626
    aput-byte v9, v5, v8

    .line 627
    .line 628
    shr-int/lit8 v9, v6, 0x8

    .line 629
    .line 630
    and-int/lit16 v9, v9, 0xff

    .line 631
    .line 632
    int-to-byte v9, v9

    .line 633
    const/4 v10, 0x2

    .line 634
    aput-byte v9, v5, v10

    .line 635
    .line 636
    and-int/lit16 v6, v6, 0xff

    .line 637
    .line 638
    int-to-byte v6, v6

    .line 639
    aput-byte v6, v5, v4

    .line 640
    .line 641
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 642
    .line 643
    const/4 v5, 0x0

    .line 644
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 645
    .line 646
    if-eq v3, v4, :cond_1f

    .line 647
    .line 648
    if-ne v3, v7, :cond_1d

    .line 649
    .line 650
    goto :goto_c

    .line 651
    :cond_1d
    if-ne v3, v8, :cond_1e

    .line 652
    .line 653
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 654
    .line 655
    goto/16 :goto_0

    .line 656
    .line 657
    :cond_1e
    const/4 v3, 0x2

    .line 658
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 659
    .line 660
    goto/16 :goto_0

    .line 661
    .line 662
    :cond_1f
    :goto_c
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 663
    .line 664
    goto/16 :goto_0

    .line 665
    .line 666
    :cond_20
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zza()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:Lcom/google/android/gms/internal/ads/zzafb;

    .line 20
    .line 21
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:I

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzq:J

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
