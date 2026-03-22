.class final Lcom/google/android/gms/internal/ads/zzlx;
.super Lcom/google/android/gms/internal/ads/zzuv;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzly;Lcom/google/android/gms/internal/ads/zzbl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzuv;-><init>(Lcom/google/android/gms/internal/ads/zzbl;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbk;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuv;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbl;->zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbk;->zzb()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbj;->zza:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzb:Ljava/lang/Object;

    .line 26
    .line 27
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    .line 28
    .line 29
    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    .line 30
    .line 31
    sget-object v9, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbj;->zzi(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzb;Z)Lcom/google/android/gms/internal/ads/zzbj;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzf:Z

    .line 43
    .line 44
    :goto_0
    return-object p1
.end method
