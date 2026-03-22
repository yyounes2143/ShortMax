.class public final Lcom/google/android/gms/internal/ads/zzghx;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzghv;


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzghv;Lcom/google/android/gms/internal/ads/zzghw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 7
    .line 8
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzghu;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghw;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzghx;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghx;

    .line 8
    .line 9
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 8
    .line 9
    const-class v2, Lcom/google/android/gms/internal/ads/zzghx;

    .line 10
    .line 11
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "AesGcmSiv Parameters (variant: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", "

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "-byte key)"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghv;->zzc:Lcom/google/android/gms/internal/ads/zzghv;

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

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zza:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzghv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghv;

    .line 2
    .line 3
    return-object v0
.end method
