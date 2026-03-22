.class public final Lcom/google/android/gms/internal/ads/zzgfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgez;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgfm;

.field private zze:Lcom/google/android/gms/internal/ads/zzgfe;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgff;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgfh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zze:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzf:Lcom/google/android/gms/internal/ads/zzgff;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzc:Lcom/google/android/gms/internal/ads/zzgez;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzd:Lcom/google/android/gms/internal/ads/zzgfm;

    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgez;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzc:Lcom/google/android/gms/internal/ads/zzgez;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zze:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgff;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzf:Lcom/google/android/gms/internal/ads/zzgff;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzd:Lcom/google/android/gms/internal/ads/zzgfm;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgfd;Lcom/google/android/gms/internal/ads/zzgff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzf:Lcom/google/android/gms/internal/ads/zzgff;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzgfd;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zza:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzgfd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zza:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgfd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zzf:Lcom/google/android/gms/internal/ads/zzgff;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgff;->zzc(Lcom/google/android/gms/internal/ads/zzgff;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zza:Z

    .line 10
    .line 11
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgfd;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zzb()Lcom/google/android/gms/internal/ads/zzgfe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfd;->zze:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 6
    .line 7
    return-object p0
.end method
