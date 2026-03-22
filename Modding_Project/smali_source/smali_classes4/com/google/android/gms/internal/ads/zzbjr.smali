.class final Lcom/google/android/gms/internal/ads/zzbjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfse;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfse;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfse;->zzk()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfsf;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsf;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsf;->zzj()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsg;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsg;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfsg;->zzb(Lcom/google/android/gms/internal/ads/zzfsa;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    const-string p2, "DefaultGmsgHandlers.ResetPaid"

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
