.class public final Lcom/google/android/gms/internal/ads/zzdtw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtk;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzelg;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdtp;Lcom/google/android/gms/internal/ads/zzche;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:J

    .line 5
    .line 6
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzche;->zzu()Lcom/google/android/gms/internal/ads/zzfaf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfaf;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfaf;

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzfaf;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfaf;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfaf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfaf;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfaf;->zzd()Lcom/google/android/gms/internal/ads/zzfag;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfag;->zza()Lcom/google/android/gms/internal/ads/zzelg;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzelg;

    .line 33
    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdtv;

    .line 35
    .line 36
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzdtv;-><init>(Lcom/google/android/gms/internal/ads/zzdtw;Lcom/google/android/gms/internal/ads/zzdtp;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzelg;->zzE(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdtw;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelg;->zzy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelg;->zzad(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zzY(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
