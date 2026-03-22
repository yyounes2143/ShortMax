.class public final Lcom/google/android/gms/internal/ads/zzbca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private final zze:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zza:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzb:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzc:Z

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzd:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbca;->zze:Z

    .line 13
    .line 14
    return-void
.end method

.method public static zzb(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzbca;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbca;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move-wide v4, p3

    .line 8
    move v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbca;-><init>(Ljava/io/InputStream;ZZJZ)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzc()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zza:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzb:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zze:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzc:Z

    .line 2
    .line 3
    return v0
.end method
