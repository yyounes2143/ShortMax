.class final Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcnc;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcnc;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzl(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfdi;

    .line 7
    .line 8
    .line 9
    move-result-object v8

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzm(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfju;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzk(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzc:Ljava/util/List;

    .line 27
    .line 28
    const-string v4, ""

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfju;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzg(Lcom/google/android/gms/internal/ads/zzcnc;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzA(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eq v1, p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x2

    .line 53
    :goto_0
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdi;->zzc(Ljava/util/List;I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
