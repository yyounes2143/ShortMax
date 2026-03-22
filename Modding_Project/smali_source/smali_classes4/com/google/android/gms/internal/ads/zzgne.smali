.class public final Lcom/google/android/gms/internal/ads/zzgne;
.super Lcom/google/android/gms/internal/ads/zzgfm;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgoy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgoy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgne;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgne;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzh()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzh()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxz;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    return p1

    .line 81
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzd()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    .line 35
    const-string v0, "UNKNOWN"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "CRUNCHY"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "RAW"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "LEGACY"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "TINK"

    .line 48
    .line 49
    :goto_0
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    .line 54
    .line 55
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgvf;->zzd:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgne;->zza:Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    return-object v0
.end method
