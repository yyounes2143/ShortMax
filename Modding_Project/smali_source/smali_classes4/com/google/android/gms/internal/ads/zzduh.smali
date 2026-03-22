.class public final synthetic Lcom/google/android/gms/internal/ads/zzduh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdun;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzbzm;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzm;->zzc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
