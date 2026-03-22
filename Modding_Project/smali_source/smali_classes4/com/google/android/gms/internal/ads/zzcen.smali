.class public final synthetic Lcom/google/android/gms/internal/ads/zzcen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaea;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzadv;
    .locals 8

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzceo;->zza:I

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajj;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajj;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahy;

    .line 9
    .line 10
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahy;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/google/android/gms/internal/ads/zzajd;

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Lcom/google/android/gms/internal/ads/zzakr;ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzajp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafb;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzadv;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p1, v0, v1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput-object p2, v0, p1

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    aput-object v7, v0, p1

    .line 41
    .line 42
    return-object v0
.end method
