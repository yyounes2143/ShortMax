.class public final Lcom/google/android/gms/internal/ads/zzcvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzbxw;)Lcom/google/android/gms/internal/ads/zzbya;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzA:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v3, :cond_1

    .line 5
    .line 6
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    move-object v4, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 13
    .line 14
    move-object v4, p2

    .line 15
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbxv;

    .line 16
    .line 17
    move-object v0, p2

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbxv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxw;)V

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_1
    return-object v0
.end method
