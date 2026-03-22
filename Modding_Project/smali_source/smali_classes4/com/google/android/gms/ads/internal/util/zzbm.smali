.class public final Lcom/google/android/gms/ads/internal/util/zzbm;
.super Lcom/google/android/gms/internal/ads/zzaqd;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcak;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbl;

    .line 2
    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbl;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaqh;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 11
    .line 12
    new-instance p2, Lcom/google/android/gms/ads/internal/util/client/zzl;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    .line 19
    .line 20
    const-string v0, "GET"

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method protected final zzh(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzaqj;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzara;->zzb(Lcom/google/android/gms/internal/ads/zzapz;)Lcom/google/android/gms/internal/ads/zzapm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqj;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzapm;)Lcom/google/android/gms/internal/ads/zzaqj;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected final bridge synthetic zzo(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzapz;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapz;->zzc:Ljava/util/Map;

    .line 4
    .line 5
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzapz;->zza:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzf(Ljava/util/Map;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapz;->zzb:[B

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzh([B)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
