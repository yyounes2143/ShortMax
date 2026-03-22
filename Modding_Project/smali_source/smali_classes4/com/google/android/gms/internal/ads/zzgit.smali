.class public final Lcom/google/android/gms/internal/ads/zzgit;
.super Lcom/google/android/gms/internal/ads/zzgfz;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgiy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgxe;

.field private final zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgiy;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgfz;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzgiy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzc:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgiy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzc()Lcom/google/android/gms/internal/ads/zzgiw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgiw;->zzb:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnz;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzc()Lcom/google/android/gms/internal/ads/zzgiw;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgiw;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 27
    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgit;

    .line 41
    .line 42
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgit;-><init>(Lcom/google/android/gms/internal/ads/zzgiy;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzc()Lcom/google/android/gms/internal/ads/zzgiw;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "Unknown Variant: "

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgfm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzgiy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgxe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzb:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgiy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzgiy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zzc:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method
