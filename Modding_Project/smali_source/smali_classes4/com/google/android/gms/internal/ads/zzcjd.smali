.class final Lcom/google/android/gms/internal/ads/zzcjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcio;

.field private zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/internal/ads/zzble;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzble;)Lcom/google/android/gms/internal/ads/zzdtt;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzc:Lcom/google/android/gms/internal/ads/zzble;

    .line 5
    .line 6
    return-object p0
.end method

.method public final bridge synthetic zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdtt;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdtu;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzc:Lcom/google/android/gms/internal/ads/zzble;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/gms/internal/ads/zzble;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcje;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zza:Lcom/google/android/gms/internal/ads/zzcio;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzb:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjd;->zzc:Lcom/google/android/gms/internal/ads/zzble;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcje;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzble;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
