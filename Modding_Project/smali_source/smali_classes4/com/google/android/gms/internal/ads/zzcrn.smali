.class final Lcom/google/android/gms/internal/ads/zzcrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcrp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;Lcom/google/android/gms/internal/ads/zzgdj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzb:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdj;->zza(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzb:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcrp;->zzd(Lcom/google/android/gms/internal/ads/zzcrp;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcri;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcri;->zza:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzb:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcrp;->zzc(Lcom/google/android/gms/internal/ads/zzcrp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgdj;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
