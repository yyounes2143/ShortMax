.class final Lcom/google/android/gms/internal/ads/zzgnb;
.super Lcom/google/android/gms/internal/ads/zzgfm;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvf;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgvf;Lcom/google/android/gms/internal/ads/zzgnc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnb;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnb;->zzb:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnb;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnb;->zzb:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    const-string v1, "UNKNOWN"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "CRUNCHY"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "RAW"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "LEGACY"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string v1, "TINK"

    .line 34
    .line 35
    :goto_0
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnb;->zzb:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgvf;->zzd:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
