.class public final synthetic Lcom/google/android/gms/internal/ads/zzcgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcb;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zza:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzb:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbcj$zzt$zza;)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:I

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj$zzbl;->zzb()Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;->zzf()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zza:Z

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzb:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;->zze(I)Lcom/google/android/gms/internal/ads/zzbcj$zzbl$zza;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcj$zzbl;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzt$zza;->zzab(Lcom/google/android/gms/internal/ads/zzbcj$zzbl;)Lcom/google/android/gms/internal/ads/zzbcj$zzt$zza;

    .line 30
    .line 31
    .line 32
    return-void
.end method
