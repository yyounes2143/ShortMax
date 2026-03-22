.class public final Lcom/google/android/gms/internal/ads/zztc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzti;

.field public final zzb:Landroid/media/MediaFormat;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzz;

.field public final zzd:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zze:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzf:Lcom/google/android/gms/internal/ads/zztb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzti;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zztb;)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zztb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztc;->zza:Lcom/google/android/gms/internal/ads/zzti;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztc;->zzb:Landroid/media/MediaFormat;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztc;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zztc;->zzd:Landroid/view/Surface;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztc;->zze:Landroid/media/MediaCrypto;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zztc;->zzf:Lcom/google/android/gms/internal/ads/zztb;

    .line 16
    .line 17
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzti;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zztb;)Lcom/google/android/gms/internal/ads/zztc;
    .locals 7
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zztb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zztc;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p3

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzti;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zztb;)V

    .line 11
    .line 12
    .line 13
    return-object p3
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzti;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zztc;
    .locals 7
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p4, Lcom/google/android/gms/internal/ads/zztc;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p4

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzti;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zztb;)V

    .line 11
    .line 12
    .line 13
    return-object p4
.end method
