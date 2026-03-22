.class public final Lcom/google/android/gms/internal/ads/zzbpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/util/concurrent/e;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/e;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpi;->zzb:Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    const-string p1, "google.afma.activeView.handleUpdate"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpi;->zza:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbpi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbke;->zzo:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 18
    .line 19
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbph;

    .line 20
    .line 21
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbph;-><init>(Lcom/google/android/gms/internal/ads/zzbpi;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbkv;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbku;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "id"

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v1, "args"

    .line 38
    .line 39
    check-cast p1, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbpi;->zza:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzbnm;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpi;->zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpg;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbpg;-><init>(Lcom/google/android/gms/internal/ads/zzbpi;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpi;->zzb:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
