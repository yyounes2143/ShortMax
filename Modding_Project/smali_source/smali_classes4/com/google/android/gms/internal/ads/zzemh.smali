.class public final Lcom/google/android/gms/internal/ads/zzemh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzfdl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemh;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemh;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 7
    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzemh;->zzc:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzemh;)Lcom/google/android/gms/internal/ads/zzemi;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemi;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemh;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 23
    .line 24
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzemh;->zzc:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne p0, v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 37
    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v3, ","

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzho:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 78
    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_2

    .line 106
    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfdl;->zza()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_2
    :goto_1
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzemi;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemg;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;-><init>(Lcom/google/android/gms/internal/ads/zzemh;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemh;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
