.class final Lcom/google/android/gms/internal/ads/zzrd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzz;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:Lcom/google/android/gms/internal/ads/zzck;

.field public final zzj:Z

.field public final zzk:Z

.field public final zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzd:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzrd;->zze:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzf:I

    .line 15
    .line 16
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzg:I

    .line 17
    .line 18
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzh:I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzk:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzl:Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzqi;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 2
    .line 3
    new-instance v8, Lcom/google/android/gms/internal/ads/zzqi;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v6, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v6, v0

    .line 12
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzf:I

    .line 13
    .line 14
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zze:I

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzg:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzh:I

    .line 20
    .line 21
    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(IIIZZI)V

    .line 23
    .line 24
    .line 25
    return-object v8
.end method
