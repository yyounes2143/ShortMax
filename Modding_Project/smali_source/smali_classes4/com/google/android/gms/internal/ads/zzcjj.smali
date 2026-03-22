.class final Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfag;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field final zze:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzh:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 11
    .line 12
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 23
    .line 24
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzl:Lcom/google/android/gms/internal/ads/zzhha;

    .line 25
    .line 26
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzekz;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzekz;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzbh:Lcom/google/android/gms/internal/ads/zzhha;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzfbe;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    .line 47
    .line 48
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcio;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 49
    .line 50
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzS:Lcom/google/android/gms/internal/ads/zzhha;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcy;->zza()Lcom/google/android/gms/internal/ads/zzfcy;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v0, p2

    .line 57
    move-object v3, v6

    .line 58
    move-object v4, v7

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfae;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzfae;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    .line 68
    .line 69
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzhha;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzU:Lcom/google/android/gms/internal/ads/zzhha;

    .line 72
    .line 73
    move-object v0, p2

    .line 74
    move-object v1, p4

    .line 75
    move-object v2, p3

    .line 76
    move-object v4, v6

    .line 77
    move-object v5, v7

    .line 78
    move-object v6, v9

    .line 79
    move-object v7, p1

    .line 80
    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzelh;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzelh;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzg:Lcom/google/android/gms/internal/ads/zzhha;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzelg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzg:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzelg;

    .line 8
    .line 9
    return-object v0
.end method
