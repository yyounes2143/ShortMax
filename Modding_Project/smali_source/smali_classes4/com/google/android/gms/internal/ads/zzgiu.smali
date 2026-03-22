.class public final Lcom/google/android/gms/internal/ads/zzgiu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgiw;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzgiv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzgga;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgix;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzgiu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzd:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgiv;)Lcom/google/android/gms/internal/ads/zzgiu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzc:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgiu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgiw;)Lcom/google/android/gms/internal/ads/zzgiu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgiy;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgiw;->zzb:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzb:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzc:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 14
    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzd:Lcom/google/android/gms/internal/ads/zzgga;

    .line 18
    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_8

    .line 26
    .line 27
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zza:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzghm;

    .line 36
    .line 37
    if-nez v2, :cond_6

    .line 38
    .line 39
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zzc:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgid;

    .line 48
    .line 49
    if-nez v2, :cond_6

    .line 50
    .line 51
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zzb:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzgka;

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zzd:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzggr;

    .line 72
    .line 73
    if-nez v2, :cond_6

    .line 74
    .line 75
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zze:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzghb;

    .line 84
    .line 85
    if-nez v2, :cond_6

    .line 86
    .line 87
    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgiv;->zzf:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzghx;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiy;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zza:Lcom/google/android/gms/internal/ads/zzgiw;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzb:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzc:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 106
    .line 107
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzd:Lcom/google/android/gms/internal/ads/zzgga;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    move-object v1, v0

    .line 111
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgiy;-><init>(Lcom/google/android/gms/internal/ads/zzgiw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgiv;Lcom/google/android/gms/internal/ads/zzgga;Lcom/google/android/gms/internal/ads/zzgix;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzc:Lcom/google/android/gms/internal/ads/zzgiv;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgiv;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgiu;->zzd:Lcom/google/android/gms/internal/ads/zzgga;

    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v4, "Cannot use parsing strategy "

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, " when new keys are picked according to "

    .line 143
    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, "."

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 164
    .line 165
    const-string v1, "dekParametersForNewKeys must not have ID Requirements"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 172
    .line 173
    const-string v1, "dekParametersForNewKeys must be set"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 180
    .line 181
    const-string v1, "dekParsingStrategy must be set"

    .line 182
    .line 183
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 188
    .line 189
    const-string v1, "kekUri must be set"

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0
.end method
