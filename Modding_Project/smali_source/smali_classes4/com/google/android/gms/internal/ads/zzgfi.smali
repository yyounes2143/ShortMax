.class public final Lcom/google/android/gms/internal/ads/zzgfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgun;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgnh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgun;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgnh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zza:Lcom/google/android/gms/internal/ads/zzgun;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzc:Lcom/google/android/gms/internal/ads/zzgnh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/HashSet;

    .line 3
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgun;->zzh()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgul;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KeyID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgun;->zzb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgun;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgnh;Lcom/google/android/gms/internal/ads/zzgfh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(Lcom/google/android/gms/internal/ads/zzgun;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgnh;)V

    return-void
.end method

.method static final zzd(Lcom/google/android/gms/internal/ads/zzgun;)Lcom/google/android/gms/internal/ads/zzgfi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(Lcom/google/android/gms/internal/ads/zzgun;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zzi(Lcom/google/android/gms/internal/ads/zzgun;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgnh;->zza:Lcom/google/android/gms/internal/ads/zzgnh;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(Lcom/google/android/gms/internal/ads/zzgun;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgnh;)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public static final zze(Lcom/google/android/gms/internal/ads/zzgfm;)Lcom/google/android/gms/internal/ads/zzgfi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgff;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgff;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgfd;-><init>(Lcom/google/android/gms/internal/ads/zzgfm;Lcom/google/android/gms/internal/ads/zzgfh;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfd;->zzd()Lcom/google/android/gms/internal/ads/zzgfd;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfd;->zzc()Lcom/google/android/gms/internal/ads/zzgfd;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgff;->zza(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgff;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgff;->zzb()Lcom/google/android/gms/internal/ads/zzgfi;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzgun;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zzj(Lcom/google/android/gms/internal/ads/zzgun;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzgun;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzh()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_7

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgul;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v9, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvf;->zzd:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 44
    .line 45
    if-ne v4, v5, :cond_0

    .line 46
    .line 47
    move-object v3, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgub;->zzg()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgub;->zzf()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgub;->zzb()Lcom/google/android/gms/internal/ads/zzgtz;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v4, v5, v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzgox;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzgvf;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgox;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfn;->zza()Lcom/google/android/gms/internal/ads/zzgfn;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzgny;->zzj(Lcom/google/android/gms/internal/ads/zzgpb;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-nez v7, :cond_1

    .line 98
    .line 99
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 100
    .line 101
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgnd;-><init>(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzgfn;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    goto :goto_6

    .line 107
    :cond_1
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgny;->zza(Lcom/google/android/gms/internal/ads/zzgpb;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgez;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    move-object v4, v3

    .line 112
    :goto_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzgfg;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzk()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    add-int/lit8 v2, v2, -0x2

    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    if-eq v2, v3, :cond_4

    .line 122
    .line 123
    const/4 v5, 0x2

    .line 124
    if-eq v2, v5, :cond_3

    .line 125
    .line 126
    const/4 v5, 0x3

    .line 127
    if-ne v2, v5, :cond_2

    .line 128
    .line 129
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfb;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 130
    .line 131
    :goto_3
    move-object v5, v2

    .line 132
    goto :goto_4

    .line 133
    :cond_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 134
    .line 135
    const-string v3, "Unknown key status"

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfb;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzb()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-ne v6, v2, :cond_5

    .line 152
    .line 153
    move v7, v3

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    const/4 v2, 0x0

    .line 156
    move v7, v2

    .line 157
    :goto_5
    const/4 v8, 0x0

    .line 158
    move-object v3, v10

    .line 159
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgfg;-><init>(Lcom/google/android/gms/internal/ads/zzgez;Lcom/google/android/gms/internal/ads/zzgfb;IZLcom/google/android/gms/internal/ads/zzgfh;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :goto_6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    .line 168
    .line 169
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgmf;->zza()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_6

    .line 174
    .line 175
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 181
    .line 182
    const-string v0, "Parsing of a single key failed (maybe wrong status?) and Tink is configured via validateKeysetsOnParsing to reject such keysets."

    .line 183
    .line 184
    invoke-direct {p0, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzgun;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zza()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 11
    .line 12
    const-string v0, "empty keyset"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgfp;->zza:I

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgus;->zza()Lcom/google/android/gms/internal/ads/zzguo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zza:Lcom/google/android/gms/internal/ads/zzgun;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgun;->zzb()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzguo;->zzb(I)Lcom/google/android/gms/internal/ads/zzguo;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgun;->zzh()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgul;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguq;->zza()Lcom/google/android/gms/internal/ads/zzgup;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgub;->zzg()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgup;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgup;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzk()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgup;->zzd(I)Lcom/google/android/gms/internal/ads/zzgup;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgup;->zzb(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzgup;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgup;->zza(I)Lcom/google/android/gms/internal/ads/zzgup;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/google/android/gms/internal/ads/zzguq;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzguo;->zza(Lcom/google/android/gms/internal/ads/zzguq;)Lcom/google/android/gms/internal/ads/zzguo;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgus;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzb:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzgfg;
    .locals 4

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzb:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfg;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Keyset-Entry at position "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " has wrong status or key parsing failed"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zza()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "Invalid index "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " for keyset of size "

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgfg;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzb:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgfg;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfg;->zzd()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc()Lcom/google/android/gms/internal/ads/zzgfb;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "Keyset has primary which isn\'t enabled"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Keyset has no valid primary"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method final zzf()Lcom/google/android/gms/internal/ads/zzgun;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zza:Lcom/google/android/gms/internal/ads/zzgun;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgex;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgmo;

    .line 3
    .line 4
    if-eqz v1, :cond_d

    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmo;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zza:Lcom/google/android/gms/internal/ads/zzgun;

    .line 9
    .line 10
    sget v2, Lcom/google/android/gms/internal/ads/zzgfp;->zza:I

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgun;->zzb()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgun;->zzh()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    move v7, v0

    .line 26
    move v5, v4

    .line 27
    move v6, v5

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_7

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lcom/google/android/gms/internal/ads/zzgul;

    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zzk()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    const/4 v10, 0x3

    .line 45
    if-ne v9, v10, :cond_0

    .line 46
    .line 47
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zzj()Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_6

    .line 52
    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zzf()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    sget-object v10, Lcom/google/android/gms/internal/ads/zzgvf;->zza:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 58
    .line 59
    if-eq v9, v10, :cond_5

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zzk()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const/4 v10, 0x2

    .line 66
    if-eq v9, v10, :cond_4

    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-ne v9, v2, :cond_2

    .line 73
    .line 74
    if-nez v6, :cond_1

    .line 75
    .line 76
    move v6, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    const-string p2, "keyset contains multiple primary keys"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgub;->zzb()Lcom/google/android/gms/internal/ads/zzgtz;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    sget-object v9, Lcom/google/android/gms/internal/ads/zzgtz;->zzd:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 95
    .line 96
    if-eq v8, v9, :cond_3

    .line 97
    .line 98
    move v8, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v8, v0

    .line 101
    :goto_2
    and-int/2addr v7, v8

    .line 102
    add-int/2addr v5, v0

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string v0, "key %d has unknown status"

    .line 119
    .line 120
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 129
    .line 130
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const-string v0, "key %d has unknown prefix"

    .line 143
    .line 144
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 153
    .line 154
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgul;->zza()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const-string v0, "key %d has no key data"

    .line 167
    .line 168
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_7
    if-eqz v5, :cond_c

    .line 177
    .line 178
    if-nez v6, :cond_9

    .line 179
    .line 180
    if-eqz v7, :cond_8

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 184
    .line 185
    const-string p2, "keyset doesn\'t contain a valid primary key"

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfi;->zza()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-ge v4, v2, :cond_b

    .line 196
    .line 197
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzb:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_a

    .line 204
    .line 205
    add-int/2addr v4, v0

    .line 206
    goto :goto_3

    .line 207
    :cond_a
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzgun;->zzd(I)Lcom/google/android/gms/internal/ads/zzgul;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgul;->zzb()Lcom/google/android/gms/internal/ads/zzgub;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgub;->zzg()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v1, "Key parsing of key with index "

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, " and type_url "

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p1, " failed, unable to get primitive"

    .line 243
    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p2

    .line 255
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfi;->zzc:Lcom/google/android/gms/internal/ads/zzgnh;

    .line 256
    .line 257
    invoke-virtual {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgmo;->zza(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    return-object p1

    .line 262
    :cond_c
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 263
    .line 264
    const-string p2, "keyset must contain at least one ENABLED key"

    .line 265
    .line 266
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 271
    .line 272
    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    .line 273
    .line 274
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1
.end method
