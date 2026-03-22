.class final Lcom/google/android/gms/internal/ads/zzefa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfca;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzefb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefa;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzc:Lcom/google/android/gms/internal/ads/zzefb;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwl;)V
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzcwl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefa;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcak;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 11
    .line 12
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzc:Lcom/google/android/gms/internal/ads/zzefb;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzefb;->zzc(Lcom/google/android/gms/internal/ads/zzefb;)Lcom/google/android/gms/internal/ads/zzdsj;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    return-void
.end method
