.class public final Lcom/google/android/gms/internal/ads/zzdyg;
.super Lcom/google/android/gms/internal/ads/zzbvh;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdyi;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzdyi;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvh;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/zzba;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyy;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdyi;->zze:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyy;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zza:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdyi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
