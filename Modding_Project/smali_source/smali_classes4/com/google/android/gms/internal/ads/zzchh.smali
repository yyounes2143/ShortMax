.class public final Lcom/google/android/gms/internal/ads/zzchh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Landroid/content/Context;

.field private final zzc:J

.field private final zzd:Ljava/lang/ref/WeakReference;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzchf;Lcom/google/android/gms/internal/ads/zzchg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchf;->zzc(Lcom/google/android/gms/internal/ads/zzchf;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchf;->zzb(Lcom/google/android/gms/internal/ads/zzchf;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchf;->zzg(Lcom/google/android/gms/internal/ads/zzchf;)Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzd:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzchf;->zza(Lcom/google/android/gms/internal/ads/zzchf;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzc:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method final zzb()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/ads/internal/zzk;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/ads/zzbfx;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfx;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method final zze()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 2
    .line 3
    return-object v0
.end method

.method final zzf()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzb:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method final zzg()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchh;->zzd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method
