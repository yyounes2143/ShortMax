.class public final Lcom/google/android/gms/internal/ads/zzafu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaew;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaew;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "image/avif"

    .line 16
    .line 17
    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaew;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzaew;

    .line 21
    .line 22
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzadw;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadl;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    int-to-long p1, p2

    .line 22
    cmp-long p1, v0, p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    return v3
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzaew;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaew;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzaew;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaew;->zze(Lcom/google/android/gms/internal/ads/zzady;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Lcom/google/android/gms/internal/ads/zzaew;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaew;->zzf(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzadl;

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzl(IZ)Z

    .line 7
    .line 8
    .line 9
    const v0, 0x66747970

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzafu;->zza(Lcom/google/android/gms/internal/ads/zzadw;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const v0, 0x61766966

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzafu;->zza(Lcom/google/android/gms/internal/ads/zzadw;I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    return v2
.end method
