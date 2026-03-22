.class final Lcom/google/android/gms/internal/ads/zzagb;
.super Lcom/google/android/gms/internal/ads/zzagf;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zzb:[I


# instance fields
.field private zzc:Z

.field private zzd:Z

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x5622

    .line 2
    .line 3
    const v1, 0xac44

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x1588

    .line 7
    .line 8
    const/16 v3, 0x2b11

    .line 9
    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:[I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(Lcom/google/android/gms/internal/ads/zzafb;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzen;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzage;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    shr-int/lit8 v0, p1, 0x4

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 13
    .line 14
    const-string v2, "video/x-flv"

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    shr-int/2addr p1, v3

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:[I

    .line 21
    .line 22
    and-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    aget p1, v0, p1

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 32
    .line 33
    .line 34
    const-string v2, "audio/mpeg"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Z

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    const/4 p1, 0x7

    .line 58
    if-eq v0, p1, :cond_3

    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    if-ne v0, v3, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 p1, 0xa

    .line 66
    .line 67
    if-ne v0, p1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzage;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "Audio format not supported: "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 94
    .line 95
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 99
    .line 100
    .line 101
    if-ne v0, p1, :cond_4

    .line 102
    .line 103
    const-string p1, "audio/g711-alaw"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 107
    .line 108
    :goto_1
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 112
    .line 113
    .line 114
    const/16 p1, 0x1f40

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 124
    .line 125
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Z

    .line 129
    .line 130
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:Z

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 134
    .line 135
    .line 136
    :goto_3
    return v1
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzen;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 12
    .line 13
    invoke-interface {v3, p1, v7}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 14
    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    move-wide v4, p2

    .line 20
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    new-array p3, p2, [B

    .line 41
    .line 42
    invoke-virtual {p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzacr;->zza([B)Lcom/google/android/gms/internal/ads/zzacp;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/google/android/gms/internal/ads/zzx;

    .line 50
    .line 51
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v0, "video/x-flv"

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 57
    .line 58
    .line 59
    const-string v0, "audio/mp4a-latm"

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzacp;->zzc:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 67
    .line 68
    .line 69
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzacp;->zzb:I

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 72
    .line 73
    .line 74
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzacp;->zza:I

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 77
    .line 78
    .line 79
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 91
    .line 92
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 93
    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:Z

    .line 96
    .line 97
    return v1

    .line 98
    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 99
    .line 100
    const/16 v4, 0xa

    .line 101
    .line 102
    if-ne v3, v4, :cond_4

    .line 103
    .line 104
    if-ne v0, v2, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    return v1

    .line 108
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 113
    .line 114
    invoke-interface {v5, p1, v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 115
    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v8, 0x1

    .line 120
    move-wide v6, p2

    .line 121
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 122
    .line 123
    .line 124
    return v2
.end method
