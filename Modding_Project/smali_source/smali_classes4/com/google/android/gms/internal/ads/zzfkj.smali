.class public final Lcom/google/android/gms/internal/ads/zzfkj;
.super Lcom/google/android/gms/ads/internal/client/zzcj;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkp;Lcom/google/android/gms/internal/ads/zzfkc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcj;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zze(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zza(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final zzf(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzf(I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzk(ILjava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzfv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzd(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzg(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbpq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzg(Lcom/google/android/gms/internal/ads/zzbpq;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkp;->zzi()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzp(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkp;->zzh(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzh(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final zzr(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzi(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final zzs(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzj(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzk(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzu(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzl(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzv(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Z
    .locals 1
    .param p3    # Lcom/google/android/gms/ads/internal/client/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
