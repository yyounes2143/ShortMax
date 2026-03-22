.class final Lcom/google/android/gms/internal/ads/zzgis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgxe;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgoh;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgod;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgmx;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzgmt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzb:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgio;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgio;-><init>()V

    .line 12
    .line 13
    .line 14
    const-class v2, Lcom/google/android/gms/internal/ads/zzgin;

    .line 15
    .line 16
    const-class v3, Lcom/google/android/gms/internal/ads/zzgoy;

    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoh;->zzb(Lcom/google/android/gms/internal/ads/zzgof;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoh;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgoh;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgip;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgip;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgod;->zzb(Lcom/google/android/gms/internal/ads/zzgob;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgod;

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiq;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgiq;-><init>()V

    .line 38
    .line 39
    .line 40
    const-class v2, Lcom/google/android/gms/internal/ads/zzgil;

    .line 41
    .line 42
    const-class v3, Lcom/google/android/gms/internal/ads/zzgox;

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgmx;->zzb(Lcom/google/android/gms/internal/ads/zzgmv;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmx;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzgmx;

    .line 49
    .line 50
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgir;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgir;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgmt;->zzb(Lcom/google/android/gms/internal/ads/zzgmr;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmt;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Lcom/google/android/gms/internal/ads/zzgmt;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgil;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zze()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzguv;->zzd(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzguv;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzguv;->zza()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzguv;->zzf()Lcom/google/android/gms/internal/ads/zzguy;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzguy;->zzf()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgis;->zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgim;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgin;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgin;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzf()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgil;->zzc(Lcom/google/android/gms/internal/ads/zzgin;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgil;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "KmsAeadKey are only accepted with version 0, got "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 90
    .line 91
    const-string v0, "Parsing KmsAeadKey failed: "

    .line 92
    .line 93
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgoy;)Lcom/google/android/gms/internal/ads/zzgin;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzh()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzguy;->zzd(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzguy;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguy;->zzf()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgim;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgin;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgin;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 56
    .line 57
    const-string v1, "Parsing KmsAeadKeyFormat failed: "

    .line 58
    .line 59
    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgil;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgox;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguv;->zzb()Lcom/google/android/gms/internal/ads/zzgut;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguy;->zza()Lcom/google/android/gms/internal/ads/zzguw;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgil;->zzd()Lcom/google/android/gms/internal/ads/zzgin;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgin;->zzd()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzguw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzguw;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zzguy;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgut;->zza(Lcom/google/android/gms/internal/ads/zzguy;)Lcom/google/android/gms/internal/ads/zzgut;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/ads/zzguv;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaN()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zze:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgil;->zzd()Lcom/google/android/gms/internal/ads/zzgin;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgin;->zzb()Lcom/google/android/gms/internal/ads/zzgim;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgis;->zzg(Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgvf;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgil;->zze()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 58
    .line 59
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgox;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzgvf;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgox;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgin;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zza()Lcom/google/android/gms/internal/ads/zzgud;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguy;->zza()Lcom/google/android/gms/internal/ads/zzguw;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgin;->zzd()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzguw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzguw;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/gms/internal/ads/zzguy;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaN()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zzc(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgin;->zzb()Lcom/google/android/gms/internal/ads/zzgim;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzg(Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgvf;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgud;->zza(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/google/android/gms/internal/ads/zzguf;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzb(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgoy;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgny;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgoh;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzi(Lcom/google/android/gms/internal/ads/zzgoh;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgod;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzh(Lcom/google/android/gms/internal/ads/zzgod;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzgmx;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzg(Lcom/google/android/gms/internal/ads/zzgmx;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Lcom/google/android/gms/internal/ads/zzgmt;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzf(Lcom/google/android/gms/internal/ads/zzgmt;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgim;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgim;->zzb:Lcom/google/android/gms/internal/ads/zzgim;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Unable to parse OutputPrefixType: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgim;->zza:Lcom/google/android/gms/internal/ads/zzgim;

    .line 42
    .line 43
    return-object p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzgim;)Lcom/google/android/gms/internal/ads/zzgvf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgim;->zza:Lcom/google/android/gms/internal/ads/zzgim;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgvf;->zzb:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgim;->zzb:Lcom/google/android/gms/internal/ads/zzgim;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgvf;->zzd:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "Unable to serialize variant: "

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method
