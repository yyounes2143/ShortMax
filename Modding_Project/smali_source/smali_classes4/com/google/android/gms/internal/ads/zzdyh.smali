.class public final Lcom/google/android/gms/internal/ads/zzdyh;
.super Lcom/google/android/gms/internal/ads/zzbvh;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcak;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbvq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvh;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/zzba;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
