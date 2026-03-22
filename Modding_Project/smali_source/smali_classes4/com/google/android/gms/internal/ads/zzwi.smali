.class final Lcom/google/android/gms/internal/ads/zzwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzwl;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwl;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzwi;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;->zzj(ILcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final zzb(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzl(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwl;->zzI(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwi;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwi;->zzb:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwl;->zzQ(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
