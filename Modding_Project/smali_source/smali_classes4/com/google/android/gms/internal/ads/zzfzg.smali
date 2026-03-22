.class public final Lcom/google/android/gms/internal/ads/zzfzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method public static zzb(I)Ljava/util/ArrayList;
    .locals 1

    .line 1
    const-string v0, "initialArraySize"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfxn;->zza(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzd;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzd;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfve;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzf;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzf;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfve;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object v0
.end method
