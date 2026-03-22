.class public final Lcom/google/android/gms/internal/ads/zzdjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzac;->zza(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    const-string p1, "0"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "1"

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "action"

    .line 41
    .line 42
    const-string v2, "hcp"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzc(Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzj()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method
