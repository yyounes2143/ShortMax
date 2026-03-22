.class final Lcom/google/android/gms/internal/ads/zzcjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcio;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcvh;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzb:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzb:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzcvh;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjq;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;

    .line 18
    .line 19
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcsg;

    .line 20
    .line 21
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuh;

    .line 25
    .line 26
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcuh;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdsy;

    .line 30
    .line 31
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zzb:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    move-object v2, v0

    .line 41
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcjq;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaz;Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzcuh;Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzcvh;Lcom/google/android/gms/internal/ads/zzezv;Lcom/google/android/gms/internal/ads/zzeyy;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method
