.class final Lcom/google/android/gms/internal/ads/zzabx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzet;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzet;

.field private final zze:Lcom/google/android/gms/internal/ads/zzec;

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzj:J

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaap;Lcom/google/android/gms/internal/ads/zzabs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabq;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzet;

    .line 16
    .line 17
    const/16 p2, 0xa

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzet;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    .line 32
    .line 33
    const/16 p2, 0x10

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzec;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    .line 39
    .line 40
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 46
    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    .line 50
    .line 51
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 52
    .line 53
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    .line 54
    .line 55
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 12
    .line 13
    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzb()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzb()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd()V

    .line 4
    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzec;->zzc(J)V

    .line 4
    .line 5
    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 7
    .line 8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    .line 14
    .line 15
    return-void
.end method

.method public final zzc(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzec;->zze()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzf(I)V

    .line 12
    .line 13
    .line 14
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 20
    .line 21
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v2, v0, v2

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final zzd(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    add-long/2addr v0, v2

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    .line 19
    .line 20
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcd;

    .line 21
    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(IIF)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zze(JJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzec;->zze()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_6

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzec;->zza()J

    .line 14
    .line 15
    .line 16
    move-result-wide v14

    .line 17
    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzet;->zzc(J)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Long;

    .line 22
    .line 23
    const/4 v13, 0x2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    .line 31
    .line 32
    cmp-long v3, v3, v5

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    .line 41
    .line 42
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 43
    .line 44
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzabs;->zzf(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 48
    .line 49
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    .line 50
    .line 51
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 52
    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    move-object v3, v2

    .line 58
    move-wide v4, v14

    .line 59
    move-wide/from16 v6, p1

    .line 60
    .line 61
    move-wide/from16 v8, p3

    .line 62
    .line 63
    move-object/from16 v18, v12

    .line 64
    .line 65
    move/from16 v12, v16

    .line 66
    .line 67
    move/from16 v13, v17

    .line 68
    .line 69
    move-object/from16 v16, v1

    .line 70
    .line 71
    move-object/from16 v17, v2

    .line 72
    .line 73
    move-wide v1, v14

    .line 74
    move-object/from16 v14, v18

    .line 75
    .line 76
    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzabs;->zza(JJJJZZLcom/google/android/gms/internal/ads/zzabq;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    if-eq v3, v4, :cond_3

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    if-eq v3, v4, :cond_2

    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    if-eq v3, v4, :cond_2

    .line 90
    .line 91
    const/4 v4, 0x4

    .line 92
    if-eq v3, v4, :cond_1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_1
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 99
    .line 100
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzec;->zzb()J

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 104
    .line 105
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzaar;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzf(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/concurrent/Executor;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaan;

    .line 112
    .line 113
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(Lcom/google/android/gms/internal/ads/zzaap;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaar;->zze(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/Queue;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/google/android/gms/internal/ads/zzacm;

    .line 128
    .line 129
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacm;->zzb()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_3
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 135
    .line 136
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzec;->zzb()J

    .line 137
    .line 138
    .line 139
    move-result-wide v5

    .line 140
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    .line 141
    .line 142
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzet;->zzc(J)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_4

    .line 157
    .line 158
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_4

    .line 165
    .line 166
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    .line 167
    .line 168
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaap;->zza(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    if-nez v3, :cond_5

    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    :goto_1
    move-wide v3, v1

    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzabq;->zzd()J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    goto :goto_1

    .line 186
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 187
    .line 188
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzabs;->zzn()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaap;->zzb(JJZ)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_6
    :goto_3
    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 17
    .line 18
    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    .line 19
    .line 20
    return-void
.end method

.method public final zzg()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method
