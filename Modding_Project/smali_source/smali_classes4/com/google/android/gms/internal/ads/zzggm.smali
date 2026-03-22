.class public final Lcom/google/android/gms/internal/ads/zzggm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgfa;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgnp;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggj;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/google/android/gms/internal/ads/zzggi;

    .line 7
    .line 8
    const-class v2, Lcom/google/android/gms/internal/ads/zzget;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggm;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsa;->zzh()Lcom/google/android/gms/internal/ads/zzhba;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 23
    .line 24
    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzhba;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggm;->zzc:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggk;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggk;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggm;->zzd:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggl;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggl;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggm;->zze:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    sput v0, Lcom/google/android/gms/internal/ads/zzggm;->zzf:I

    .line 46
    .line 47
    return-void
.end method

.method public static zza(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzggm;->zzf:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/google/android/gms/internal/ads/zzgkf;->zza:I

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkf;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggm;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()Lcom/google/android/gms/internal/ads/zzgnu;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 37
    .line 38
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgjn;->zze:Lcom/google/android/gms/internal/ads/zzggr;

    .line 39
    .line 40
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzggn;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggn;-><init>(Lcom/google/android/gms/internal/ads/zzggq;)V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0x10

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggn;->zza(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x20

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggn;->zzc(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggn;->zze(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggn;->zzd(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 63
    .line 64
    .line 65
    sget-object v6, Lcom/google/android/gms/internal/ads/zzggo;->zzc:Lcom/google/android/gms/internal/ads/zzggo;

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzggn;->zzb(Lcom/google/android/gms/internal/ads/zzggo;)Lcom/google/android/gms/internal/ads/zzggn;

    .line 68
    .line 69
    .line 70
    sget-object v7, Lcom/google/android/gms/internal/ads/zzggp;->zzc:Lcom/google/android/gms/internal/ads/zzggp;

    .line 71
    .line 72
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzggn;->zzf(Lcom/google/android/gms/internal/ads/zzggp;)Lcom/google/android/gms/internal/ads/zzggn;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggn;->zzg()Lcom/google/android/gms/internal/ads/zzggr;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v8, "AES128_CTR_HMAC_SHA256_RAW"

    .line 80
    .line 81
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 85
    .line 86
    sget-object v8, Lcom/google/android/gms/internal/ads/zzgjn;->zzf:Lcom/google/android/gms/internal/ads/zzggr;

    .line 87
    .line 88
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/google/android/gms/internal/ads/zzggn;

    .line 92
    .line 93
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzggn;-><init>(Lcom/google/android/gms/internal/ads/zzggq;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggn;->zza(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggn;->zzc(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzggn;->zze(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzggn;->zzd(I)Lcom/google/android/gms/internal/ads/zzggn;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzggn;->zzb(Lcom/google/android/gms/internal/ads/zzggo;)Lcom/google/android/gms/internal/ads/zzggn;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzggn;->zzf(Lcom/google/android/gms/internal/ads/zzggp;)Lcom/google/android/gms/internal/ads/zzggn;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggn;->zzg()Lcom/google/android/gms/internal/ads/zzggr;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    .line 119
    .line 120
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnq;->zza()Lcom/google/android/gms/internal/ads/zzgnq;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggm;->zzd:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 135
    .line 136
    const-class v2, Lcom/google/android/gms/internal/ads/zzggr;

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnq;->zzb(Lcom/google/android/gms/internal/ads/zzgnp;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggm;->zze:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmp;->zzc()Lcom/google/android/gms/internal/ads/zzgmp;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggm;->zzc:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgmp;->zzf(Lcom/google/android/gms/internal/ads/zzgfa;IZ)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 162
    .line 163
    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    .line 164
    .line 165
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method
