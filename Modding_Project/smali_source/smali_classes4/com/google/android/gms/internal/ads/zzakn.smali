.class public final Lcom/google/android/gms/internal/ads/zzakn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaks;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzako;->zza()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_3

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzako;->zzb(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    invoke-interface {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzako;->zzc(J)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzako;->zza()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    add-int/lit8 v0, p1, 0x1

    .line 32
    .line 33
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzako;->zzb(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzako;->zzb(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    sub-long v5, v0, v5

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    cmp-long v0, v5, v0

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakl;

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Ljava/util/List;JJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdn;->zza(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    return-void
.end method
