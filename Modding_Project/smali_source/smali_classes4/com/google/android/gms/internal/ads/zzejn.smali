.class final Lcom/google/android/gms/internal/ads/zzejn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejo;Lcom/google/android/gms/internal/ads/zzdfc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejn;->zza:Lcom/google/android/gms/internal/ads/zzdfc;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejn;->zza:Lcom/google/android/gms/internal/ads/zzdfc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrb;->zzb()Lcom/google/android/gms/internal/ads/zzcvw;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvw;->onAdClicked()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejn;->zza:Lcom/google/android/gms/internal/ads/zzdfc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfc;->zzc()Lcom/google/android/gms/internal/ads/zzcwq;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcwq;->zza()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrb;->zzf()Lcom/google/android/gms/internal/ads/zzdef;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdef;->zza()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
