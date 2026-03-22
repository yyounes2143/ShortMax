.class public final Lcom/google/android/gms/internal/ads/zzght;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgnp;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgfa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghq;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/google/android/gms/internal/ads/zzghp;

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
    sput-object v0, Lcom/google/android/gms/internal/ads/zzght;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghr;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghr;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzght;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghs;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghs;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzght;->zzd:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgte;->zzg()Lcom/google/android/gms/internal/ads/zzhba;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 37
    .line 38
    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzhba;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzght;->zze:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 43
    .line 44
    return-void
.end method

.method public static zza(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/google/android/gms/internal/ads/zzgkx;->zza:I

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgkx;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()Lcom/google/android/gms/internal/ads/zzgnu;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzghu;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghw;)V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghu;->zza(I)Lcom/google/android/gms/internal/ads/zzghu;

    .line 35
    .line 36
    .line 37
    sget-object v5, Lcom/google/android/gms/internal/ads/zzghv;->zza:Lcom/google/android/gms/internal/ads/zzghv;

    .line 38
    .line 39
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzghu;->zzb(Lcom/google/android/gms/internal/ads/zzghv;)Lcom/google/android/gms/internal/ads/zzghu;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghu;->zzc()Lcom/google/android/gms/internal/ads/zzghx;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v6, "AES128_GCM_SIV"

    .line 47
    .line 48
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/zzghu;

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghw;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghu;->zza(I)Lcom/google/android/gms/internal/ads/zzghu;

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/google/android/gms/internal/ads/zzghv;->zzc:Lcom/google/android/gms/internal/ads/zzghv;

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghu;->zzb(Lcom/google/android/gms/internal/ads/zzghv;)Lcom/google/android/gms/internal/ads/zzghu;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghu;->zzc()Lcom/google/android/gms/internal/ads/zzghx;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v6, "AES128_GCM_SIV_RAW"

    .line 69
    .line 70
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/google/android/gms/internal/ads/zzghu;

    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghw;)V

    .line 76
    .line 77
    .line 78
    const/16 v6, 0x20

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzghu;->zza(I)Lcom/google/android/gms/internal/ads/zzghu;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzghu;->zzb(Lcom/google/android/gms/internal/ads/zzghv;)Lcom/google/android/gms/internal/ads/zzghu;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghu;->zzc()Lcom/google/android/gms/internal/ads/zzghx;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v5, "AES256_GCM_SIV"

    .line 91
    .line 92
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/google/android/gms/internal/ads/zzghu;

    .line 96
    .line 97
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzghu;-><init>(Lcom/google/android/gms/internal/ads/zzghw;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzghu;->zza(I)Lcom/google/android/gms/internal/ads/zzghu;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzghu;->zzb(Lcom/google/android/gms/internal/ads/zzghv;)Lcom/google/android/gms/internal/ads/zzghu;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghu;->zzc()Lcom/google/android/gms/internal/ads/zzghx;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "AES256_GCM_SIV_RAW"

    .line 111
    .line 112
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnq;->zza()Lcom/google/android/gms/internal/ads/zzgnq;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v1, Lcom/google/android/gms/internal/ads/zzght;->zzd:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 127
    .line 128
    const-class v2, Lcom/google/android/gms/internal/ads/zzghx;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnq;->zzb(Lcom/google/android/gms/internal/ads/zzgnp;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/ads/zzght;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget-object v1, Lcom/google/android/gms/internal/ads/zzght;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmp;->zzc()Lcom/google/android/gms/internal/ads/zzgmp;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget-object v1, Lcom/google/android/gms/internal/ads/zzght;->zze:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 156
    .line 157
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgmp;->zzd(Lcom/google/android/gms/internal/ads/zzgfa;Z)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 162
    .line 163
    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    .line 164
    .line 165
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method
