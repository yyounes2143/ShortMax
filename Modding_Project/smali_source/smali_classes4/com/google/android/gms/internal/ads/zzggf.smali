.class public final Lcom/google/android/gms/internal/ads/zzggf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgow;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzggf;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggf;->zza:Lcom/google/android/gms/internal/ads/zzggf;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggb;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggb;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 14
    .line 15
    const-class v2, Lcom/google/android/gms/internal/ads/zzget;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggf;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 22
    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggf;->zza:Lcom/google/android/gms/internal/ads/zzggf;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzd(Lcom/google/android/gms/internal/ads/zzgow;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzggf;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgos;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzggf;->zza:Lcom/google/android/gms/internal/ads/zzggf;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgos;->zzb(Lcom/google/android/gms/internal/ads/zzgow;)Lcom/google/android/gms/internal/ads/zzgos;

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzget;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzget;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Lcom/google/android/gms/internal/ads/zzgor;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoj;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgmy;->zza()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfg;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc()Lcom/google/android/gms/internal/ads/zzgfb;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zzb()Lcom/google/android/gms/internal/ads/zzgez;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzgfz;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgfz;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfz;->zzb()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgnd;->zzc()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzggc;

    .line 58
    .line 59
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzgor;->zza(Lcom/google/android/gms/internal/ads/zzgfg;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/google/android/gms/internal/ads/zzget;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zza()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzggc;-><init>(Lcom/google/android/gms/internal/ads/zzget;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzgoj;->zza(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgoj;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgez;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "Cannot get output prefix for key of class "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " with parameters "

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgnh;->zza()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_4

    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnt;->zzb()Lcom/google/android/gms/internal/ads/zzgnt;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgnt;->zza()Lcom/google/android/gms/internal/ads/zzgnj;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "encrypt"

    .line 141
    .line 142
    const-string v3, "aead"

    .line 143
    .line 144
    invoke-interface {v1, p1, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzgnj;->zza(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgni;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v4, "decrypt"

    .line 149
    .line 150
    invoke-interface {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgnj;->zza(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgni;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    move-object v7, p2

    .line 155
    move-object v6, v2

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgnl;->zza:Lcom/google/android/gms/internal/ads/zzgni;

    .line 158
    .line 159
    move-object v6, v2

    .line 160
    move-object v7, v6

    .line 161
    :goto_3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzggd;

    .line 162
    .line 163
    new-instance v4, Lcom/google/android/gms/internal/ads/zzggc;

    .line 164
    .line 165
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc()Lcom/google/android/gms/internal/ads/zzgfg;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzgor;->zza(Lcom/google/android/gms/internal/ads/zzgfg;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Lcom/google/android/gms/internal/ads/zzget;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc()Lcom/google/android/gms/internal/ads/zzgfg;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfg;->zza()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-direct {v4, p3, p1}, Lcom/google/android/gms/internal/ads/zzggc;-><init>(Lcom/google/android/gms/internal/ads/zzget;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->zzb()Lcom/google/android/gms/internal/ads/zzgom;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    const/4 v8, 0x0

    .line 193
    move-object v3, p2

    .line 194
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzggd;-><init>(Lcom/google/android/gms/internal/ads/zzggc;Lcom/google/android/gms/internal/ads/zzgom;Lcom/google/android/gms/internal/ads/zzgni;Lcom/google/android/gms/internal/ads/zzgni;Lcom/google/android/gms/internal/ads/zzgge;)V

    .line 195
    .line 196
    .line 197
    return-object p2
.end method
