.class final Lcom/google/android/gms/internal/ads/zzcjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdor;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcio;

.field private zzb:Lcom/google/android/gms/internal/ads/zzezv;

.field private zzc:Lcom/google/android/gms/internal/ads/zzeyy;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdbw;

.field private zze:Lcom/google/android/gms/internal/ads/zzcvh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzeyy;)Lcom/google/android/gms/internal/ads/zzcvd;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzeyy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzc:Lcom/google/android/gms/internal/ads/zzeyy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzezv;)Lcom/google/android/gms/internal/ads/zzcvd;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzezv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzb:Lcom/google/android/gms/internal/ads/zzezv;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zze:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdos;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzdbw;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zze:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/gms/internal/ads/zzcvh;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjo;

    .line 16
    .line 17
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcsg;

    .line 18
    .line 19
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfeb;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuh;

    .line 28
    .line 29
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcuh;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdsy;

    .line 33
    .line 34
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zze:Lcom/google/android/gms/internal/ads/zzcvh;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehm;->zza()Lcom/google/android/gms/internal/ads/zzehk;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzb:Lcom/google/android/gms/internal/ads/zzezv;

    .line 46
    .line 47
    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zzc:Lcom/google/android/gms/internal/ads/zzeyy;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjn;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    move-object v2, v0

    .line 53
    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzcjo;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcsg;Lcom/google/android/gms/internal/ads/zzfeb;Lcom/google/android/gms/internal/ads/zzcuh;Lcom/google/android/gms/internal/ads/zzdsy;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzcvh;Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzezv;Lcom/google/android/gms/internal/ads/zzeyy;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcjn;->zze()Lcom/google/android/gms/internal/ads/zzdos;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
