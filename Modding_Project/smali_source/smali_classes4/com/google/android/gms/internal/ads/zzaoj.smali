.class public final Lcom/google/android/gms/internal/ads/zzaoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzd:Landroid/util/SparseIntArray;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaom;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzg:Landroid/util/SparseArray;

.field private final zzh:Landroid/util/SparseBooleanArray;

.field private final zzi:Landroid/util/SparseBooleanArray;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzaog;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaof;

.field private zzl:Lcom/google/android/gms/internal/ads/zzady;

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:I

.field private zzr:I


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzamw;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>(IILcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaom;I)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaom;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaom;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:Lcom/google/android/gms/internal/ads/zzakr;

    .line 3
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Landroid/util/SparseIntArray;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzaog;

    const p6, 0x1b8a0

    .line 9
    invoke-direct {p4, p6}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzaog;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzady;->zza:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:Lcom/google/android/gms/internal/ads/zzady;

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 12
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzaom;->zza()Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaoo;

    invoke-virtual {p5, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaob;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzaoh;

    .line 15
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzaoh;-><init>(Lcom/google/android/gms/internal/ads/zzaoj;)V

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzaob;-><init>(Lcom/google/android/gms/internal/ads/zzaoa;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaoj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzaoj;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzaoj;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzaoj;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzaoj;)Lcom/google/android/gms/internal/ads/zzady;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzaoj;)Lcom/google/android/gms/internal/ads/zzaom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Lcom/google/android/gms/internal/ads/zzaom;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzaoj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzaoj;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzaoj;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzaoj;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    .line 8
    .line 9
    .line 10
    move-result-wide v11

    .line 11
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    .line 12
    .line 13
    const-wide/16 v13, -0x1

    .line 14
    .line 15
    const/4 v15, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-eqz v3, :cond_7

    .line 18
    .line 19
    cmp-long v3, v11, v13

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzaog;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaog;->zzd()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    .line 33
    .line 34
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaog;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    return v1

    .line 39
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    .line 40
    .line 41
    const-wide/16 v7, 0x0

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    iput-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    .line 46
    .line 47
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzaog;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaog;->zzb()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v4, v4, v16

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaof;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaog;->zzc()Lcom/google/android/gms/internal/ads/zzeu;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaog;->zzb()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    .line 73
    .line 74
    const v16, 0x1b8a0

    .line 75
    .line 76
    .line 77
    move/from16 v17, v3

    .line 78
    .line 79
    move-object v3, v9

    .line 80
    move-wide v13, v7

    .line 81
    move-wide v7, v11

    .line 82
    move-object v15, v9

    .line 83
    move/from16 v9, v17

    .line 84
    .line 85
    move/from16 v10, v16

    .line 86
    .line 87
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaof;-><init>(Lcom/google/android/gms/internal/ads/zzeu;JJII)V

    .line 88
    .line 89
    .line 90
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:Lcom/google/android/gms/internal/ads/zzaof;

    .line 91
    .line 92
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:Lcom/google/android/gms/internal/ads/zzady;

    .line 93
    .line 94
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzadg;->zzb()Lcom/google/android/gms/internal/ads/zzaeu;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-wide v13, v7

    .line 103
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:Lcom/google/android/gms/internal/ads/zzady;

    .line 104
    .line 105
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaet;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaog;->zzb()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-direct {v5, v6, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move-wide v13, v7

    .line 119
    :goto_1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:Z

    .line 120
    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    const/4 v3, 0x0

    .line 124
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:Z

    .line 125
    .line 126
    invoke-virtual {v0, v13, v14, v13, v14}, Lcom/google/android/gms/internal/ads/zzaoj;->zzf(JJ)V

    .line 127
    .line 128
    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    cmp-long v4, v4, v13

    .line 134
    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    return v1

    .line 142
    :cond_5
    const/4 v3, 0x0

    .line 143
    :goto_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:Lcom/google/android/gms/internal/ads/zzaof;

    .line 144
    .line 145
    if-eqz v4, :cond_8

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzadg;->zze()Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_6

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    return v1

    .line 159
    :cond_7
    move v3, v10

    .line 160
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    rsub-int v5, v5, 0x24b8

    .line 171
    .line 172
    const/16 v6, 0xbc

    .line 173
    .line 174
    if-lt v5, v6, :cond_9

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-lez v5, :cond_a

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-static {v4, v7, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    const/4 v7, -0x1

    .line 198
    if-ge v5, v6, :cond_e

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    rsub-int v8, v5, 0x24b8

    .line 205
    .line 206
    invoke-interface {v1, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zza([BII)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-ne v8, v7, :cond_d

    .line 211
    .line 212
    move v10, v3

    .line 213
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-ge v10, v2, :cond_c

    .line 220
    .line 221
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaoo;

    .line 226
    .line 227
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzant;

    .line 228
    .line 229
    if-eqz v2, :cond_b

    .line 230
    .line 231
    check-cast v1, Lcom/google/android/gms/internal/ads/zzant;

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzant;->zzd(Z)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 240
    .line 241
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    .line 242
    .line 243
    .line 244
    const/4 v4, 0x1

    .line 245
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzant;->zza(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 246
    .line 247
    .line 248
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_c
    return v7

    .line 252
    :cond_d
    add-int/2addr v5, v8

    .line 253
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzaop;->zza([BII)I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 274
    .line 275
    .line 276
    add-int/lit16 v6, v5, 0xbc

    .line 277
    .line 278
    if-le v6, v4, :cond_f

    .line 279
    .line 280
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 281
    .line 282
    sub-int/2addr v5, v1

    .line 283
    add-int/2addr v4, v5

    .line 284
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_f
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 288
    .line 289
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-le v6, v1, :cond_10

    .line 294
    .line 295
    return v3

    .line 296
    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    const/high16 v5, 0x800000

    .line 301
    .line 302
    and-int/2addr v5, v4

    .line 303
    if-eqz v5, :cond_11

    .line 304
    .line 305
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 306
    .line 307
    .line 308
    return v3

    .line 309
    :cond_11
    const/high16 v5, 0x400000

    .line 310
    .line 311
    and-int/2addr v5, v4

    .line 312
    if-eqz v5, :cond_12

    .line 313
    .line 314
    const/4 v10, 0x1

    .line 315
    goto :goto_7

    .line 316
    :cond_12
    move v10, v3

    .line 317
    :goto_7
    shr-int/lit8 v5, v4, 0x8

    .line 318
    .line 319
    and-int/lit8 v8, v4, 0x20

    .line 320
    .line 321
    and-int/lit8 v9, v4, 0x10

    .line 322
    .line 323
    and-int/lit16 v5, v5, 0x1fff

    .line 324
    .line 325
    if-eqz v9, :cond_13

    .line 326
    .line 327
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    .line 328
    .line 329
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    check-cast v9, Lcom/google/android/gms/internal/ads/zzaoo;

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_13
    const/4 v9, 0x0

    .line 337
    :goto_8
    if-nez v9, :cond_14

    .line 338
    .line 339
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 340
    .line 341
    .line 342
    return v3

    .line 343
    :cond_14
    and-int/lit8 v4, v4, 0xf

    .line 344
    .line 345
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Landroid/util/SparseIntArray;

    .line 346
    .line 347
    add-int/lit8 v14, v4, -0x1

    .line 348
    .line 349
    invoke-virtual {v13, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    invoke-virtual {v13, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    .line 355
    .line 356
    if-ne v14, v4, :cond_15

    .line 357
    .line 358
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 359
    .line 360
    .line 361
    return v3

    .line 362
    :cond_15
    const/4 v13, 0x1

    .line 363
    add-int/2addr v14, v13

    .line 364
    and-int/lit8 v13, v14, 0xf

    .line 365
    .line 366
    if-eq v4, v13, :cond_16

    .line 367
    .line 368
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzaoo;->zzc()V

    .line 369
    .line 370
    .line 371
    :cond_16
    if-eqz v8, :cond_18

    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    and-int/lit8 v8, v8, 0x40

    .line 382
    .line 383
    if-eqz v8, :cond_17

    .line 384
    .line 385
    const/4 v8, 0x2

    .line 386
    goto :goto_9

    .line 387
    :cond_17
    move v8, v3

    .line 388
    :goto_9
    or-int/2addr v10, v8

    .line 389
    add-int/2addr v4, v7

    .line 390
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 391
    .line 392
    .line 393
    :cond_18
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    .line 394
    .line 395
    if-nez v4, :cond_19

    .line 396
    .line 397
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Landroid/util/SparseBooleanArray;

    .line 398
    .line 399
    invoke-virtual {v7, v5, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-nez v5, :cond_1a

    .line 404
    .line 405
    :cond_19
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzaoo;->zza(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 412
    .line 413
    .line 414
    if-nez v4, :cond_1b

    .line 415
    .line 416
    :cond_1a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    .line 417
    .line 418
    if-eqz v1, :cond_1b

    .line 419
    .line 420
    const-wide/16 v4, -0x1

    .line 421
    .line 422
    cmp-long v1, v11, v4

    .line 423
    .line 424
    if-eqz v1, :cond_1b

    .line 425
    .line 426
    const/4 v1, 0x1

    .line 427
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:Z

    .line 428
    .line 429
    :cond_1b
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 430
    .line 431
    .line 432
    return v3
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zza:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:Lcom/google/android/gms/internal/ads/zzakr;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaku;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzakr;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:Lcom/google/android/gms/internal/ads/zzady;

    .line 14
    .line 15
    return-void
.end method

.method public final zzf(JJ)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-ge v1, p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/google/android/gms/internal/ads/zzeu;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzf()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v5, v5, v7

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzd()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    cmp-long v7, v5, v7

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    cmp-long v2, v5, v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    cmp-long v2, v5, p3

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/zzeu;->zzi(J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    cmp-long p1, p3, v2

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:Lcom/google/android/gms/internal/ads/zzaof;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzadg;->zzd(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 73
    .line 74
    .line 75
    move p1, v0

    .line 76
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-ge p1, p3, :cond_4

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaoo;

    .line 89
    .line 90
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaoo;->zzc()V

    .line 91
    .line 92
    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 97
    .line 98
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadl;

    .line 8
    .line 9
    const/16 v1, 0x3ac

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 13
    .line 14
    .line 15
    move v1, v2

    .line 16
    :goto_0
    const/16 v3, 0xbc

    .line 17
    .line 18
    if-ge v1, v3, :cond_2

    .line 19
    .line 20
    move v3, v2

    .line 21
    :goto_1
    const/4 v4, 0x5

    .line 22
    if-ge v3, v4, :cond_1

    .line 23
    .line 24
    mul-int/lit16 v4, v3, 0xbc

    .line 25
    .line 26
    add-int/2addr v4, v1

    .line 27
    aget-byte v4, v0, v4

    .line 28
    .line 29
    const/16 v5, 0x47

    .line 30
    .line 31
    if-eq v4, v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzo(IZ)Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_2
    return v2
.end method
