.class final Lcom/google/android/gms/internal/ads/zzeii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzedp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwl;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzcwl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdgm;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzedp;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfdu;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfdu;->zzv(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfdu;->zzA()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfdd; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 16
    .line 17
    const-string p2, "Cannot show rewarded video."

    .line 18
    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdgm;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p2
.end method
