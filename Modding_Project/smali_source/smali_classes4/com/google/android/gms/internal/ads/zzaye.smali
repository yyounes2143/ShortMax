.class public final Lcom/google/android/gms/internal/ads/zzaye;
.super Lcom/google/android/gms/internal/ads/zzayk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzaxe;

.field private zzi:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;IILcom/google/android/gms/internal/ads/zzaxe;)V
    .locals 7

    .line 1
    const-string v3, "BTo9KBR1VAIklcWQcnKn1k6hpYvG+18rom++PUlQVcU="

    .line 2
    .line 3
    const/16 v6, 0x35

    .line 4
    .line 5
    const-string v2, "YdsvNQpLn71zCPsmNiBmaxgvKAoUotN+t67Ej8NmXEez61kI/ElwL7USsI8xuH+E"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzawx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzast;II)V

    .line 12
    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzh:Lcom/google/android/gms/internal/ads/zzaxe;

    .line 15
    .line 16
    if-eqz p7, :cond_0

    .line 17
    .line 18
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzaxe;->zza()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzi:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzh:Lcom/google/android/gms/internal/ads/zzaxe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayk;->zzd:Lcom/google/android/gms/internal/ads/zzast;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayk;->zze:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzi:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzN(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
