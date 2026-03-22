.class public final Lcom/google/android/gms/internal/ads/zzdgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvy;
.implements Lcom/google/android/gms/internal/ads/zzddi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbyk;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbyo;

.field private final zzd:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbyk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;)V
    .locals 0
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zza:Lcom/google/android/gms/internal/ads/zzbyk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzc:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzd:Landroid/view/View;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzf:Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zza:Lcom/google/android/gms/internal/ads/zzbyk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyk;->zzb(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzb()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzd:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zze:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzc:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zze:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzo(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zza:Lcom/google/android/gms/internal/ads/zzbyk;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyk;->zzb(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzdu(Lcom/google/android/gms/internal/ads/zzbwc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzc:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzb:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzp(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyo;->zzb(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zza:Lcom/google/android/gms/internal/ads/zzbyk;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbyk;->zza()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwc;->zzc()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwc;->zzb()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbyo;->zzl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 35
    .line 36
    const-string p2, "Remote Exception to get reward item."

    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzi()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzf:Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzc:Lcom/google/android/gms/internal/ads/zzbyo;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zzb:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbyo;->zzd(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zze:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbcj$zza$zza;

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    const-string v0, "/Rewarded"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "/Interstitial"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgs;->zze:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method
