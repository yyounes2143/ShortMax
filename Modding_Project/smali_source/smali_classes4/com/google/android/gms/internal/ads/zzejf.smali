.class public final Lcom/google/android/gms/internal/ads/zzejf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbdz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfha;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzejo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzbdz;Lcom/google/android/gms/internal/ads/zzejo;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzbdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzc:Lcom/google/android/gms/internal/ads/zzfha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzd:Lcom/google/android/gms/internal/ads/zzejo;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzbdu;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz;->zze(Lcom/google/android/gms/internal/ads/zzbdw;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzejf;)Lcom/google/android/gms/internal/ads/zzejo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzd:Lcom/google/android/gms/internal/ads/zzejo;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 9

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/internal/ads/zzejk;

    .line 7
    .line 8
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzejk;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lcom/google/android/gms/internal/ads/zzeje;

    .line 12
    .line 13
    move-object v0, v8

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, v6

    .line 16
    move-object v3, p1

    .line 17
    move-object v4, p2

    .line 18
    move-object v5, v7

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeje;-><init>(Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzejk;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzejk;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdu;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 28
    .line 29
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzbdu;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfgu;->zzt:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzc:Lcom/google/android/gms/internal/ads/zzfha;

    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/zzejd;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzejd;-><init>(Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzbdu;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 49
    .line 50
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfgk;->zzd(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfgu;->zzu:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfgq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Lcom/google/android/gms/internal/ads/zzfgg;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
