.class final Lcom/google/android/gms/internal/ads/zzgze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyv;


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/ads/zzhck;

.field final zzc:Z

.field final zzd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzm;ILcom/google/android/gms/internal/ads/zzhck;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgze;->zza:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzb:Lcom/google/android/gms/internal/ads/zzhck;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzc:Z

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzd:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgze;

    .line 2
    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgze;->zza:I

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zza:I

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zza:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhck;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzb:Lcom/google/android/gms/internal/ads/zzhck;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhcl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzb:Lcom/google/android/gms/internal/ads/zzhck;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhck;->zza()Lcom/google/android/gms/internal/ads/zzhcl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgze;->zzc:Z

    .line 2
    .line 3
    return v0
.end method
