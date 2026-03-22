.class public final Lcom/google/android/gms/internal/ads/zzghc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzghm;

.field private zzb:Lcom/google/android/gms/internal/ads/zzgxf;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzb:Lcom/google/android/gms/internal/ads/zzgxf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzghd;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzb:Lcom/google/android/gms/internal/ads/zzgxf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzghc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzb:Lcom/google/android/gms/internal/ads/zzgxf;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzghm;)Lcom/google/android/gms/internal/ads/zzghc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzghe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzb:Lcom/google/android/gms/internal/ads/zzgxf;

    .line 6
    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzb()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v2, v1, :cond_7

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zza()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 31
    .line 32
    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zza()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 52
    .line 53
    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzd()Lcom/google/android/gms/internal/ads/zzghk;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghk;->zzc:Lcom/google/android/gms/internal/ads/zzghk;

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnz;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    .line 70
    .line 71
    :goto_2
    move-object v4, v0

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzd()Lcom/google/android/gms/internal/ads/zzghk;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghk;->zzb:Lcom/google/android/gms/internal/ads/zzghk;

    .line 80
    .line 81
    if-ne v0, v1, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnz;->zza(I)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzd()Lcom/google/android/gms/internal/ads/zzghk;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/ads/zzghk;->zza:Lcom/google/android/gms/internal/ads/zzghk;

    .line 101
    .line 102
    if-ne v0, v1, :cond_6

    .line 103
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnz;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxe;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghe;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzb:Lcom/google/android/gms/internal/ads/zzgxf;

    .line 120
    .line 121
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzghc;->zzc:Ljava/lang/Integer;

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    move-object v1, v0

    .line 125
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghe;-><init>(Lcom/google/android/gms/internal/ads/zzghm;Lcom/google/android/gms/internal/ads/zzgxf;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzghd;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghc;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzd()Lcom/google/android/gms/internal/ads/zzghk;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string v2, "Unknown AesGcmParameters.Variant: "

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 152
    .line 153
    const-string v1, "Key size mismatch"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 160
    .line 161
    const-string v1, "Cannot build without parameters and/or key material"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0
.end method
