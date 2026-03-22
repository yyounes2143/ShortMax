.class public final Lcom/google/android/gms/internal/ads/zzbgc;
.super Lcom/google/android/gms/internal/ads/zzbgo;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field private final zza:Landroid/graphics/drawable/Drawable;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:D

.field private final zzd:I

.field private final zze:I

.field private final zzf:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DIILjava/util/Map;)V
    .locals 0
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgo;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zza:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzb:Landroid/net/Uri;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzc:D

    .line 9
    .line 10
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzd:I

    .line 11
    .line 12
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zze:I

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzf:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zzb()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzc:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzd:I

    .line 2
    .line 3
    return v0
.end method

.method public final zze()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zza:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzg()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzf:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
