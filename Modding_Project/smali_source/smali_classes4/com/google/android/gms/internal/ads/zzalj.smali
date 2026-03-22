.class public final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakt;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzali;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzen;

.field private zze:Ljava/util/Map;

.field private zzf:F

.field private zzg:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzalj;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzf:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzg:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Z

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzB([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzali;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Lcom/google/android/gms/internal/ads/zzali;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzalj;->zze(Lcom/google/android/gms/internal/ads/zzen;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Lcom/google/android/gms/internal/ads/zzali;

    return-void
.end method

.method private static zzb(I)F
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const p0, -0x800001

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    const p0, 0x3f733333    # 0.95f

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    .line 21
    .line 22
    .line 23
    return p0
.end method

.method private static zzc(JLjava/util/List;Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v1, v1, p0

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v1, v1, p0

    .line 35
    .line 36
    if-gez v1, :cond_0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 p0, v0, -0x1

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    move-object p0, p1

    .line 71
    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method private static zzd(Ljava/lang/String;)J
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide v2, 0xd693a400L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-long/2addr v0, v2

    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide/32 v4, 0x3938700

    .line 50
    .line 51
    .line 52
    mul-long/2addr v2, v4

    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    const-wide/32 v6, 0xf4240

    .line 63
    .line 64
    .line 65
    mul-long/2addr v4, v6

    .line 66
    const/4 v6, 0x4

    .line 67
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    const-wide/16 v8, 0x2710

    .line 76
    .line 77
    mul-long/2addr v6, v8

    .line 78
    add-long/2addr v0, v2

    .line 79
    add-long/2addr v0, v4

    .line 80
    add-long/2addr v0, v6

    .line 81
    return-wide v0
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzen;Ljava/nio/charset/Charset;)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    const-string v1, "[Script Info]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x5b

    .line 14
    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    :catch_0
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zze(Ljava/nio/charset/Charset;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    :cond_2
    const-string v1, ":"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    array-length v1, v0

    .line 42
    const/4 v3, 0x2

    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    aget-object v3, v0, v1

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfuv;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x1

    .line 61
    packed-switch v4, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :pswitch_0
    const-string v1, "playresy"

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    move v1, v5

    .line 74
    goto :goto_3

    .line 75
    :pswitch_1
    const-string v4, "playresx"

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    const/4 v1, -0x1

    .line 85
    :goto_3
    if-eqz v1, :cond_5

    .line 86
    .line 87
    if-eq v1, v5, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :try_start_0
    aget-object v0, v0, v5

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzg:F

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    aget-object v0, v0, v5

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzf:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    const-string v1, "[V4+ Styles]"

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const-string v3, "SsaParser"

    .line 123
    .line 124
    if-eqz v1, :cond_c

    .line 125
    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    :cond_7
    :goto_4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_b

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_8

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zze(Ljava/nio/charset/Charset;)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eq v5, v2, :cond_b

    .line 149
    .line 150
    :cond_8
    const-string v5, "Format:"

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_9

    .line 157
    .line 158
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalk;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    goto :goto_4

    .line 163
    :cond_9
    const-string v5, "Style:"

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_7

    .line 170
    .line 171
    if-nez v1, :cond_a

    .line 172
    .line 173
    const-string v5, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 174
    .line 175
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzalm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalk;)Lcom/google/android/gms/internal/ads/zzalm;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_7

    .line 188
    .line 189
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzalm;->zza:Ljava/lang/String;

    .line 190
    .line 191
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zze:Ljava/util/Map;

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_c
    const-string v1, "[V4 Styles]"

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_d

    .line 206
    .line 207
    const-string v0, "[V4 Styles] are not supported"

    .line 208
    .line 209
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_d
    const-string v1, "[Events]"

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    .line 222
    :cond_e
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzaks;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    add-int v4, v1, p3

    .line 16
    .line 17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    .line 18
    .line 19
    move-object/from16 v6, p1

    .line 20
    .line 21
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzC()Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Z

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzalj;->zze(Lcom/google/android/gms/internal/ads/zzen;Ljava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Lcom/google/android/gms/internal/ads/zzali;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzz(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v8, -0x1

    .line 51
    if-eqz v7, :cond_18

    .line 52
    .line 53
    const-string v11, "Format:"

    .line 54
    .line 55
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_2

    .line 60
    .line 61
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzali;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzali;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string v11, "Dialogue:"

    .line 67
    .line 68
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_3

    .line 73
    .line 74
    const-string v12, "SsaParser"

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    const-string v8, "Skipping dialogue line before complete format: "

    .line 79
    .line 80
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    move-object/from16 v16, v1

    .line 88
    .line 89
    move-object/from16 v19, v4

    .line 90
    .line 91
    move-object/from16 v20, v5

    .line 92
    .line 93
    goto/16 :goto_f

    .line 94
    .line 95
    :cond_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 100
    .line 101
    .line 102
    const/16 v11, 0x9

    .line 103
    .line 104
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzali;->zzf:I

    .line 109
    .line 110
    const-string v14, ","

    .line 111
    .line 112
    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    array-length v14, v11

    .line 117
    if-eq v14, v13, :cond_5

    .line 118
    .line 119
    const-string v8, "Skipping dialogue line with fewer columns than format: "

    .line 120
    .line 121
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzali;->zza:I

    .line 130
    .line 131
    if-eq v13, v8, :cond_6

    .line 132
    .line 133
    :try_start_0
    aget-object v13, v11, v13

    .line 134
    .line 135
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_2

    .line 144
    :catch_0
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzali;->zza:I

    .line 145
    .line 146
    aget-object v13, v11, v13

    .line 147
    .line 148
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    const-string v14, "Fail to parse layer: "

    .line 153
    .line 154
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    const/4 v13, 0x0

    .line 162
    :goto_2
    iget v14, v4, Lcom/google/android/gms/internal/ads/zzali;->zzb:I

    .line 163
    .line 164
    aget-object v14, v11, v14

    .line 165
    .line 166
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzalj;->zzd(Ljava/lang/String;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v14

    .line 170
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    cmp-long v18, v14, v16

    .line 176
    .line 177
    const-string v6, "Skipping invalid timing: "

    .line 178
    .line 179
    if-nez v18, :cond_7

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzali;->zzc:I

    .line 190
    .line 191
    aget-object v9, v11, v9

    .line 192
    .line 193
    move-object/from16 p4, v11

    .line 194
    .line 195
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzalj;->zzd(Ljava/lang/String;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v10

    .line 199
    cmp-long v9, v10, v16

    .line 200
    .line 201
    if-eqz v9, :cond_8

    .line 202
    .line 203
    cmp-long v9, v10, v14

    .line 204
    .line 205
    if-gtz v9, :cond_9

    .line 206
    .line 207
    :cond_8
    move-object/from16 v16, v1

    .line 208
    .line 209
    move-object/from16 v19, v4

    .line 210
    .line 211
    move-object/from16 v20, v5

    .line 212
    .line 213
    goto/16 :goto_e

    .line 214
    .line 215
    :cond_9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzalj;->zze:Ljava/util/Map;

    .line 216
    .line 217
    if-eqz v6, :cond_a

    .line 218
    .line 219
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzali;->zzd:I

    .line 220
    .line 221
    if-eq v7, v8, :cond_a

    .line 222
    .line 223
    aget-object v7, p4, v7

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    check-cast v6, Lcom/google/android/gms/internal/ads/zzalm;

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_a
    const/4 v6, 0x0

    .line 237
    :goto_3
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    .line 238
    .line 239
    aget-object v7, p4, v7

    .line 240
    .line 241
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzall;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzall;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzall;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    const-string v8, "\\N"

    .line 250
    .line 251
    move-object/from16 v16, v1

    .line 252
    .line 253
    const-string v1, "\n"

    .line 254
    .line 255
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    const-string v8, "\\n"

    .line 260
    .line 261
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-string v7, "\\h"

    .line 266
    .line 267
    const-string v8, "\u00a0"

    .line 268
    .line 269
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzf:F

    .line 274
    .line 275
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzalj;->zzg:F

    .line 276
    .line 277
    new-instance v0, Landroid/text/SpannableString;

    .line 278
    .line 279
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcs;

    .line 283
    .line 284
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcs;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzcs;->zzp(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 291
    .line 292
    .line 293
    const v17, -0x800001

    .line 294
    .line 295
    .line 296
    if-eqz v6, :cond_12

    .line 297
    .line 298
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzc:Ljava/lang/Integer;

    .line 299
    .line 300
    move-object/from16 v19, v4

    .line 301
    .line 302
    if-eqz v13, :cond_b

    .line 303
    .line 304
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 305
    .line 306
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    invoke-direct {v4, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    move-object/from16 v20, v5

    .line 318
    .line 319
    move-wide/from16 v21, v10

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    const/16 v10, 0x21

    .line 323
    .line 324
    invoke-virtual {v0, v4, v5, v13, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_b
    move-object/from16 v20, v5

    .line 329
    .line 330
    move-wide/from16 v21, v10

    .line 331
    .line 332
    :goto_4
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzj:I

    .line 333
    .line 334
    const/4 v5, 0x3

    .line 335
    if-ne v4, v5, :cond_c

    .line 336
    .line 337
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzd:Ljava/lang/Integer;

    .line 338
    .line 339
    if-eqz v4, :cond_c

    .line 340
    .line 341
    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    invoke-direct {v10, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    const/4 v11, 0x0

    .line 355
    const/16 v13, 0x21

    .line 356
    .line 357
    invoke-virtual {v0, v10, v11, v4, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 358
    .line 359
    .line 360
    :cond_c
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zze:F

    .line 361
    .line 362
    cmpl-float v10, v4, v17

    .line 363
    .line 364
    if-eqz v10, :cond_d

    .line 365
    .line 366
    cmpl-float v10, v8, v17

    .line 367
    .line 368
    if-eqz v10, :cond_d

    .line 369
    .line 370
    div-float/2addr v4, v8

    .line 371
    const/4 v10, 0x1

    .line 372
    invoke-virtual {v1, v4, v10}, Lcom/google/android/gms/internal/ads/zzcs;->zzn(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 373
    .line 374
    .line 375
    :cond_d
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzf:Z

    .line 376
    .line 377
    if-eqz v4, :cond_10

    .line 378
    .line 379
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Z

    .line 380
    .line 381
    if-eqz v4, :cond_f

    .line 382
    .line 383
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 384
    .line 385
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    const/4 v10, 0x0

    .line 393
    const/16 v11, 0x21

    .line 394
    .line 395
    invoke-virtual {v0, v4, v10, v5, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 396
    .line 397
    .line 398
    :cond_e
    :goto_5
    const/4 v5, 0x2

    .line 399
    goto :goto_6

    .line 400
    :cond_f
    const/4 v10, 0x0

    .line 401
    const/16 v11, 0x21

    .line 402
    .line 403
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 404
    .line 405
    const/4 v5, 0x1

    .line 406
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-virtual {v0, v4, v10, v5, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :cond_10
    const/4 v10, 0x0

    .line 418
    const/16 v11, 0x21

    .line 419
    .line 420
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzg:Z

    .line 421
    .line 422
    if-eqz v4, :cond_e

    .line 423
    .line 424
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 425
    .line 426
    const/4 v5, 0x2

    .line 427
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 431
    .line 432
    .line 433
    move-result v13

    .line 434
    invoke-virtual {v0, v4, v10, v13, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 435
    .line 436
    .line 437
    :goto_6
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzh:Z

    .line 438
    .line 439
    if-eqz v4, :cond_11

    .line 440
    .line 441
    new-instance v4, Landroid/text/style/UnderlineSpan;

    .line 442
    .line 443
    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    invoke-virtual {v0, v4, v10, v13, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 451
    .line 452
    .line 453
    :cond_11
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzi:Z

    .line 454
    .line 455
    if-eqz v4, :cond_13

    .line 456
    .line 457
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    .line 458
    .line 459
    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 463
    .line 464
    .line 465
    move-result v13

    .line 466
    invoke-virtual {v0, v4, v10, v13, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 467
    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_12
    move-object/from16 v19, v4

    .line 471
    .line 472
    move-object/from16 v20, v5

    .line 473
    .line 474
    move-wide/from16 v21, v10

    .line 475
    .line 476
    const/4 v5, 0x2

    .line 477
    :cond_13
    :goto_7
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzall;->zza:I

    .line 478
    .line 479
    const/4 v4, -0x1

    .line 480
    if-eq v0, v4, :cond_14

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_14
    if-eqz v6, :cond_15

    .line 484
    .line 485
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzalm;->zzb:I

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_15
    const/4 v0, -0x1

    .line 489
    :goto_8
    const-string v4, "Unknown alignment: "

    .line 490
    .line 491
    packed-switch v0, :pswitch_data_0

    .line 492
    .line 493
    .line 494
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    :pswitch_1
    const/4 v6, 0x0

    .line 513
    goto :goto_9

    .line 514
    :pswitch_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 515
    .line 516
    goto :goto_9

    .line 517
    :pswitch_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :pswitch_4
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 521
    .line 522
    :goto_9
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzcs;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 523
    .line 524
    .line 525
    const/high16 v6, -0x80000000

    .line 526
    .line 527
    packed-switch v0, :pswitch_data_1

    .line 528
    .line 529
    .line 530
    :pswitch_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v10

    .line 545
    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :pswitch_6
    move v10, v6

    .line 549
    goto :goto_a

    .line 550
    :pswitch_7
    move v10, v5

    .line 551
    goto :goto_a

    .line 552
    :pswitch_8
    const/4 v10, 0x1

    .line 553
    goto :goto_a

    .line 554
    :pswitch_9
    const/4 v10, 0x0

    .line 555
    :goto_a
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzcs;->zzi(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 556
    .line 557
    .line 558
    packed-switch v0, :pswitch_data_2

    .line 559
    .line 560
    .line 561
    :pswitch_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    goto :goto_b

    .line 580
    :pswitch_b
    const/4 v6, 0x0

    .line 581
    goto :goto_b

    .line 582
    :pswitch_c
    const/4 v6, 0x1

    .line 583
    goto :goto_b

    .line 584
    :pswitch_d
    move v6, v5

    .line 585
    :goto_b
    :pswitch_e
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzcs;->zzf(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 586
    .line 587
    .line 588
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzall;->zzb:Landroid/graphics/PointF;

    .line 589
    .line 590
    if-eqz v0, :cond_16

    .line 591
    .line 592
    cmpl-float v4, v8, v17

    .line 593
    .line 594
    if-eqz v4, :cond_16

    .line 595
    .line 596
    cmpl-float v4, v7, v17

    .line 597
    .line 598
    if-eqz v4, :cond_16

    .line 599
    .line 600
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 601
    .line 602
    div-float/2addr v4, v7

    .line 603
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 604
    .line 605
    .line 606
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 607
    .line 608
    div-float/2addr v0, v8

    .line 609
    const/4 v5, 0x0

    .line 610
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 611
    .line 612
    .line 613
    goto :goto_c

    .line 614
    :cond_16
    const/4 v5, 0x0

    .line 615
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzb()I

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalj;->zzb(I)F

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcs;->zza()I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalj;->zzb(I)F

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 635
    .line 636
    .line 637
    :goto_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Lcom/google/android/gms/internal/ads/zzcu;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v14, v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(JLjava/util/List;Ljava/util/List;)I

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    move-wide/from16 v4, v21

    .line 646
    .line 647
    invoke-static {v4, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzalj;->zzc(JLjava/util/List;Ljava/util/List;)I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    :goto_d
    if-ge v1, v4, :cond_17

    .line 652
    .line 653
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    check-cast v5, Ljava/util/List;

    .line 658
    .line 659
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    add-int/lit8 v1, v1, 0x1

    .line 663
    .line 664
    goto :goto_d

    .line 665
    :goto_e
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    :cond_17
    :goto_f
    move-object/from16 v0, p0

    .line 673
    .line 674
    move-object/from16 v1, v16

    .line 675
    .line 676
    move-object/from16 v4, v19

    .line 677
    .line 678
    move-object/from16 v5, v20

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :cond_18
    const/4 v5, 0x0

    .line 683
    move v0, v5

    .line 684
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 685
    .line 686
    .line 687
    move-result v1

    .line 688
    if-ge v0, v1, :cond_1c

    .line 689
    .line 690
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    move-object v7, v1

    .line 695
    check-cast v7, Ljava/util/List;

    .line 696
    .line 697
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-eqz v1, :cond_1a

    .line 702
    .line 703
    if-eqz v0, :cond_19

    .line 704
    .line 705
    move-object/from16 v6, p5

    .line 706
    .line 707
    const/4 v1, 0x1

    .line 708
    const/4 v4, -0x1

    .line 709
    goto :goto_11

    .line 710
    :cond_19
    move v0, v5

    .line 711
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    const/4 v4, -0x1

    .line 716
    add-int/2addr v1, v4

    .line 717
    if-eq v0, v1, :cond_1b

    .line 718
    .line 719
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    check-cast v1, Ljava/lang/Long;

    .line 724
    .line 725
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 726
    .line 727
    .line 728
    move-result-wide v8

    .line 729
    add-int/lit8 v1, v0, 0x1

    .line 730
    .line 731
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    check-cast v1, Ljava/lang/Long;

    .line 736
    .line 737
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 738
    .line 739
    .line 740
    move-result-wide v10

    .line 741
    sub-long/2addr v10, v8

    .line 742
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakl;

    .line 743
    .line 744
    move-object v6, v1

    .line 745
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Ljava/util/List;JJ)V

    .line 746
    .line 747
    .line 748
    move-object/from16 v6, p5

    .line 749
    .line 750
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zza(Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    const/4 v1, 0x1

    .line 754
    :goto_11
    add-int/2addr v0, v1

    .line 755
    goto :goto_10

    .line 756
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 757
    .line 758
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 759
    .line 760
    .line 761
    throw v0

    .line 762
    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
