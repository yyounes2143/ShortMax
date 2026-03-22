.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private zzA:J

.field private zzB:I

.field private zzC:Lcom/google/android/gms/internal/ads/zzahm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zza:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzen;

.field private final zze:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzajn;

.field private final zzi:Ljava/util/List;

.field private zzj:Lcom/google/android/gms/internal/ads/zzfyq;

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzen;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzady;

.field private zzx:[Lcom/google/android/gms/internal/ads/zzaji;

.field private zzy:[[J

.field private zzz:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Lcom/google/android/gms/internal/ads/zzakr;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->zza:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    return-void
.end method

.method private static zzj(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x71742020

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajs;->zza(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    return v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private final zzm()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    .line 5
    .line 6
    return-void
.end method

.method private final zzn(J)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-nez v4, :cond_1c

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfc;

    .line 18
    .line 19
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    .line 20
    .line 21
    cmp-long v4, v6, p1

    .line 22
    .line 23
    if-nez v4, :cond_1c

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    move-object v6, v4

    .line 30
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfc;

    .line 31
    .line 32
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    .line 33
    .line 34
    const v7, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v4, v7, :cond_1b

    .line 38
    .line 39
    const v4, 0x6d657461

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaix;->zzb(Lcom/google/android/gms/internal/ads/zzfc;)Lcom/google/android/gms/internal/ads/zzav;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    .line 65
    .line 66
    if-ne v7, v2, :cond_1

    .line 67
    .line 68
    move v12, v2

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    move v12, v1

    .line 71
    :goto_2
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaej;

    .line 72
    .line 73
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    .line 74
    .line 75
    .line 76
    const v7, 0x75647461

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaix;->zzc(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzav;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Z

    .line 90
    .line 91
    .line 92
    move-object v11, v7

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    const/4 v11, 0x0

    .line 95
    :goto_3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 96
    .line 97
    const v7, 0x6d766864

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 108
    .line 109
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaix;->zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    new-array v8, v2, [Lcom/google/android/gms/internal/ads/zzau;

    .line 114
    .line 115
    aput-object v7, v8, v1

    .line 116
    .line 117
    move-object/from16 v17, v15

    .line 118
    .line 119
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    invoke-direct {v10, v14, v15, v8}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 125
    .line 126
    .line 127
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    .line 128
    .line 129
    and-int/lit8 v7, v8, 0x1

    .line 130
    .line 131
    if-eq v2, v7, :cond_3

    .line 132
    .line 133
    move/from16 v18, v1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_3
    move/from16 v18, v2

    .line 137
    .line 138
    :goto_4
    new-instance v19, Lcom/google/android/gms/internal/ads/zzajh;

    .line 139
    .line 140
    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    .line 141
    .line 142
    .line 143
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    move-object v7, v13

    .line 151
    move/from16 v23, v8

    .line 152
    .line 153
    move-wide/from16 v8, v20

    .line 154
    .line 155
    move-object v1, v10

    .line 156
    move-object/from16 v10, v22

    .line 157
    .line 158
    move-object/from16 v24, v11

    .line 159
    .line 160
    move/from16 v11, v18

    .line 161
    .line 162
    move-object/from16 v18, v13

    .line 163
    .line 164
    move-object/from16 v13, v19

    .line 165
    .line 166
    invoke-static/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzaix;->zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Ljava/util/List;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    move-wide v12, v14

    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x0

    .line 177
    const/4 v11, -0x1

    .line 178
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-ge v9, v8, :cond_14

    .line 183
    .line 184
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Lcom/google/android/gms/internal/ads/zzajs;

    .line 189
    .line 190
    iget v5, v8, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    .line 191
    .line 192
    if-nez v5, :cond_4

    .line 193
    .line 194
    move-object/from16 v27, v6

    .line 195
    .line 196
    move v15, v9

    .line 197
    move-object/from16 v28, v24

    .line 198
    .line 199
    const/4 v8, -0x1

    .line 200
    move-object/from16 v24, v1

    .line 201
    .line 202
    move-object/from16 v1, v17

    .line 203
    .line 204
    goto/16 :goto_10

    .line 205
    .line 206
    :cond_4
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    .line 207
    .line 208
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaji;

    .line 209
    .line 210
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 211
    .line 212
    add-int/lit8 v22, v10, 0x1

    .line 213
    .line 214
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 215
    .line 216
    invoke-interface {v15, v10, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-direct {v14, v5, v8, v10}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzafb;)V

    .line 221
    .line 222
    .line 223
    move v15, v9

    .line 224
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    .line 225
    .line 226
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    cmp-long v27, v9, v25

    .line 232
    .line 233
    if-eqz v27, :cond_5

    .line 234
    .line 235
    :goto_6
    move-object/from16 v27, v6

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_5
    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :goto_7
    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 242
    .line 243
    invoke-interface {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    .line 244
    .line 245
    .line 246
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 247
    .line 248
    .line 249
    move-result-wide v12

    .line 250
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 251
    .line 252
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 253
    .line 254
    const-string v10, "audio/true-hd"

    .line 255
    .line 256
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-eqz v9, :cond_6

    .line 261
    .line 262
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 263
    .line 264
    mul-int/lit8 v8, v8, 0x10

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_6
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    .line 268
    .line 269
    add-int/lit8 v8, v8, 0x1e

    .line 270
    .line 271
    :goto_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 276
    .line 277
    .line 278
    const/4 v8, 0x2

    .line 279
    if-ne v2, v8, :cond_9

    .line 280
    .line 281
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    .line 282
    .line 283
    and-int/lit8 v8, v23, 0x8

    .line 284
    .line 285
    if-eqz v8, :cond_8

    .line 286
    .line 287
    const/4 v8, -0x1

    .line 288
    if-ne v11, v8, :cond_7

    .line 289
    .line 290
    const/4 v8, 0x1

    .line 291
    goto :goto_9

    .line 292
    :cond_7
    const/4 v8, 0x2

    .line 293
    :goto_9
    or-int/2addr v2, v8

    .line 294
    :cond_8
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 295
    .line 296
    .line 297
    const/4 v2, 0x2

    .line 298
    :cond_9
    const/4 v8, 0x1

    .line 299
    if-ne v2, v8, :cond_a

    .line 300
    .line 301
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzaej;->zza()Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_a

    .line 306
    .line 307
    move-object/from16 v8, v18

    .line 308
    .line 309
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzaej;->zza:I

    .line 310
    .line 311
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 312
    .line 313
    .line 314
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzaej;->zzb:I

    .line 315
    .line 316
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 317
    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_a
    move-object/from16 v8, v18

    .line 321
    .line 322
    :goto_a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    .line 323
    .line 324
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    .line 325
    .line 326
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v18

    .line 330
    if-eqz v18, :cond_b

    .line 331
    .line 332
    move-object/from16 v18, v8

    .line 333
    .line 334
    move-object/from16 v10, v24

    .line 335
    .line 336
    const/4 v8, 0x0

    .line 337
    goto :goto_b

    .line 338
    :cond_b
    move-object/from16 v18, v8

    .line 339
    .line 340
    new-instance v8, Lcom/google/android/gms/internal/ads/zzav;

    .line 341
    .line 342
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v10, v24

    .line 346
    .line 347
    :goto_b
    filled-new-array {v8, v10, v1}, [Lcom/google/android/gms/internal/ads/zzav;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    if-eqz v5, :cond_c

    .line 352
    .line 353
    move-object/from16 v24, v1

    .line 354
    .line 355
    move-object/from16 v28, v10

    .line 356
    .line 357
    move-wide/from16 v29, v12

    .line 358
    .line 359
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_c
    new-instance v5, Lcom/google/android/gms/internal/ads/zzav;

    .line 366
    .line 367
    move-object/from16 v24, v1

    .line 368
    .line 369
    move-object/from16 v28, v10

    .line 370
    .line 371
    const/4 v1, 0x0

    .line 372
    new-array v10, v1, [Lcom/google/android/gms/internal/ads/zzau;

    .line 373
    .line 374
    move-wide/from16 v29, v12

    .line 375
    .line 376
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    invoke-direct {v5, v12, v13, v10}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 382
    .line 383
    .line 384
    :goto_c
    if-eqz v4, :cond_10

    .line 385
    .line 386
    const/4 v1, 0x0

    .line 387
    :goto_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    if-ge v1, v10, :cond_10

    .line 392
    .line 393
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    instance-of v12, v10, Lcom/google/android/gms/internal/ads/zzfa;

    .line 398
    .line 399
    if-eqz v12, :cond_f

    .line 400
    .line 401
    check-cast v10, Lcom/google/android/gms/internal/ads/zzfa;

    .line 402
    .line 403
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzfa;->zza:Ljava/lang/String;

    .line 404
    .line 405
    const-string v13, "com.android.capture.fps"

    .line 406
    .line 407
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    if-eqz v12, :cond_e

    .line 412
    .line 413
    const/4 v12, 0x2

    .line 414
    if-ne v2, v12, :cond_d

    .line 415
    .line 416
    const/4 v12, 0x1

    .line 417
    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzau;

    .line 418
    .line 419
    const/16 v20, 0x0

    .line 420
    .line 421
    aput-object v10, v13, v20

    .line 422
    .line 423
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    goto :goto_e

    .line 428
    :cond_d
    const/4 v12, 0x1

    .line 429
    const/16 v20, 0x0

    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_e
    const/4 v12, 0x1

    .line 433
    const/16 v20, 0x0

    .line 434
    .line 435
    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzau;

    .line 436
    .line 437
    aput-object v10, v13, v20

    .line 438
    .line 439
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    goto :goto_e

    .line 444
    :cond_f
    const/4 v12, 0x1

    .line 445
    :goto_e
    add-int/2addr v1, v12

    .line 446
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_10
    const/4 v12, 0x1

    .line 453
    const/4 v1, 0x0

    .line 454
    :goto_f
    const/4 v10, 0x3

    .line 455
    if-ge v1, v10, :cond_11

    .line 456
    .line 457
    aget-object v10, v8, v1

    .line 458
    .line 459
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    add-int/2addr v1, v12

    .line 464
    goto :goto_f

    .line 465
    :cond_11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-lez v1, :cond_12

    .line 470
    .line 471
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 472
    .line 473
    .line 474
    :cond_12
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 482
    .line 483
    .line 484
    const/4 v1, 0x2

    .line 485
    const/4 v8, -0x1

    .line 486
    if-ne v2, v1, :cond_13

    .line 487
    .line 488
    if-ne v11, v8, :cond_13

    .line 489
    .line 490
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    :cond_13
    move-object/from16 v1, v17

    .line 495
    .line 496
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move/from16 v10, v22

    .line 500
    .line 501
    move-wide/from16 v12, v29

    .line 502
    .line 503
    const/4 v2, 0x1

    .line 504
    :goto_10
    add-int/lit8 v9, v15, 0x1

    .line 505
    .line 506
    move-object/from16 v17, v1

    .line 507
    .line 508
    move-object/from16 v1, v24

    .line 509
    .line 510
    move-object/from16 v6, v27

    .line 511
    .line 512
    move-object/from16 v24, v28

    .line 513
    .line 514
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    goto/16 :goto_5

    .line 520
    .line 521
    :cond_14
    move-wide v14, v12

    .line 522
    move-object/from16 v1, v17

    .line 523
    .line 524
    const/4 v8, -0x1

    .line 525
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    .line 526
    .line 527
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzA:J

    .line 528
    .line 529
    const/4 v2, 0x0

    .line 530
    new-array v4, v2, [Lcom/google/android/gms/internal/ads/zzaji;

    .line 531
    .line 532
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaji;

    .line 537
    .line 538
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 539
    .line 540
    array-length v2, v1

    .line 541
    new-array v4, v2, [[J

    .line 542
    .line 543
    new-array v5, v2, [I

    .line 544
    .line 545
    new-array v6, v2, [J

    .line 546
    .line 547
    new-array v2, v2, [Z

    .line 548
    .line 549
    const/4 v7, 0x0

    .line 550
    :goto_11
    array-length v9, v1

    .line 551
    if-ge v7, v9, :cond_15

    .line 552
    .line 553
    aget-object v9, v1, v7

    .line 554
    .line 555
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 556
    .line 557
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    .line 558
    .line 559
    new-array v9, v9, [J

    .line 560
    .line 561
    aput-object v9, v4, v7

    .line 562
    .line 563
    aget-object v9, v1, v7

    .line 564
    .line 565
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 566
    .line 567
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    .line 568
    .line 569
    const/4 v10, 0x0

    .line 570
    aget-wide v11, v9, v10

    .line 571
    .line 572
    aput-wide v11, v6, v7

    .line 573
    .line 574
    const/4 v9, 0x1

    .line 575
    add-int/2addr v7, v9

    .line 576
    goto :goto_11

    .line 577
    :cond_15
    const/4 v10, 0x0

    .line 578
    const-wide/16 v11, 0x0

    .line 579
    .line 580
    move v7, v10

    .line 581
    :goto_12
    array-length v9, v1

    .line 582
    if-ge v7, v9, :cond_19

    .line 583
    .line 584
    const-wide v13, 0x7fffffffffffffffL

    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    move v9, v10

    .line 590
    move-wide v14, v13

    .line 591
    move v13, v8

    .line 592
    :goto_13
    array-length v8, v1

    .line 593
    if-ge v9, v8, :cond_17

    .line 594
    .line 595
    aget-boolean v8, v2, v9

    .line 596
    .line 597
    if-nez v8, :cond_16

    .line 598
    .line 599
    aget-wide v16, v6, v9

    .line 600
    .line 601
    cmp-long v8, v16, v14

    .line 602
    .line 603
    if-gtz v8, :cond_16

    .line 604
    .line 605
    move v13, v9

    .line 606
    move-wide/from16 v14, v16

    .line 607
    .line 608
    :cond_16
    const/4 v8, 0x1

    .line 609
    add-int/2addr v9, v8

    .line 610
    goto :goto_13

    .line 611
    :cond_17
    const/4 v8, 0x1

    .line 612
    aget v9, v5, v13

    .line 613
    .line 614
    aget-object v14, v4, v13

    .line 615
    .line 616
    aput-wide v11, v14, v9

    .line 617
    .line 618
    aget-object v15, v1, v13

    .line 619
    .line 620
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 621
    .line 622
    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[I

    .line 623
    .line 624
    aget v10, v10, v9

    .line 625
    .line 626
    move-object/from16 v16, v1

    .line 627
    .line 628
    int-to-long v0, v10

    .line 629
    add-long/2addr v11, v0

    .line 630
    add-int/2addr v9, v8

    .line 631
    aput v9, v5, v13

    .line 632
    .line 633
    array-length v0, v14

    .line 634
    if-ge v9, v0, :cond_18

    .line 635
    .line 636
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    .line 637
    .line 638
    aget-wide v9, v0, v9

    .line 639
    .line 640
    aput-wide v9, v6, v13

    .line 641
    .line 642
    :goto_14
    const/4 v8, -0x1

    .line 643
    const/4 v10, 0x0

    .line 644
    move-object/from16 v0, p0

    .line 645
    .line 646
    move-object/from16 v1, v16

    .line 647
    .line 648
    goto :goto_12

    .line 649
    :cond_18
    aput-boolean v8, v2, v13

    .line 650
    .line 651
    add-int/2addr v7, v8

    .line 652
    goto :goto_14

    .line 653
    :cond_19
    const/4 v8, 0x1

    .line 654
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzy:[[J

    .line 655
    .line 656
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 657
    .line 658
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    .line 659
    .line 660
    .line 661
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 662
    .line 663
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 667
    .line 668
    .line 669
    const/4 v1, 0x2

    .line 670
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 671
    .line 672
    :cond_1a
    :goto_15
    move v2, v8

    .line 673
    const/4 v1, 0x0

    .line 674
    goto/16 :goto_0

    .line 675
    .line 676
    :cond_1b
    move v8, v2

    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-nez v1, :cond_1a

    .line 682
    .line 683
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfc;

    .line 688
    .line 689
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(Lcom/google/android/gms/internal/ads/zzfc;)V

    .line 690
    .line 691
    .line 692
    goto :goto_15

    .line 693
    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 694
    .line 695
    const/4 v2, 0x2

    .line 696
    if-eq v1, v2, :cond_1d

    .line 697
    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    .line 699
    .line 700
    .line 701
    :cond_1d
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    const/4 v6, 0x1

    .line 1
    :goto_0
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const v8, 0x66747970

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    const/16 v14, 0x8

    if-eqz v7, :cond_27

    const-wide/32 v15, 0x40000

    if-eq v7, v6, :cond_1e

    if-eq v7, v12, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzajn;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;Ljava/util/List;)I

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_1

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    :cond_1
    return v6

    .line 3
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v7

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    if-ne v14, v13, :cond_c

    const-wide v17, 0x7fffffffffffffffL

    move/from16 v21, v6

    move/from16 v28, v21

    move/from16 v26, v13

    move/from16 v27, v26

    move-wide/from16 v19, v17

    move-wide/from16 v22, v19

    move-wide/from16 v24, v22

    const/4 v14, 0x0

    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 4
    array-length v9, v3

    if-ge v14, v9, :cond_a

    .line 5
    aget-object v3, v3, v14

    .line 6
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-ne v9, v5, :cond_3

    goto :goto_5

    .line 8
    :cond_3
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide v29, v3, v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzy:[[J

    .line 9
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    aget-object v3, v3, v14

    aget-wide v31, v3, v9

    sub-long v29, v29, v7

    cmp-long v3, v29, v10

    if-ltz v3, :cond_4

    cmp-long v3, v29, v15

    if-ltz v3, :cond_5

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-nez v28, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    move/from16 v5, v28

    :goto_3
    if-ne v3, v5, :cond_8

    cmp-long v9, v29, v24

    if-gez v9, :cond_8

    :cond_7
    move/from16 v28, v3

    move/from16 v27, v14

    move-wide/from16 v24, v29

    move-wide/from16 v22, v31

    goto :goto_4

    :cond_8
    move/from16 v28, v5

    :goto_4
    cmp-long v5, v31, v19

    if-gez v5, :cond_9

    move/from16 v21, v3

    move/from16 v26, v14

    move-wide/from16 v19, v31

    :cond_9
    :goto_5
    add-int/2addr v14, v6

    goto :goto_1

    :cond_a
    cmp-long v3, v19, v17

    if-eqz v3, :cond_b

    if-eqz v21, :cond_b

    const-wide/32 v17, 0xa00000

    add-long v19, v19, v17

    cmp-long v3, v22, v19

    if-ltz v3, :cond_b

    move/from16 v14, v26

    goto :goto_6

    :cond_b
    move/from16 v14, v27

    :goto_6
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    if-ne v14, v13, :cond_c

    move v4, v13

    goto/16 :goto_f

    :cond_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 10
    aget-object v3, v3, v14

    .line 11
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 12
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 13
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide v17, v13, v9

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzv:J

    add-long v12, v17, v12

    .line 14
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[I

    aget v17, v4, v9

    .line 15
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzafc;

    sub-long v7, v12, v7

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    move-wide/from16 v22, v12

    int-to-long v12, v15

    add-long/2addr v7, v12

    cmp-long v10, v7, v10

    if-ltz v10, :cond_d

    const-wide/32 v10, 0x40000

    cmp-long v10, v7, v10

    if-ltz v10, :cond_e

    :cond_d
    move-wide/from16 v3, v22

    goto/16 :goto_e

    .line 16
    :cond_e
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const-wide/16 v10, 0x8

    add-long/2addr v7, v10

    add-int/lit8 v17, v17, -0x8

    :cond_f
    move/from16 v10, v17

    long-to-int v7, v7

    .line 17
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v11, "video/avc"

    .line 18
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "video/hevc"

    .line 19
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_10
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    if-eqz v2, :cond_16

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v12

    const/4 v13, 0x0

    .line 20
    aput-byte v13, v12, v13

    .line 21
    aput-byte v13, v12, v11

    const/4 v11, 0x2

    .line 22
    aput-byte v13, v12, v11

    const/4 v11, 0x4

    rsub-int/lit8 v13, v2, 0x4

    add-int/2addr v10, v13

    :goto_7
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-ge v11, v10, :cond_1a

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    if-nez v11, :cond_15

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    if-nez v11, :cond_12

    .line 23
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v11

    add-int/2addr v11, v2

    aget v15, v4, v9

    move-object/from16 v16, v4

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    sub-int/2addr v15, v4

    if-gt v11, v15, :cond_11

    .line 24
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v4

    add-int v11, v2, v4

    goto :goto_9

    :cond_11
    :goto_8
    move v11, v2

    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    move-object/from16 v16, v4

    goto :goto_8

    .line 25
    :goto_9
    invoke-interface {v1, v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v15, v11

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    const/4 v11, 0x0

    .line 26
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    if-ltz v15, :cond_14

    sub-int/2addr v15, v4

    .line 28
    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 29
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v11, 0x4

    .line 30
    invoke-interface {v5, v15, v11}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v15, v11

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-lez v4, :cond_13

    .line 31
    invoke-interface {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v15, v4

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    .line 32
    invoke-static {v12, v11, v4, v7}, Lcom/google/android/gms/internal/ads/zzfv;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    :cond_13
    :goto_a
    move-object/from16 v4, v16

    goto :goto_7

    .line 33
    :cond_14
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_15
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 35
    invoke-interface {v5, v1, v11, v4}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v11

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    sub-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    goto :goto_a

    .line 36
    :cond_16
    const-string v2, "audio/ac4"

    .line 37
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    .line 38
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(ILcom/google/android/gms/internal/ads/zzen;)V

    const/4 v4, 0x7

    .line 39
    invoke-interface {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    goto :goto_b

    :cond_17
    const/4 v4, 0x7

    :goto_b
    add-int/2addr v10, v4

    goto :goto_c

    :cond_18
    if-eqz v6, :cond_19

    .line 40
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzafc;->zzd(Lcom/google/android/gms/internal/ads/zzadw;)V

    .line 41
    :cond_19
    :goto_c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-ge v2, v10, :cond_1a

    sub-int v2, v10, v2

    const/4 v4, 0x0

    .line 42
    invoke-interface {v5, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    goto :goto_c

    .line 43
    :cond_1a
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    aget-wide v7, v1, v9

    .line 44
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzg:[I

    aget v1, v1, v9

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    if-nez v2, :cond_1b

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_1b
    if-eqz v6, :cond_1c

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move-wide/from16 v19, v7

    move/from16 v21, v1

    move/from16 v22, v10

    .line 45
    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/internal/ads/zzafc;->zzc(Lcom/google/android/gms/internal/ads/zzafb;JIIILcom/google/android/gms/internal/ads/zzafa;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    .line 46
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-ne v9, v1, :cond_1d

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v6, v5, v1}, Lcom/google/android/gms/internal/ads/zzafc;->zza(Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzafa;)V

    goto :goto_d

    :cond_1c
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v7

    move/from16 v20, v1

    move/from16 v21, v10

    .line 48
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 49
    :cond_1d
    :goto_d
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    const/4 v4, 0x0

    goto :goto_f

    .line 50
    :goto_e
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    const/4 v4, 0x1

    :goto_f
    return v4

    :cond_1e
    const/4 v4, 0x7

    .line 51
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v9, v3

    sub-long/2addr v5, v9

    .line 52
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v9

    add-long/2addr v9, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    long-to-int v5, v5

    .line 53
    invoke-interface {v1, v7, v11, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    if-ne v5, v8, :cond_23

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzu:Z

    .line 54
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzajj;->zzj(I)I

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v5, 0x4

    .line 56
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 57
    :cond_20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v5

    if-lez v5, :cond_21

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzajj;->zzj(I)I

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_10

    :cond_21
    const/4 v5, 0x0

    .line 59
    :goto_10
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    :cond_22
    :goto_11
    const/4 v3, 0x0

    goto :goto_12

    .line 60
    :cond_23
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 61
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22

    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfc;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfd;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    invoke-direct {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzd(Lcom/google/android/gms/internal/ads/zzfd;)V

    goto :goto_11

    :cond_24
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzu:Z

    if-nez v3, :cond_25

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v7, 0x6d646174

    if-ne v3, v7, :cond_25

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    :cond_25
    const-wide/32 v7, 0x40000

    cmp-long v3, v5, v7

    if-gez v3, :cond_26

    long-to-int v3, v5

    .line 63
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    goto :goto_11

    .line 64
    :cond_26
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    const/4 v3, 0x1

    .line 65
    :goto_12
    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzajj;->zzn(J)V

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_27
    move v3, v6

    move v5, v12

    const/4 v4, 0x7

    .line 66
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    if-nez v6, :cond_2b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    const/4 v9, 0x0

    .line 67
    invoke-interface {v1, v7, v9, v14, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzn([BIIZ)Z

    move-result v7

    if-nez v7, :cond_2a

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    if-ne v1, v5, :cond_29

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v3, 0x4

    .line 68
    invoke-interface {v1, v9, v3}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzC:Lcom/google/android/gms/internal/ads/zzahm;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_28

    const/4 v9, 0x0

    goto :goto_13

    .line 69
    :cond_28
    new-instance v5, Lcom/google/android/gms/internal/ads/zzav;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v2, v6, v9

    .line 70
    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    move-object v9, v5

    .line 71
    :goto_13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 72
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaet;

    .line 74
    invoke-direct {v2, v3, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 75
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    :cond_29
    const/4 v1, -0x1

    return v1

    :cond_2a
    const/4 v3, 0x4

    .line 76
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    .line 79
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    goto :goto_14

    :cond_2b
    const/4 v3, 0x4

    :goto_14
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    const-wide/16 v12, 0x1

    cmp-long v7, v5, v12

    if-nez v7, :cond_2c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    .line 80
    invoke-interface {v1, v6, v14, v14}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    .line 81
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    goto :goto_16

    :cond_2c
    cmp-long v5, v5, v10

    if-nez v5, :cond_2f

    .line 82
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-nez v7, :cond_2e

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfc;

    if-eqz v5, :cond_2d

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    goto :goto_15

    :cond_2d
    move-wide v5, v9

    :cond_2e
    :goto_15
    cmp-long v7, v5, v9

    if-eqz v7, :cond_2f

    .line 84
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v9

    sub-long/2addr v5, v9

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v9, v7

    add-long/2addr v5, v9

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    .line 85
    :cond_2f
    :goto_16
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v9, v7

    cmp-long v5, v5, v9

    if-ltz v5, :cond_39

    .line 86
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v6, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v5, v6, :cond_30

    const v6, 0x7472616b

    if-eq v5, v6, :cond_30

    const v6, 0x6d646961

    if-eq v5, v6, :cond_30

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_30

    const v6, 0x7374626c

    if-eq v5, v6, :cond_30

    const v6, 0x65647473

    if-eq v5, v6, :cond_30

    if-eq v5, v9, :cond_30

    const v6, 0x61787465

    if-ne v5, v6, :cond_31

    :cond_30
    const/4 v5, 0x1

    goto/16 :goto_1b

    :cond_31
    const v6, 0x6d646864

    if-eq v5, v6, :cond_34

    const v6, 0x6d766864

    if-eq v5, v6, :cond_34

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_34

    const v6, 0x73747364

    if-eq v5, v6, :cond_34

    const v6, 0x73747473

    if-eq v5, v6, :cond_34

    const v6, 0x73747373

    if-eq v5, v6, :cond_34

    const v6, 0x63747473

    if-eq v5, v6, :cond_34

    const v6, 0x656c7374

    if-eq v5, v6, :cond_34

    const v6, 0x73747363

    if-eq v5, v6, :cond_34

    const v6, 0x7374737a

    if-eq v5, v6, :cond_34

    const v6, 0x73747a32

    if-eq v5, v6, :cond_34

    const v6, 0x7374636f

    if-eq v5, v6, :cond_34

    const v6, 0x636f3634

    if-eq v5, v6, :cond_34

    const v6, 0x746b6864

    if-eq v5, v6, :cond_34

    if-eq v5, v8, :cond_34

    const v6, 0x75647461

    if-eq v5, v6, :cond_34

    const v6, 0x6b657973

    if-eq v5, v6, :cond_34

    const v6, 0x696c7374

    if-ne v5, v6, :cond_32

    goto :goto_18

    .line 87
    :cond_32
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v5

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v7, v7

    sub-long v12, v5, v7

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v6, 0x6d707664

    if-ne v5, v6, :cond_33

    add-long v16, v12, v7

    new-instance v5, Lcom/google/android/gms/internal/ads/zzahm;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    sub-long v18, v9, v7

    const-wide/16 v10, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object v9, v5

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/zzahm;-><init>(JJJJJ)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzC:Lcom/google/android/gms/internal/ads/zzahm;

    :cond_33
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v5, 0x1

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    :goto_17
    move v6, v5

    goto/16 :goto_0

    :cond_34
    :goto_18
    if-ne v7, v14, :cond_35

    const/4 v5, 0x1

    goto :goto_19

    :cond_35
    const/4 v5, 0x0

    .line 88
    :goto_19
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gtz v5, :cond_36

    const/4 v5, 0x1

    goto :goto_1a

    :cond_36
    const/4 v5, 0x0

    .line 89
    :goto_1a
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 90
    new-instance v5, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    long-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 91
    invoke-static {v6, v8, v7, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v5, 0x1

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    goto :goto_17

    .line 92
    :goto_1b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    add-long/2addr v6, v10

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-eqz v8, :cond_37

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    if-ne v8, v9, :cond_37

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    .line 93
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v9

    const/4 v10, 0x0

    .line 94
    invoke-interface {v1, v9, v10, v14}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 95
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaix;->zzg(Lcom/google/android/gms/internal/ads/zzen;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v8

    .line 96
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    goto :goto_1c

    :cond_37
    const/4 v10, 0x0

    :goto_1c
    sub-long/2addr v6, v12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfc;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    .line 98
    invoke-direct {v9, v11, v6, v7}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v11, v11

    cmp-long v8, v8, v11

    if-nez v8, :cond_38

    .line 99
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzajj;->zzn(J)V

    goto :goto_17

    .line 100
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    goto/16 :goto_17

    .line 101
    :cond_39
    const-string v1, "Atom size less than header length (unsupported)."

    .line 102
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaku;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzakr;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 16
    .line 17
    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long p1, p1, v2

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajn;->zzb()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 47
    .line 48
    array-length p2, p1

    .line 49
    :goto_0
    if-ge v0, p2, :cond_4

    .line 50
    .line 51
    aget-object v2, p1, v0

    .line 52
    .line 53
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 54
    .line 55
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajs;->zza(J)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ne v4, v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 66
    .line 67
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzafc;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafc;->zzb()V

    .line 72
    .line 73
    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaes;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaev;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    .line 13
    .line 14
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-eq v4, v5, :cond_3

    .line 28
    .line 29
    aget-object v3, v3, v4

    .line 30
    .line 31
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 32
    .line 33
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajj;->zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v4, v5, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    .line 40
    .line 41
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaev;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    .line 42
    .line 43
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    .line 49
    .line 50
    aget-wide v11, v10, v4

    .line 51
    .line 52
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    .line 53
    .line 54
    aget-wide v14, v13, v4

    .line 55
    .line 56
    cmp-long v16, v11, v1

    .line 57
    .line 58
    if-gez v16, :cond_2

    .line 59
    .line 60
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    .line 61
    .line 62
    add-int/2addr v6, v5

    .line 63
    if-ge v4, v6, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eq v1, v5, :cond_2

    .line 70
    .line 71
    if-eq v1, v4, :cond_2

    .line 72
    .line 73
    aget-wide v2, v10, v1

    .line 74
    .line 75
    aget-wide v6, v13, v1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move-wide v2, v8

    .line 79
    const-wide/16 v6, -0x1

    .line 80
    .line 81
    :goto_0
    move-wide v3, v2

    .line 82
    move-wide v1, v11

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    move-wide v3, v8

    .line 90
    const-wide/16 v6, -0x1

    .line 91
    .line 92
    :goto_1
    const/4 v5, 0x0

    .line 93
    :goto_2
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 94
    .line 95
    array-length v11, v10

    .line 96
    if-ge v5, v11, :cond_6

    .line 97
    .line 98
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    .line 99
    .line 100
    if-eq v5, v11, :cond_5

    .line 101
    .line 102
    aget-object v10, v10, v5

    .line 103
    .line 104
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 105
    .line 106
    invoke-static {v10, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzajj;->zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v11

    .line 110
    cmp-long v13, v3, v8

    .line 111
    .line 112
    if-eqz v13, :cond_4

    .line 113
    .line 114
    invoke-static {v10, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzajj;->zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    :cond_4
    move-wide v14, v11

    .line 119
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaev;

    .line 123
    .line 124
    invoke-direct {v5, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    .line 125
    .line 126
    .line 127
    cmp-long v1, v3, v8

    .line 128
    .line 129
    if-nez v1, :cond_7

    .line 130
    .line 131
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    .line 132
    .line 133
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaev;

    .line 138
    .line 139
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaes;

    .line 143
    .line 144
    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 145
    .line 146
    .line 147
    move-object v1, v2

    .line 148
    :goto_3
    return-object v1
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzaey;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    return v1
.end method
