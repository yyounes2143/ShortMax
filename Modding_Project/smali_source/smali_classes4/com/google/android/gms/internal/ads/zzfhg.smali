.class public final Lcom/google/android/gms/internal/ads/zzfhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddi;
.implements Lcom/google/android/gms/internal/ads/zzcwo;
.implements Lcom/google/android/gms/internal/ads/zzddm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfhu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 5
    .line 6
    const/16 p2, 0xd

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final zzi()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhg;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zza()Lcom/google/android/gms/ads/AdError;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
