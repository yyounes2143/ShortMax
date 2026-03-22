.class public final Lcom/google/android/gms/internal/ads/zzajd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# static fields
.field private static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzz;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Lcom/google/android/gms/internal/ads/zzajc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzD:I

.field private zzE:I

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Lcom/google/android/gms/internal/ads/zzady;

.field private zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

.field private zzK:[Lcom/google/android/gms/internal/ads/zzafb;

.field private zzL:Z

.field private zzM:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/util/SparseArray;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzj:[B

.field private final zzk:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzn:Ljava/util/ArrayDeque;

.field private final zzo:Ljava/util/ArrayDeque;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzfz;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzadj;

.field private zzr:Lcom/google/android/gms/internal/ads/zzfyq;

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:I

.field private zzw:Lcom/google/android/gms/internal/ads/zzen;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzx:J

.field private zzy:I

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzajd;->zza:[B

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzajd;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Lcom/google/android/gms/internal/ads/zzakr;ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzajp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafb;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzajp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafb;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzeu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzajp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzafb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzc:Lcom/google/android/gms/internal/ads/zzakr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zze:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzags;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzl:Lcom/google/android/gms/internal/ads/zzags;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzg:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 p3, 0x6

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzi:Lcom/google/android/gms/internal/ads/zzen;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->zza:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaja;

    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzajd;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Lcom/google/android/gms/internal/ads/zzfy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzajd;JLcom/google/android/gms/internal/ads/zzen;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzadh;->zza(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzafb;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static zzg(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Unexpected negative value: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 21
    .line 22
    .line 23
    move-result-wide v10

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, p1, v5

    .line 35
    .line 36
    move-wide v12, v3

    .line 37
    move-wide v14, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    const-wide/32 v5, 0xf4240

    .line 49
    .line 50
    .line 51
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 52
    .line 53
    move-wide v3, v12

    .line 54
    move-wide v7, v10

    .line 55
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v16

    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    new-array v9, v1, [I

    .line 68
    .line 69
    new-array v7, v1, [J

    .line 70
    .line 71
    new-array v8, v1, [J

    .line 72
    .line 73
    new-array v5, v1, [J

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    move-wide/from16 v18, v16

    .line 77
    .line 78
    move-wide/from16 v24, v12

    .line 79
    .line 80
    move v12, v3

    .line 81
    move-wide/from16 v3, v24

    .line 82
    .line 83
    :goto_2
    if-ge v12, v1, :cond_2

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/high16 v13, -0x80000000

    .line 90
    .line 91
    and-int/2addr v13, v6

    .line 92
    if-nez v13, :cond_1

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 95
    .line 96
    .line 97
    move-result-wide v20

    .line 98
    const v13, 0x7fffffff

    .line 99
    .line 100
    .line 101
    and-int/2addr v6, v13

    .line 102
    aput v6, v9, v12

    .line 103
    .line 104
    aput-wide v14, v7, v12

    .line 105
    .line 106
    aput-wide v18, v5, v12

    .line 107
    .line 108
    add-long v18, v3, v20

    .line 109
    .line 110
    const-wide/32 v20, 0xf4240

    .line 111
    .line 112
    .line 113
    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 114
    .line 115
    move-wide/from16 v3, v18

    .line 116
    .line 117
    move-object v2, v5

    .line 118
    move-wide/from16 v5, v20

    .line 119
    .line 120
    move-object/from16 v22, v7

    .line 121
    .line 122
    move-object/from16 v23, v8

    .line 123
    .line 124
    move-wide v7, v10

    .line 125
    move/from16 p1, v1

    .line 126
    .line 127
    move-object v1, v9

    .line 128
    move-object v9, v13

    .line 129
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    aget-wide v5, v2, v12

    .line 134
    .line 135
    sub-long v5, v3, v5

    .line 136
    .line 137
    move-object/from16 v7, v23

    .line 138
    .line 139
    aput-wide v5, v7, v12

    .line 140
    .line 141
    const/4 v5, 0x4

    .line 142
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 143
    .line 144
    .line 145
    aget v6, v1, v12

    .line 146
    .line 147
    int-to-long v8, v6

    .line 148
    add-long/2addr v14, v8

    .line 149
    add-int/lit8 v12, v12, 0x1

    .line 150
    .line 151
    move-object v9, v1

    .line 152
    move-object v8, v7

    .line 153
    move-object/from16 v7, v22

    .line 154
    .line 155
    move/from16 v1, p1

    .line 156
    .line 157
    move/from16 v24, v5

    .line 158
    .line 159
    move-object v5, v2

    .line 160
    move/from16 v2, v24

    .line 161
    .line 162
    move-wide/from16 v25, v3

    .line 163
    .line 164
    move-wide/from16 v3, v18

    .line 165
    .line 166
    move-wide/from16 v18, v25

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    throw v0

    .line 177
    :cond_2
    move-object v2, v5

    .line 178
    move-object/from16 v22, v7

    .line 179
    .line 180
    move-object v7, v8

    .line 181
    move-object v1, v9

    .line 182
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v3, Lcom/google/android/gms/internal/ads/zzadi;

    .line 187
    .line 188
    move-object/from16 v4, v22

    .line 189
    .line 190
    invoke-direct {v3, v1, v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzadi;-><init>([I[J[J[J)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0
.end method

.method private static zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v1

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_b

    .line 9
    .line 10
    move-object/from16 v5, p0

    .line 11
    .line 12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfd;

    .line 17
    .line 18
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    .line 19
    .line 20
    const v8, 0x70737368    # 3.013775E29f

    .line 21
    .line 22
    .line 23
    if-ne v7, v8, :cond_a

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v7, Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    .line 40
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/16 v10, 0x20

    .line 48
    .line 49
    if-ge v9, v10, :cond_1

    .line 50
    .line 51
    :goto_1
    move/from16 v16, v3

    .line 52
    .line 53
    move-object/from16 v17, v4

    .line 54
    .line 55
    :goto_2
    const/4 v2, 0x0

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "PsshAtomUtil"

    .line 70
    .line 71
    if-eq v10, v9, :cond_2

    .line 72
    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v8, "Advertised atom size ("

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v8, ") does not match buffer size: "

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eq v9, v8, :cond_3

    .line 107
    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v8, "Atom type is not pssh: "

    .line 114
    .line 115
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    const/4 v9, 0x1

    .line 138
    if-le v8, v9, :cond_4

    .line 139
    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v9, "Unsupported pssh version: "

    .line 146
    .line 147
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 168
    .line 169
    .line 170
    move-result-wide v14

    .line 171
    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 172
    .line 173
    .line 174
    if-ne v8, v9, :cond_6

    .line 175
    .line 176
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    new-array v12, v9, [Ljava/util/UUID;

    .line 181
    .line 182
    move v13, v1

    .line 183
    :goto_3
    if-ge v13, v9, :cond_5

    .line 184
    .line 185
    new-instance v14, Ljava/util/UUID;

    .line 186
    .line 187
    move/from16 v16, v3

    .line 188
    .line 189
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    move-object/from16 v17, v4

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 196
    .line 197
    .line 198
    move-result-wide v4

    .line 199
    invoke-direct {v14, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 200
    .line 201
    .line 202
    aput-object v14, v12, v13

    .line 203
    .line 204
    add-int/lit8 v13, v13, 0x1

    .line 205
    .line 206
    move-object/from16 v5, p0

    .line 207
    .line 208
    move/from16 v3, v16

    .line 209
    .line 210
    move-object/from16 v4, v17

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    move/from16 v16, v3

    .line 214
    .line 215
    move-object/from16 v17, v4

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_6
    move/from16 v16, v3

    .line 219
    .line 220
    move-object/from16 v17, v4

    .line 221
    .line 222
    const/4 v12, 0x0

    .line 223
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eq v2, v3, :cond_7

    .line 232
    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v5, "Atom data size ("

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v2, ") does not match the bytes left: "

    .line 247
    .line 248
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_7
    new-array v3, v2, [B

    .line 264
    .line 265
    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajl;

    .line 269
    .line 270
    invoke-direct {v2, v10, v8, v3, v12}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    .line 271
    .line 272
    .line 273
    :goto_5
    if-nez v2, :cond_8

    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    goto :goto_6

    .line 277
    :cond_8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajl;->zza:Ljava/util/UUID;

    .line 278
    .line 279
    :goto_6
    if-nez v2, :cond_9

    .line 280
    .line 281
    const-string v2, "FragmentedMp4Extractor"

    .line 282
    .line 283
    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 284
    .line 285
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    move-object/from16 v4, v17

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    .line 292
    .line 293
    const-string v4, "video/mp4"

    .line 294
    .line 295
    const/4 v5, 0x0

    .line 296
    invoke-direct {v3, v2, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v4, v17

    .line 300
    .line 301
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_a
    move/from16 v16, v3

    .line 306
    .line 307
    :goto_7
    const/4 v5, 0x0

    .line 308
    :goto_8
    add-int/lit8 v3, v16, 0x1

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_b
    const/4 v5, 0x0

    .line 313
    if-nez v4, :cond_c

    .line 314
    .line 315
    return-object v5

    .line 316
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    .line 317
    .line 318
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/util/List;)V

    .line 319
    .line 320
    .line 321
    return-object v0
.end method

.method private final zzk()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    .line 5
    .line 6
    return-void
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/zzaix;->zza:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    and-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    .line 31
    .line 32
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    .line 33
    .line 34
    invoke-static {p0, v1, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    .line 39
    .line 40
    if-ne p1, v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    .line 43
    .line 44
    invoke-static {v2, v1, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzajr;->zza(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 68
    .line 69
    .line 70
    iput-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string p2, "Senc sample count "

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " is different from fragment sample count"

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    throw p0

    .line 104
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 105
    .line 106
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0
.end method

.method private final zzm(J)V
    .locals 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0x8

    .line 1
    :cond_0
    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfc;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_51

    .line 2
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfc;

    .line 3
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v9, 0x6d6f6f76

    const/16 v12, 0xc

    if-ne v7, v9, :cond_9

    .line 4
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzajd;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    const v7, 0x6d766578

    .line 5
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v14, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    .line 9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_4

    .line 10
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/google/android/gms/internal/ads/zzfd;

    .line 11
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v4, 0x74726578

    if-ne v1, v4, :cond_1

    .line 12
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v12

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {v5, v15, v12, v3, v1}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(IIII)V

    .line 20
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 21
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {v14, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const v3, 0x6d656864

    if-ne v1, v3, :cond_3

    .line 22
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v3

    :goto_2
    move-wide v10, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v3

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v1, 0x1

    add-int/2addr v13, v1

    const/16 v12, 0xc

    goto :goto_1

    :cond_4
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(Lcom/google/android/gms/internal/ads/zzajd;)V

    const/4 v1, 0x0

    move-object v12, v6

    move-object v3, v14

    move v14, v1

    const/4 v1, 0x0

    .line 27
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzaix;->zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;

    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move v15, v1

    :goto_5
    if-ge v15, v5, :cond_6

    .line 31
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajs;

    .line 32
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    iget v10, v8, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 33
    invoke-interface {v9, v15, v10}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v9

    iget-wide v10, v8, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    .line 34
    invoke-interface {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    new-instance v12, Lcom/google/android/gms/internal/ads/zzajc;

    .line 35
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzajd;->zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v13

    invoke-direct {v12, v9, v1, v13, v7}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzaiy;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    .line 37
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 38
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    goto/16 :goto_0

    .line 39
    :cond_7
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v5, :cond_8

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    move v15, v1

    :goto_6
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    move v15, v1

    :goto_7
    if-ge v15, v5, :cond_0

    .line 40
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajs;

    .line 41
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    .line 42
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzajc;

    .line 43
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzajd;->zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzajc;->zzh(Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzaiy;)V

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    const v3, 0x6d6f6f66

    if-ne v7, v3, :cond_50

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[B

    .line 44
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzfc;->zzc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v15, v1

    :goto_8
    if-ge v15, v7, :cond_4a

    .line 45
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzfc;

    .line 46
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v13, 0x74726166

    if-ne v12, v13, :cond_49

    const v12, 0x74666864

    .line 47
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v12

    .line 48
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 50
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 51
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    .line 52
    sget v14, Lcom/google/android/gms/internal/ads/zzaix;->zza:I

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    .line 54
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajc;

    if-nez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_e

    :cond_a
    const/4 v11, 0x1

    and-int/lit8 v17, v13, 0x1

    if-eqz v17, :cond_b

    .line 55
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v10

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    :cond_b
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajc;->zze:Lcom/google/android/gms/internal/ads/zzaiy;

    const/4 v10, 0x2

    and-int/lit8 v11, v13, 0x2

    if-eqz v11, :cond_c

    .line 56
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 57
    :cond_c
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaiy;->zza:I

    :goto_9
    and-int/lit8 v11, v13, 0x8

    if-eqz v11, :cond_d

    .line 58
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v11

    :goto_a
    const/16 v19, 0x10

    goto :goto_b

    .line 59
    :cond_d
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:I

    goto :goto_a

    :goto_b
    and-int/lit8 v22, v13, 0x10

    if-eqz v22, :cond_e

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v22

    move/from16 v2, v22

    goto :goto_c

    .line 61
    :cond_e
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:I

    :goto_c
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_f

    .line 62
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    goto :goto_d

    .line 63
    :cond_f
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:I

    .line 64
    :goto_d
    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {v13, v10, v11, v2, v1}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(IIII)V

    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    :goto_e
    if-nez v14, :cond_10

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v23, v6

    move/from16 v25, v7

    move-object/from16 v30, v8

    move/from16 v32, v15

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/4 v14, 0x2

    goto/16 :goto_36

    .line 65
    :cond_10
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    .line 66
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzajc;->zzi()V

    const/4 v12, 0x1

    .line 67
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/ads/zzajc;->zzg(Lcom/google/android/gms/internal/ads/zzajc;Z)V

    const v13, 0x74666474

    .line 68
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v13

    if-eqz v13, :cond_12

    const/16 v18, 0x2

    and-int/lit8 v20, v4, 0x2

    if-nez v20, :cond_12

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v10, 0x8

    .line 69
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v10

    if-ne v10, v12, :cond_11

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v10

    goto :goto_f

    :cond_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v10

    :goto_f
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    goto :goto_10

    :cond_12
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    .line 72
    :goto_10
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v23, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_11
    const v6, 0x7472756e

    if-ge v11, v10, :cond_14

    .line 74
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfd;

    .line 75
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    if-ne v0, v6, :cond_13

    .line 76
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v6, 0xc

    .line 77
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v0

    if-lez v0, :cond_13

    add-int/2addr v13, v0

    const/4 v0, 0x1

    add-int/2addr v12, v0

    goto :goto_12

    :cond_13
    const/4 v0, 0x1

    :goto_12
    add-int/2addr v11, v0

    move-object/from16 v0, p0

    move/from16 v7, v25

    goto :goto_11

    :cond_14
    move/from16 v25, v7

    const/4 v0, 0x0

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzh:I

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzg:I

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 79
    array-length v0, v0

    if-ge v0, v12, :cond_15

    new-array v0, v12, [J

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzf:[J

    new-array v0, v12, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    .line 80
    array-length v0, v0

    if-ge v0, v13, :cond_16

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    .line 81
    new-array v0, v13, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    .line 82
    new-array v0, v13, [J

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    .line 83
    new-array v0, v13, [Z

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    .line 84
    new-array v0, v13, [Z

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    :cond_16
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_13
    if-ge v0, v10, :cond_2b

    .line 85
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v12, v24

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfd;

    .line 86
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    if-ne v13, v6, :cond_2a

    const/4 v13, 0x1

    add-int/lit8 v24, v7, 0x1

    .line 87
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v13, 0x8

    .line 88
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 89
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 90
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    move/from16 v28, v10

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    .line 91
    sget-object v29, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object/from16 v29, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 92
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v30

    aput v30, v3, v7

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzf:[J

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    .line 93
    aput-wide v8, v3, v7

    const/16 v20, 0x1

    and-int/lit8 v32, v13, 0x1

    if-eqz v32, :cond_17

    move/from16 v32, v15

    .line 94
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    move-object/from16 v33, v14

    int-to-long v14, v15

    add-long/2addr v8, v14

    aput-wide v8, v3, v7

    :goto_14
    const/4 v3, 0x4

    goto :goto_15

    :cond_17
    move-object/from16 v33, v14

    move/from16 v32, v15

    goto :goto_14

    :goto_15
    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_18

    const/4 v15, 0x1

    goto :goto_16

    :cond_18
    const/4 v15, 0x0

    .line 95
    :goto_16
    iget v3, v10, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:I

    if-eqz v15, :cond_19

    .line 96
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    goto :goto_17

    :cond_19
    move v8, v3

    :goto_17
    and-int/lit16 v9, v13, 0x100

    and-int/lit16 v14, v13, 0x200

    move/from16 v34, v3

    and-int/lit16 v3, v13, 0x400

    and-int/lit16 v13, v13, 0x800

    move/from16 v35, v8

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    if-eqz v8, :cond_1e

    move-object/from16 v36, v5

    array-length v5, v8

    move-object/from16 v37, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_1a

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    if-nez v2, :cond_1b

    :cond_1a
    :goto_18
    move/from16 v38, v9

    move/from16 v39, v13

    move v5, v14

    :goto_19
    const-wide/16 v26, 0x0

    goto :goto_1b

    :cond_1b
    const/4 v5, 0x0

    .line 97
    aget-wide v38, v8, v5

    const-wide/16 v26, 0x0

    cmp-long v5, v38, v26

    if-nez v5, :cond_1d

    move/from16 v38, v9

    move/from16 v39, v13

    move v5, v14

    :cond_1c
    const/4 v8, 0x0

    goto :goto_1a

    :cond_1d
    move v8, v13

    move v5, v14

    .line 98
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-wide/from16 v42, v13

    move-object/from16 v44, v46

    .line 99
    invoke-static/range {v38 .. v44}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    const/16 v21, 0x0

    .line 100
    aget-wide v40, v2, v21

    const-wide/32 v42, 0xf4240

    move/from16 v39, v8

    move/from16 v38, v9

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    move-wide/from16 v44, v8

    .line 101
    invoke-static/range {v40 .. v46}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    add-long/2addr v13, v8

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_1c

    goto :goto_19

    .line 102
    :goto_1a
    aget-wide v13, v2, v8

    move-wide/from16 v26, v13

    goto :goto_1b

    :cond_1e
    move-object/from16 v37, v2

    move-object/from16 v36, v5

    goto :goto_18

    .line 103
    :goto_1b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1f

    const/4 v13, 0x1

    and-int/lit8 v14, v4, 0x1

    if-eqz v14, :cond_1f

    const/4 v13, 0x1

    goto :goto_1c

    :cond_1f
    const/4 v13, 0x0

    :goto_1c
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 104
    aget v7, v14, v7

    add-int/2addr v7, v11

    move/from16 v47, v13

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    move-object v6, v8

    move-object/from16 v48, v9

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    :goto_1d
    if-ge v11, v7, :cond_29

    if-eqz v38, :cond_20

    .line 105
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v40

    move/from16 v49, v4

    move/from16 v4, v40

    goto :goto_1e

    :cond_20
    move/from16 v49, v4

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:I

    :goto_1e
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzg(I)I

    if-eqz v5, :cond_21

    .line 106
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v40

    move/from16 v50, v5

    move/from16 v5, v40

    goto :goto_1f

    :cond_21
    move/from16 v50, v5

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:I

    :goto_1f
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzajd;->zzg(I)I

    if-eqz v3, :cond_22

    .line 107
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v40

    move/from16 v51, v40

    goto :goto_20

    :cond_22
    if-nez v11, :cond_24

    if-eqz v15, :cond_23

    move/from16 v51, v35

    const/4 v11, 0x0

    goto :goto_20

    :cond_23
    const/4 v11, 0x0

    :cond_24
    move/from16 v51, v34

    :goto_20
    if-eqz v39, :cond_25

    .line 108
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v40

    move/from16 v52, v3

    move/from16 v53, v4

    move/from16 v3, v40

    goto :goto_21

    :cond_25
    move/from16 v52, v3

    move/from16 v53, v4

    const/4 v3, 0x0

    :goto_21
    int-to-long v3, v3

    add-long/2addr v3, v8

    sub-long v40, v3, v26

    const-wide/32 v42, 0xf4240

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v44, v13

    .line 109
    invoke-static/range {v40 .. v46}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 110
    aput-wide v3, v6, v11

    move/from16 v40, v7

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    if-nez v7, :cond_26

    move-object/from16 v7, v33

    move-object/from16 v33, v10

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    move-object/from16 v41, v12

    move-wide/from16 v42, v13

    .line 111
    iget-wide v12, v10, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    add-long/2addr v3, v12

    aput-wide v3, v6, v11

    goto :goto_22

    :cond_26
    move-object/from16 v41, v12

    move-wide/from16 v42, v13

    move-object/from16 v7, v33

    move-object/from16 v33, v10

    .line 112
    :goto_22
    aput v5, v2, v11

    const/16 v3, 0x10

    shr-int/lit8 v4, v51, 0x10

    const/4 v3, 0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_27

    if-eqz v47, :cond_28

    if-nez v11, :cond_27

    move v4, v3

    const/4 v11, 0x0

    goto :goto_23

    :cond_27
    const/4 v4, 0x0

    goto :goto_23

    :cond_28
    move v4, v3

    .line 113
    :goto_23
    aput-boolean v4, v48, v11

    move/from16 v4, v53

    int-to-long v4, v4

    add-long/2addr v8, v4

    add-int/2addr v11, v3

    move-object/from16 v10, v33

    move-object/from16 v12, v41

    move-wide/from16 v13, v42

    move/from16 v4, v49

    move/from16 v5, v50

    move/from16 v3, v52

    move-object/from16 v33, v7

    move/from16 v7, v40

    goto/16 :goto_1d

    :cond_29
    move/from16 v49, v4

    move/from16 v40, v7

    move-object/from16 v7, v33

    const/4 v3, 0x1

    .line 114
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    move-object v14, v7

    move/from16 v7, v24

    move/from16 v11, v40

    goto :goto_24

    :cond_2a
    move-object/from16 v37, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v28, v10

    move/from16 v32, v15

    const/4 v3, 0x1

    :goto_24
    add-int/2addr v0, v3

    move/from16 v10, v28

    move-object/from16 v3, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move/from16 v15, v32

    move-object/from16 v5, v36

    move-object/from16 v2, v37

    move/from16 v4, v49

    const v6, 0x7472756e

    goto/16 :goto_13

    :cond_2b
    move-object/from16 v37, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v32, v15

    .line 115
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 116
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaiy;->zza:I

    .line 119
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzajp;->zzb(I)Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v0

    const v2, 0x7361697a

    move-object/from16 v9, v31

    .line 120
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v4, 0x8

    .line 123
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2c

    .line 125
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 126
    :cond_2c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v4

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-gt v5, v6, :cond_31

    if-nez v4, :cond_2f

    .line 128
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v5, :cond_2e

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v3, :cond_2d

    const/4 v7, 0x1

    goto :goto_26

    :cond_2d
    const/4 v7, 0x0

    .line 130
    :goto_26
    aput-boolean v7, v4, v15

    const/4 v7, 0x1

    add-int/2addr v15, v7

    goto :goto_25

    :cond_2e
    const/4 v3, 0x0

    goto :goto_28

    :cond_2f
    if-le v4, v3, :cond_30

    const/4 v15, 0x1

    goto :goto_27

    :cond_30
    const/4 v15, 0x0

    :goto_27
    mul-int v6, v4, v5

    .line 131
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    const/4 v3, 0x0

    .line 132
    invoke-static {v2, v3, v5, v15}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 133
    :goto_28
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    .line 134
    invoke-static {v2, v5, v4, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v6, :cond_32

    .line 135
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzajr;->zza(I)V

    goto :goto_29

    .line 136
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saiz sample count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_32
    :goto_29
    const v2, 0x7361696f

    .line 138
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 139
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 140
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    const/4 v5, 0x1

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v5, :cond_33

    .line 141
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 142
    :cond_33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v3

    if-ne v3, v5, :cond_36

    .line 143
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    if-nez v3, :cond_34

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v2

    goto :goto_2a

    :cond_34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v2

    :goto_2a
    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    :cond_35
    const/4 v2, 0x0

    goto :goto_2b

    .line 145
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :goto_2b
    const v3, 0x73656e63

    .line 147
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v4, 0x0

    .line 148
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzajd;->zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V

    :cond_37
    if-eqz v0, :cond_38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    move-object v5, v0

    goto :goto_2c

    :cond_38
    move-object v5, v2

    :goto_2c
    move-object v0, v2

    move-object v3, v0

    const/4 v15, 0x0

    .line 149
    :goto_2d
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_3b

    move-object/from16 v11, v37

    .line 150
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfd;

    .line 151
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 152
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v4, v7, :cond_3a

    const/16 v12, 0xc

    .line 153
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 154
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    if-ne v4, v8, :cond_39

    move-object v0, v6

    :cond_39
    :goto_2e
    const/4 v4, 0x1

    goto :goto_2f

    :cond_3a
    const/16 v12, 0xc

    const v7, 0x73677064

    if-ne v4, v7, :cond_39

    .line 155
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 156
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    if-ne v4, v8, :cond_39

    move-object v3, v6

    goto :goto_2e

    :goto_2f
    add-int/2addr v15, v4

    move-object/from16 v37, v11

    goto :goto_2d

    :cond_3b
    move-object/from16 v11, v37

    const/4 v4, 0x1

    const/16 v12, 0xc

    if-eqz v0, :cond_3c

    if-nez v3, :cond_3d

    :cond_3c
    const/4 v13, 0x4

    const/4 v14, 0x2

    goto/16 :goto_32

    :cond_3d
    const/16 v6, 0x8

    .line 157
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v7

    const/4 v13, 0x4

    .line 159
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-ne v7, v4, :cond_3e

    .line 160
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 161
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    if-ne v0, v4, :cond_44

    .line 162
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v0

    .line 164
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-ne v0, v4, :cond_40

    .line 165
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    const/4 v14, 0x2

    goto :goto_30

    .line 166
    :cond_3f
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_40
    const/4 v14, 0x2

    if-lt v0, v14, :cond_41

    .line 168
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 169
    :cond_41
    :goto_30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_43

    const/4 v0, 0x1

    .line 170
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v4

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v8, v6, 0x4

    and-int/lit8 v9, v4, 0xf

    .line 172
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v4

    if-ne v4, v0, :cond_45

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v6

    const/16 v4, 0x10

    new-array v7, v4, [B

    const/4 v10, 0x0

    .line 174
    invoke-virtual {v3, v7, v10, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-nez v6, :cond_42

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    new-array v4, v2, [B

    .line 176
    invoke-virtual {v3, v4, v10, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    move-object v10, v4

    goto :goto_31

    :cond_42
    move-object v10, v2

    :goto_31
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzk:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    const/4 v4, 0x1

    move-object v3, v0

    .line 177
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzm:Lcom/google/android/gms/internal/ads/zzajq;

    goto :goto_32

    .line 178
    :cond_43
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 179
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    .line 180
    :cond_44
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    .line 182
    :cond_45
    :goto_32
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x0

    :goto_33
    if-ge v15, v0, :cond_48

    .line 183
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfd;

    .line 184
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v4, 0x75756964

    if-ne v3, v4, :cond_47

    .line 185
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 186
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    move-object/from16 v5, v36

    const/4 v4, 0x0

    const/16 v7, 0x10

    .line 187
    invoke-virtual {v2, v5, v4, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    sget-object v6, Lcom/google/android/gms/internal/ads/zzajd;->zza:[B

    .line 188
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 189
    invoke-static {v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzajd;->zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V

    :cond_46
    :goto_34
    const/4 v2, 0x1

    goto :goto_35

    :cond_47
    move-object/from16 v5, v36

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto :goto_34

    :goto_35
    add-int/2addr v15, v2

    move-object/from16 v36, v5

    goto :goto_33

    :cond_48
    move-object/from16 v5, v36

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto :goto_36

    :cond_49
    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v23, v6

    move/from16 v25, v7

    move-object/from16 v30, v8

    move/from16 v32, v15

    const/16 v7, 0x10

    const/16 v12, 0xc

    const/4 v13, 0x4

    const/4 v14, 0x2

    move v4, v1

    move v3, v2

    const/4 v2, 0x1

    :goto_36
    add-int/lit8 v15, v32, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v1, v4

    move-object/from16 v6, v23

    move/from16 v7, v25

    move-object/from16 v3, v29

    move-object/from16 v8, v30

    move/from16 v4, v49

    goto/16 :goto_8

    :cond_4a
    move v4, v1

    move-object/from16 v29, v3

    move-object v0, v8

    const/16 v7, 0x10

    const/4 v13, 0x4

    const/4 v14, 0x2

    move v3, v2

    const/4 v2, 0x1

    .line 190
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 191
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v15, v4

    :goto_37
    if-ge v15, v1, :cond_4b

    move-object/from16 v5, v29

    .line 192
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzajc;->zzj(Lcom/google/android/gms/internal/ads/zzs;)V

    add-int/2addr v15, v2

    goto :goto_37

    :cond_4b
    move-object/from16 v5, v29

    move-object/from16 v1, p0

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4f

    .line 193
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v15, v4

    :goto_38
    if-ge v15, v0, :cond_4e

    .line 194
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    :goto_39
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget v10, v6, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-ge v4, v10, :cond_4d

    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    .line 195
    aget-wide v11, v10, v4

    cmp-long v10, v11, v8

    if-gtz v10, :cond_4d

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    .line 196
    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4c

    iput v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzi:I

    :cond_4c
    const/4 v10, 0x1

    add-int/2addr v4, v10

    goto :goto_39

    :cond_4d
    const/4 v10, 0x1

    add-int/2addr v15, v10

    goto :goto_38

    :cond_4e
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    :cond_4f
    :goto_3a
    move-object v0, v1

    move v2, v3

    goto/16 :goto_0

    :cond_50
    move-object v1, v0

    move v3, v2

    move-object v0, v8

    const/16 v7, 0x10

    const/4 v10, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x2

    .line 197
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 198
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(Lcom/google/android/gms/internal/ads/zzfc;)V

    goto :goto_3a

    :cond_51
    move-object v1, v0

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    return-void
.end method

.method private static final zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiy;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiy;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x1

    .line 1
    :goto_1
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const v6, 0x656d7367

    const/4 v7, 0x2

    const v8, 0x73696478

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v4, :cond_39

    const-string v12, "FragmentedMp4Extractor"

    if-eq v4, v3, :cond_2e

    const-wide v13, 0x7fffffffffffffffL

    const/4 v6, 0x3

    if-eq v4, v7, :cond_29

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    move-wide v14, v13

    const/4 v5, 0x0

    move-object v13, v9

    :goto_2
    if-ge v5, v8, :cond_3

    .line 2
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajc;

    .line 3
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzajc;->zzk(Lcom/google/android/gms/internal/ads/zzajc;)Z

    move-result v17

    if-nez v17, :cond_0

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-eq v2, v11, :cond_2

    :cond_0
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzajc;->zzk(Lcom/google/android/gms/internal/ads/zzajc;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajc;->zzh:I

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    if-ne v2, v11, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzajc;->zzd()J

    move-result-wide v19

    cmp-long v2, v19, v14

    if-gez v2, :cond_2

    move-object v13, v7

    move-wide/from16 v14, v19

    :cond_2
    :goto_3
    add-int/2addr v5, v3

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    if-nez v13, :cond_5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzx:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_4

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto :goto_1

    .line 7
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 8
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 9
    :cond_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzajc;->zzd()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 10
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 11
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    move-object v4, v13

    :cond_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const/4 v5, 0x6

    const-string v7, "video/hevc"

    const-string v8, "video/avc"

    if-ne v2, v6, :cond_10

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzb()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 13
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 14
    invoke-static {v2, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 15
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    .line 16
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzi:I

    if-ge v2, v11, :cond_d

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 17
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzf()Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    .line 19
    :cond_9
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    if-eqz v1, :cond_a

    .line 20
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :cond_a
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzajr;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 23
    :cond_b
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzl()Z

    move-result v1

    if-nez v1, :cond_c

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    :cond_c
    move v1, v6

    goto/16 :goto_14

    .line 24
    :cond_d
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    if-ne v2, v3, :cond_e

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/lit8 v2, v2, -0x8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 25
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 26
    :cond_e
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    const-string v10, "audio/ac4"

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/4 v10, 0x7

    .line 27
    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    .line 28
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(ILcom/google/android/gms/internal/ads/zzen;)V

    .line 29
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    invoke-interface {v2, v11, v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    const/4 v10, 0x0

    goto :goto_5

    .line 30
    :cond_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/4 v10, 0x0

    .line 31
    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    .line 32
    :goto_5
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/2addr v11, v2

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    .line 33
    :cond_10
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    .line 34
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zze()J

    move-result-wide v11

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    if-nez v13, :cond_11

    :goto_6
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    if-ge v2, v5, :cond_22

    sub-int/2addr v5, v2

    const/4 v14, 0x0

    .line 36
    invoke-interface {v10, v1, v5, v14}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    goto :goto_6

    :cond_11
    const/4 v14, 0x0

    .line 37
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    .line 38
    aput-byte v14, v6, v14

    .line 39
    aput-byte v14, v6, v3

    const/16 v18, 0x2

    .line 40
    aput-byte v14, v6, v18

    const/4 v14, 0x4

    rsub-int/lit8 v9, v13, 0x4

    :goto_7
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    if-ge v14, v3, :cond_22

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 41
    array-length v3, v3

    if-gtz v3, :cond_13

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v3, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v3, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v3

    add-int v14, v13, v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    move/from16 v18, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    sub-int/2addr v5, v3

    if-le v14, v5, :cond_14

    goto :goto_8

    :cond_14
    move/from16 v3, v18

    :goto_a
    add-int v5, v13, v3

    .line 43
    invoke-interface {v1, v6, v9, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    const/4 v5, 0x0

    .line 44
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 45
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    if-ltz v14, :cond_1c

    sub-int/2addr v14, v3

    .line 46
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzg:Lcom/google/android/gms/internal/ads/zzen;

    .line 47
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v5, 0x4

    .line 48
    invoke-interface {v10, v14, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v14, v5

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/2addr v14, v9

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 49
    array-length v14, v14

    if-lez v14, :cond_1a

    if-lez v3, :cond_1a

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    aget-byte v18, v6, v5

    .line 50
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 51
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    move/from16 v19, v9

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 52
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_b

    :cond_15
    move-object/from16 v20, v8

    const/4 v8, 0x6

    goto :goto_c

    :cond_16
    move/from16 v19, v9

    :goto_b
    and-int/lit8 v9, v18, 0x1f

    move-object/from16 v20, v8

    const/4 v8, 0x6

    if-eq v9, v8, :cond_19

    .line 53
    :goto_c
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 54
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    const/4 v5, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    and-int/lit8 v5, v18, 0x7e

    const/4 v9, 0x1

    shr-int/2addr v5, v9

    const/16 v9, 0x27

    if-ne v5, v9, :cond_17

    :cond_19
    const/4 v5, 0x1

    goto :goto_f

    :cond_1a
    move-object/from16 v20, v8

    move/from16 v19, v9

    const/4 v8, 0x6

    goto :goto_d

    :goto_f
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzH:Z

    .line 55
    invoke-interface {v10, v15, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    if-lez v3, :cond_1b

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v5, :cond_1b

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v9, 0x4

    .line 56
    invoke-static {v6, v9, v3, v5}, Lcom/google/android/gms/internal/ads/zzfv;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    move v5, v8

    move/from16 v9, v19

    move-object/from16 v8, v20

    goto/16 :goto_7

    :cond_1b
    move v5, v8

    move/from16 v9, v19

    move-object/from16 v8, v20

    const/4 v3, 0x1

    goto/16 :goto_7

    .line 57
    :cond_1c
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 58
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_1d
    move-object/from16 v20, v8

    move/from16 v19, v9

    move v8, v5

    .line 59
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzH:Z

    if-eqz v5, :cond_20

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzi:Lcom/google/android/gms/internal/ads/zzen;

    .line 60
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    const/4 v14, 0x0

    .line 61
    invoke-interface {v1, v3, v14, v9}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    .line 62
    invoke-interface {v10, v5, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v8

    .line 63
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzfv;->zzc([BI)I

    move-result v8

    .line 64
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 65
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzz;->zzq:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1e

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 66
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfz;->zza()I

    move-result v9

    if-eqz v9, :cond_1f

    .line 67
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzfz;->zze(I)V

    goto :goto_10

    .line 68
    :cond_1e
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfz;->zza()I

    move-result v14

    if-eq v14, v8, :cond_1f

    .line 70
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfz;->zze(I)V

    .line 71
    :cond_1f
    :goto_10
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 72
    invoke-virtual {v8, v11, v12, v5}, Lcom/google/android/gms/internal/ads/zzfz;->zzb(JLcom/google/android/gms/internal/ads/zzen;)V

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zza()I

    move-result v5

    const/4 v9, 0x4

    and-int/2addr v5, v9

    if-eqz v5, :cond_21

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfz;->zzd()V

    goto :goto_11

    :cond_20
    const/4 v5, 0x0

    const/4 v9, 0x4

    .line 75
    invoke-interface {v10, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v3

    .line 76
    :cond_21
    :goto_11
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    sub-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    move/from16 v9, v19

    move-object/from16 v8, v20

    const/4 v3, 0x1

    const/4 v5, 0x6

    goto/16 :goto_7

    .line 77
    :cond_22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zza()I

    move-result v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v2, :cond_23

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_23
    move/from16 v22, v1

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzf()Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajq;->zzc:Lcom/google/android/gms/internal/ads/zzafa;

    move-object/from16 v25, v1

    goto :goto_12

    :cond_24
    const/16 v25, 0x0

    :goto_12
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/16 v24, 0x0

    move-object/from16 v19, v10

    move-wide/from16 v20, v11

    move/from16 v23, v1

    .line 79
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    :cond_25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajb;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    .line 82
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzc:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    .line 83
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzajb;->zza:J

    .line 84
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzb:Z

    if-eqz v1, :cond_26

    add-long/2addr v5, v11

    :cond_26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 85
    array-length v2, v1

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v2, :cond_25

    aget-object v19, v1, v7

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    const/16 v25, 0x0

    const/16 v22, 0x1

    move-wide/from16 v20, v5

    move/from16 v23, v3

    move/from16 v24, v8

    .line 86
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_13

    .line 87
    :cond_27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzl()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    :cond_28
    const/4 v1, 0x3

    .line 88
    :goto_14
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const/4 v1, 0x0

    return v1

    :cond_29
    const/4 v9, 0x4

    .line 89
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v4, v3, :cond_2b

    .line 91
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    if-eqz v7, :cond_2a

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    cmp-long v8, v6, v13

    if-gez v8, :cond_2a

    .line 92
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajc;

    move-wide v13, v6

    :cond_2a
    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_15

    :cond_2b
    if-nez v5, :cond_2c

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    :cond_2c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v2

    sub-long/2addr v13, v2

    long-to-int v2, v13

    if-ltz v2, :cond_2d

    .line 93
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v5

    const/4 v6, 0x0

    .line 94
    invoke-interface {v1, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 95
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iput-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    goto/16 :goto_0

    .line 96
    :cond_2d
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 97
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_2e
    const/4 v9, 0x4

    .line 98
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    long-to-int v2, v2

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    .line 99
    invoke-interface {v1, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzd(Lcom/google/android/gms/internal/ads/zzfd;)V

    goto/16 :goto_1a

    .line 102
    :cond_2f
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    if-ne v3, v8, :cond_30

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    .line 103
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 104
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzadi;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzadj;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    if-nez v3, :cond_38

    .line 105
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 106
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    goto/16 :goto_1a

    :cond_30
    if-ne v3, v6, :cond_38

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 107
    array-length v3, v3

    if-eqz v3, :cond_38

    .line 108
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    .line 110
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_32

    const/4 v6, 0x1

    if-eq v3, v6, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unsupported emsg version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 112
    :cond_31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v19

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v6

    move-object/from16 v25, v3

    .line 114
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    .line 116
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v12

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v14

    .line 121
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v22, v6

    move-object/from16 v20, v8

    move-wide v6, v10

    move-wide/from16 v24, v12

    move-object/from16 v21, v14

    move-wide v10, v4

    goto :goto_17

    :cond_32
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v14

    .line 125
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v6

    move-object/from16 v25, v3

    .line 128
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    cmp-long v15, v12, v4

    if-eqz v15, :cond_33

    add-long/2addr v12, v10

    goto :goto_16

    :cond_33
    move-wide v12, v4

    .line 129
    :goto_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    move-wide/from16 v23, v6

    move-object/from16 v25, v3

    .line 130
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v15

    move-wide/from16 v22, v6

    move-object/from16 v20, v8

    move-wide v6, v12

    move-object/from16 v21, v14

    move-wide/from16 v24, v15

    .line 132
    :goto_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v3

    new-array v3, v3, [B

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v8

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 134
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagr;

    move-object/from16 v19, v2

    move-object/from16 v26, v3

    invoke-direct/range {v19 .. v26}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzl:Lcom/google/android/gms/internal/ads/zzags;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzen;

    .line 135
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzagr;)[B

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 136
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 137
    array-length v12, v3

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v12, :cond_34

    aget-object v14, v3, v13

    const/4 v15, 0x0

    .line 138
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 139
    invoke-interface {v14, v8, v2}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_18

    :cond_34
    const/4 v14, 0x1

    cmp-long v3, v6, v4

    if-nez v3, :cond_35

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajb;

    invoke-direct {v4, v10, v11, v14, v2}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(JZI)V

    .line 140
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    goto :goto_1a

    :cond_35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 141
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajb;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v7, v5, v2}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(JZI)V

    .line 142
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    goto :goto_1a

    :cond_36
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 143
    array-length v4, v3

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_38

    aget-object v10, v3, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    move-wide v11, v6

    move v14, v2

    .line 144
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_19

    .line 145
    :cond_37
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 146
    :cond_38
    :goto_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v2

    .line 147
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzajd;->zzm(J)V

    goto/16 :goto_0

    :cond_39
    const/4 v9, 0x4

    .line 148
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    const-wide/16 v3, 0x0

    const-wide/16 v11, -0x1

    if-nez v2, :cond_3c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    const/4 v7, 0x0

    const/4 v13, 0x1

    .line 149
    invoke-interface {v1, v5, v7, v10, v13}, Lcom/google/android/gms/internal/ads/zzadw;->zzn([BIIZ)Z

    move-result v5

    if-nez v5, :cond_3b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_3a

    move-object/from16 v5, p2

    iput-wide v3, v5, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzadj;->zza()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    return v13

    :cond_3a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfz;->zzd()V

    const/4 v1, -0x1

    return v1

    :cond_3b
    move-object/from16 v5, p2

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    const/4 v7, 0x0

    .line 152
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    .line 154
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    goto :goto_1b

    :cond_3c
    move-object/from16 v5, p2

    :goto_1b
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    const-wide/16 v15, 0x1

    cmp-long v2, v13, v15

    if-nez v2, :cond_3d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    .line 155
    invoke-interface {v1, v3, v10, v10}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    add-int/2addr v3, v10

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    goto :goto_1d

    :cond_3d
    cmp-long v2, v13, v3

    if-nez v2, :cond_40

    .line 157
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-nez v4, :cond_3f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    goto :goto_1c

    :cond_3e
    move-wide v2, v11

    :cond_3f
    :goto_1c
    cmp-long v4, v2, v11

    if-eqz v4, :cond_40

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v13

    sub-long/2addr v2, v13

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v13, v4

    add-long/2addr v2, v13

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    .line 160
    :cond_40
    :goto_1d
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v13, v4

    cmp-long v4, v2, v13

    if-ltz v4, :cond_4f

    .line 161
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    cmp-long v6, v6, v11

    if-eqz v6, :cond_42

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v4, v8, :cond_41

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    long-to-int v2, v2

    .line 162
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    const/4 v6, 0x0

    .line 163
    invoke-static {v2, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v11, v3

    sub-long/2addr v6, v11

    long-to-int v3, v6

    .line 164
    invoke-interface {v1, v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    invoke-direct {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    move-result-wide v3

    .line 165
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 166
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadi;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadj;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)V

    goto :goto_1e

    :cond_41
    sub-long/2addr v2, v13

    long-to-int v2, v2

    const/4 v3, 0x1

    .line 167
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzo(IZ)Z

    .line 168
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto/16 :goto_0

    .line 169
    :cond_42
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v2

    sub-long/2addr v2, v13

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    const v7, 0x6d646174

    const v11, 0x6d6f6f66

    if-eq v6, v11, :cond_43

    if-ne v6, v7, :cond_44

    :cond_43
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    if-nez v6, :cond_44

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaet;

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    .line 170
    invoke-direct {v12, v13, v14, v2, v3}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    invoke-interface {v6, v12}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    :cond_44
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v6, v11, :cond_45

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 171
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1f
    if-ge v13, v12, :cond_45

    .line 172
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide v2, v14, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    iput-wide v2, v14, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_1f

    :cond_45
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v6, v7, :cond_46

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzx:J

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    :cond_46
    const v2, 0x6d6f6f76

    if-eq v6, v2, :cond_47

    const v2, 0x7472616b

    if-eq v6, v2, :cond_47

    const v2, 0x6d646961

    if-eq v6, v2, :cond_47

    const v2, 0x6d696e66

    if-eq v6, v2, :cond_47

    const v2, 0x7374626c

    if-eq v6, v2, :cond_47

    if-eq v6, v11, :cond_47

    const v2, 0x74726166

    if-eq v6, v2, :cond_47

    const v2, 0x6d766578

    if-eq v6, v2, :cond_47

    const v2, 0x65647473

    if-ne v6, v2, :cond_48

    :cond_47
    const/4 v2, 0x1

    goto/16 :goto_22

    :cond_48
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v11, 0x7fffffff

    if-eq v6, v2, :cond_4b

    const v2, 0x6d646864

    if-eq v6, v2, :cond_4b

    const v2, 0x6d766864

    if-eq v6, v2, :cond_4b

    if-eq v6, v8, :cond_4b

    const v2, 0x73747364

    if-eq v6, v2, :cond_4b

    const v2, 0x73747473

    if-eq v6, v2, :cond_4b

    const v2, 0x63747473

    if-eq v6, v2, :cond_4b

    const v2, 0x73747363

    if-eq v6, v2, :cond_4b

    const v2, 0x7374737a

    if-eq v6, v2, :cond_4b

    const v2, 0x73747a32

    if-eq v6, v2, :cond_4b

    const v2, 0x7374636f

    if-eq v6, v2, :cond_4b

    const v2, 0x636f3634

    if-eq v6, v2, :cond_4b

    const v2, 0x73747373

    if-eq v6, v2, :cond_4b

    const v2, 0x74666474

    if-eq v6, v2, :cond_4b

    const v2, 0x74666864

    if-eq v6, v2, :cond_4b

    const v2, 0x746b6864

    if-eq v6, v2, :cond_4b

    const v2, 0x74726578

    if-eq v6, v2, :cond_4b

    const v2, 0x7472756e

    if-eq v6, v2, :cond_4b

    const v2, 0x70737368    # 3.013775E29f

    if-eq v6, v2, :cond_4b

    const v2, 0x7361697a

    if-eq v6, v2, :cond_4b

    const v2, 0x7361696f

    if-eq v6, v2, :cond_4b

    const v2, 0x73656e63

    if-eq v6, v2, :cond_4b

    const v2, 0x75756964

    if-eq v6, v2, :cond_4b

    const v2, 0x73626770

    if-eq v6, v2, :cond_4b

    const v2, 0x73677064

    if-eq v6, v2, :cond_4b

    const v2, 0x656c7374

    if-eq v6, v2, :cond_4b

    const v2, 0x6d656864

    if-eq v6, v2, :cond_4b

    const v2, 0x656d7367

    if-ne v6, v2, :cond_49

    goto :goto_21

    .line 173
    :cond_49
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    cmp-long v2, v2, v11

    if-gtz v2, :cond_4a

    const/4 v2, 0x0

    .line 174
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    :goto_20
    move v3, v2

    goto/16 :goto_1

    .line 175
    :cond_4a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 176
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 177
    :cond_4b
    :goto_21
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    if-ne v2, v10, :cond_4d

    .line 178
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    cmp-long v2, v2, v11

    if-gtz v2, :cond_4c

    .line 179
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    long-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    const/4 v6, 0x0

    .line 180
    invoke-static {v3, v6, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto :goto_20

    .line 181
    :cond_4c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 182
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 183
    :cond_4d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 184
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 185
    :goto_22
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    add-long/2addr v3, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfc;

    const-wide/16 v10, -0x8

    add-long/2addr v3, v10

    .line 186
    invoke-direct {v8, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(IJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v10, v8

    cmp-long v6, v6, v10

    if-nez v6, :cond_4e

    .line 187
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzm(J)V

    goto :goto_20

    .line 188
    :cond_4e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto :goto_20

    .line 189
    :cond_4f
    const-string v1, "Atom size less than header length (unsupported)."

    .line 190
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzc:Lcom/google/android/gms/internal/ads/zzakr;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaku;

    .line 10
    .line 11
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzakr;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v2

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 33
    .line 34
    const/4 v3, 0x5

    .line 35
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aput-object v0, p1, v2

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    const/16 v1, 0x65

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p1, v2

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzex;->zzQ([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzafb;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 55
    .line 56
    array-length v0, p1

    .line 57
    move v3, v2

    .line 58
    :goto_1
    if-ge v3, v0, :cond_2

    .line 59
    .line 60
    aget-object v4, p1, v3

    .line 61
    .line 62
    sget-object v5, Lcom/google/android/gms/internal/ads/zzajd;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 63
    .line 64
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zze:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzafb;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 79
    .line 80
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 81
    .line 82
    array-length v0, v0

    .line 83
    if-ge v2, v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 86
    .line 87
    add-int/lit8 v3, v1, 0x1

    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 104
    .line 105
    aput-object v0, v1, v2

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    move v1, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

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
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/zzajc;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzi()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzc()V

    .line 33
    .line 34
    .line 35
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzadw;)Lcom/google/android/gms/internal/ads/zzaey;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method
