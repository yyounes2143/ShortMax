.class public final Lcom/google/android/gms/internal/ads/zzglt;
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
    const-string v0, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zzb:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzglp;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzglp;-><init>()V

    .line 12
    .line 13
    .line 14
    const-class v2, Lcom/google/android/gms/internal/ads/zzgjt;

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
    sput-object v1, Lcom/google/android/gms/internal/ads/zzglt;->zzc:Lcom/google/android/gms/internal/ads/zzgoh;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzglq;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzglq;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgod;->zzb(Lcom/google/android/gms/internal/ads/zzgob;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/google/android/gms/internal/ads/zzglt;->zzd:Lcom/google/android/gms/internal/ads/zzgod;

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzglr;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzglr;-><init>()V

    .line 38
    .line 39
    .line 40
    const-class v2, Lcom/google/android/gms/internal/ads/zzgjo;

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
    sput-object v1, Lcom/google/android/gms/internal/ads/zzglt;->zze:Lcom/google/android/gms/internal/ads/zzgmx;

    .line 49
    .line 50
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgls;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgls;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzgmt;->zzb(Lcom/google/android/gms/internal/ads/zzgmr;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmt;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zzf:Lcom/google/android/gms/internal/ads/zzgmt;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgjo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zze()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvl;->zzd(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzgvl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvl;->zza()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvl;->zzg()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzd()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzglt;->zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgjs;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvl;->zzf()Lcom/google/android/gms/internal/ads/zzgvr;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgjt;->zzd(Lcom/google/android/gms/internal/ads/zzgjs;I)Lcom/google/android/gms/internal/ads/zzgjt;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvl;->zzg()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzA()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxf;->zzb([BLcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgxf;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgox;->zzf()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzgjo;->zzc(Lcom/google/android/gms/internal/ads/zzgjt;Lcom/google/android/gms/internal/ads/zzgxf;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgjo;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 85
    .line 86
    const-string p1, "Only 32 byte key size is accepted"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 93
    .line 94
    const-string p1, "Only version 0 keys are accepted"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 101
    .line 102
    const-string p1, "Parsing XAesGcmKey failed"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    const-string p1, "Wrong type URL in call to XAesGcmProtoSerialization.parseKey"

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgoy;)Lcom/google/android/gms/internal/ads/zzgjt;
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
    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvo;->zzd(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzgvo;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvo;->zza()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzg()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzglt;->zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgjs;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvo;->zzf()Lcom/google/android/gms/internal/ads/zzgvr;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgjt;->zzd(Lcom/google/android/gms/internal/ads/zzgjs;I)Lcom/google/android/gms/internal/ads/zzgjt;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 65
    .line 66
    const-string v0, "Only version 0 parameters are accepted"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    const-string v1, "Parsing XAesGcmParameters failed: "

    .line 76
    .line 77
    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v1, "Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: "

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgjo;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgox;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvl;->zzb()Lcom/google/android/gms/internal/ads/zzgvj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjo;->zze()Lcom/google/android/gms/internal/ads/zzgxf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd(Lcom/google/android/gms/internal/ads/zzgfn;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxz;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvj;->zza(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzgvj;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zzb()Lcom/google/android/gms/internal/ads/zzgvp;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjo;->zzd()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjt;->zzb()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgvp;->zza(I)Lcom/google/android/gms/internal/ads/zzgvp;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvj;->zzb(Lcom/google/android/gms/internal/ads/zzgvr;)Lcom/google/android/gms/internal/ads/zzgvj;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvl;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaN()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjo;->zzd()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjt;->zzc()Lcom/google/android/gms/internal/ads/zzgjs;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzglt;->zzg(Lcom/google/android/gms/internal/ads/zzgjs;)Lcom/google/android/gms/internal/ads/zzgvf;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjo;->zzf()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string v2, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 75
    .line 76
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgox;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzgvf;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgox;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgjt;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zza()Lcom/google/android/gms/internal/ads/zzgud;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvo;->zzb()Lcom/google/android/gms/internal/ads/zzgvm;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zzb()Lcom/google/android/gms/internal/ads/zzgvp;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjt;->zzb()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgvp;->zza(I)Lcom/google/android/gms/internal/ads/zzgvp;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvm;->zza(Lcom/google/android/gms/internal/ads/zzgvr;)Lcom/google/android/gms/internal/ads/zzgvm;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaN()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgud;->zzc(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjt;->zzc()Lcom/google/android/gms/internal/ads/zzgjs;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzglt;->zzg(Lcom/google/android/gms/internal/ads/zzgjs;)Lcom/google/android/gms/internal/ads/zzgvf;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgud;->zza(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgud;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/google/android/gms/internal/ads/zzguf;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoy;->zzb(Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzgoy;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zzc:Lcom/google/android/gms/internal/ads/zzgoh;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzi(Lcom/google/android/gms/internal/ads/zzgoh;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zzd:Lcom/google/android/gms/internal/ads/zzgod;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzh(Lcom/google/android/gms/internal/ads/zzgod;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zze:Lcom/google/android/gms/internal/ads/zzgmx;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzg(Lcom/google/android/gms/internal/ads/zzgmx;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzglt;->zzf:Lcom/google/android/gms/internal/ads/zzgmt;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgny;->zzf(Lcom/google/android/gms/internal/ads/zzgmt;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgjs;
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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Lcom/google/android/gms/internal/ads/zzgjs;

    .line 42
    .line 43
    return-object p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzgjs;)Lcom/google/android/gms/internal/ads/zzgvf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Lcom/google/android/gms/internal/ads/zzgjs;

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjs;

    .line 13
    .line 14
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
