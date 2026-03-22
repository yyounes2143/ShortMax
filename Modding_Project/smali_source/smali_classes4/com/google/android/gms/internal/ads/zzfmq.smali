.class public final Lcom/google/android/gms/internal/ads/zzfmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmj;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfmq;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfme;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfmi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmf;Lcom/google/android/gms/internal/ads/zzfmb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    .line 6
    .line 7
    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfmq;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmb;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmf;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfmf;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmq;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfmq;-><init>(Lcom/google/android/gms/internal/ads/zzfmf;Lcom/google/android/gms/internal/ads/zzfmb;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    .line 2
    .line 3
    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfns;->zzi()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfns;->zzh()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfma;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfma;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfme;

    .line 12
    .line 13
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfma;Lcom/google/android/gms/internal/ads/zzfmq;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    .line 17
    .line 18
    return-void
.end method

.method public final zze(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmi;->zza()Lcom/google/android/gms/internal/ads/zzfmi;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmi;->zzb()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/ads/zzflp;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflp;->zzg()Lcom/google/android/gms/internal/ads/zzfmy;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfmy;->zzl(F)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmk;->zze(Lcom/google/android/gms/internal/ads/zzfmj;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmk;->zzf()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfns;->zzi()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zze()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfns;->zzj()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmk;->zzg()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzf()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
