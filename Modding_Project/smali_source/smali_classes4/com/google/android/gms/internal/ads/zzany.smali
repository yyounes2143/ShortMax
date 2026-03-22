.class final Lcom/google/android/gms/internal/ads/zzany;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzem;

.field private zzd:Z

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamz;Lcom/google/android/gms/internal/ads/zzeu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzany;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzany;->zzb:Lcom/google/android/gms/internal/ads/zzeu;

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzem;

    .line 9
    .line 10
    const/16 p2, 0x40

    .line 11
    .line 12
    new-array v0, p2, [B

    .line 13
    .line 14
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzany;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 18
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
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzany;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x3

    .line 11
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzany;->zzd:Z

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzany;->zze:Z

    .line 33
    .line 34
    const/4 v6, 0x6

    .line 35
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 43
    .line 44
    invoke-virtual {v1, v6, v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 48
    .line 49
    .line 50
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzany;->zzd:Z

    .line 51
    .line 52
    const/4 v6, 0x4

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-long v7, v3

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 65
    .line 66
    .line 67
    const/16 v9, 0xf

    .line 68
    .line 69
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    shl-int/2addr v10, v9

    .line 74
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    int-to-long v11, v11

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 83
    .line 84
    .line 85
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzany;->zzf:Z

    .line 86
    .line 87
    const/16 v14, 0x1e

    .line 88
    .line 89
    if-nez v13, :cond_0

    .line 90
    .line 91
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzany;->zze:Z

    .line 92
    .line 93
    if-eqz v13, :cond_0

    .line 94
    .line 95
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    int-to-long v4, v5

    .line 103
    shl-long/2addr v4, v14

    .line 104
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    shl-int/2addr v15, v9

    .line 112
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    move-wide/from16 v16, v7

    .line 120
    .line 121
    int-to-long v6, v9

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzany;->zzb:Lcom/google/android/gms/internal/ads/zzeu;

    .line 126
    .line 127
    int-to-long v8, v15

    .line 128
    or-long/2addr v4, v8

    .line 129
    or-long/2addr v4, v6

    .line 130
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(J)J

    .line 131
    .line 132
    .line 133
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzany;->zzf:Z

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    move-wide/from16 v16, v7

    .line 137
    .line 138
    :goto_0
    shl-long v2, v16, v14

    .line 139
    .line 140
    int-to-long v4, v10

    .line 141
    or-long/2addr v2, v4

    .line 142
    or-long/2addr v2, v11

    .line 143
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzany;->zzb:Lcom/google/android/gms/internal/ads/zzeu;

    .line 144
    .line 145
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v2

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    const-wide/16 v2, 0x0

    .line 151
    .line 152
    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzany;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 153
    .line 154
    const/4 v5, 0x4

    .line 155
    invoke-interface {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzamz;->zzd(JI)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lcom/google/android/gms/internal/ads/zzen;)V

    .line 159
    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(Z)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zzf:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzany;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zze()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
