.class public final Lt5/h;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lt5/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/h$a;
    }
.end annotation


# static fields
.field private static final n:[I

.field private static final o:Lt5/h$a;

.field private static final p:Lt5/h$a;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lt5/h;->n:[I

    .line 9
    .line 10
    new-instance v0, Lt5/h$a;

    .line 11
    .line 12
    new-instance v1, Lt5/f;

    .line 13
    .line 14
    invoke-direct {v1}, Lt5/f;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lt5/h$a;-><init>(Lt5/h$a$a;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lt5/h;->o:Lt5/h$a;

    .line 21
    .line 22
    new-instance v0, Lt5/h$a;

    .line 23
    .line 24
    new-instance v1, Lt5/g;

    .line 25
    .line 26
    invoke-direct {v1}, Lt5/g;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lt5/h$a;-><init>(Lt5/h$a$a;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lt5/h;->p:Lt5/h$a;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lt5/h;->k:I

    .line 6
    .line 7
    const v0, 0x1b8a0

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lt5/h;->m:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lt5/h;->g()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Lt5/h;->h()Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private f(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lt5/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 7
    .line 8
    :pswitch_1
    new-instance p1, Lv5/b;

    .line 9
    .line 10
    invoke-direct {p1}, Lv5/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :pswitch_2
    sget-object p1, Lt5/h;->p:Lt5/h$a;

    .line 19
    .line 20
    new-array v0, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lt5/h$a;->a([Ljava/lang/Object;)Lt5/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :pswitch_3
    new-instance p1, Ly5/a;

    .line 34
    .line 35
    invoke-direct {p1}, Ly5/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :pswitch_4
    new-instance p1, Le6/b;

    .line 44
    .line 45
    invoke-direct {p1}, Le6/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :pswitch_5
    new-instance p1, Ld6/h0;

    .line 54
    .line 55
    iget v0, p0, Lt5/h;->k:I

    .line 56
    .line 57
    iget v1, p0, Lt5/h;->l:I

    .line 58
    .line 59
    iget v2, p0, Lt5/h;->m:I

    .line 60
    .line 61
    invoke-direct {p1, v0, v1, v2}, Ld6/h0;-><init>(III)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :pswitch_6
    new-instance p1, Ld6/a0;

    .line 70
    .line 71
    invoke-direct {p1}, Ld6/a0;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :pswitch_7
    new-instance p1, Lc6/d;

    .line 80
    .line 81
    invoke-direct {p1}, Lc6/d;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :pswitch_8
    new-instance p1, Lb6/g;

    .line 90
    .line 91
    iget v0, p0, Lt5/h;->i:I

    .line 92
    .line 93
    invoke-direct {p1, v0}, Lb6/g;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance p1, Lb6/k;

    .line 100
    .line 101
    iget v0, p0, Lt5/h;->h:I

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lb6/k;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :pswitch_9
    new-instance p1, La6/f;

    .line 112
    .line 113
    iget v2, p0, Lt5/h;->j:I

    .line 114
    .line 115
    iget-boolean v3, p0, Lt5/h;->b:Z

    .line 116
    .line 117
    or-int/2addr v2, v3

    .line 118
    iget-boolean v3, p0, Lt5/h;->c:Z

    .line 119
    .line 120
    if-eqz v3, :cond_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move v0, v1

    .line 124
    :goto_0
    or-int/2addr v0, v2

    .line 125
    invoke-direct {p1, v0}, La6/f;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_a
    new-instance p1, Lz5/e;

    .line 134
    .line 135
    iget v0, p0, Lt5/h;->g:I

    .line 136
    .line 137
    invoke-direct {p1, v0}, Lz5/e;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :pswitch_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/b;

    .line 145
    .line 146
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :pswitch_c
    sget-object p1, Lt5/h;->o:Lt5/h$a;

    .line 154
    .line 155
    iget v0, p0, Lt5/h;->f:I

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Lt5/h$a;->a([Ljava/lang/Object;)Lt5/k;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_1

    .line 170
    .line 171
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_1
    new-instance p1, Lw5/d;

    .line 176
    .line 177
    iget v0, p0, Lt5/h;->f:I

    .line 178
    .line 179
    invoke-direct {p1, v0}, Lw5/d;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :pswitch_d
    new-instance p1, Lu5/b;

    .line 187
    .line 188
    iget v2, p0, Lt5/h;->e:I

    .line 189
    .line 190
    iget-boolean v3, p0, Lt5/h;->b:Z

    .line 191
    .line 192
    or-int/2addr v2, v3

    .line 193
    iget-boolean v3, p0, Lt5/h;->c:Z

    .line 194
    .line 195
    if-eqz v3, :cond_2

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_2
    move v0, v1

    .line 199
    :goto_1
    or-int/2addr v0, v2

    .line 200
    invoke-direct {p1, v0}, Lu5/b;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :pswitch_e
    new-instance p1, Ld6/h;

    .line 208
    .line 209
    iget v2, p0, Lt5/h;->d:I

    .line 210
    .line 211
    iget-boolean v3, p0, Lt5/h;->b:Z

    .line 212
    .line 213
    or-int/2addr v2, v3

    .line 214
    iget-boolean v3, p0, Lt5/h;->c:Z

    .line 215
    .line 216
    if-eqz v3, :cond_3

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    move v0, v1

    .line 220
    :goto_2
    or-int/2addr v0, v2

    .line 221
    invoke-direct {p1, v0}, Ld6/h;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :pswitch_f
    new-instance p1, Ld6/e;

    .line 229
    .line 230
    invoke-direct {p1}, Ld6/e;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :pswitch_10
    new-instance p1, Ld6/b;

    .line 238
    .line 239
    invoke-direct {p1}, Ld6/b;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_4
    :goto_3
    return-void

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static g()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lt5/k;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-string v4, "isAvailable"

    .line 13
    .line 14
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-class v1, Lt5/k;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_0
    return-object v3
.end method

.method private static h()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lt5/k;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lt5/k;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lt5/k;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lt5/h;->d(Landroid/net/Uri;Ljava/util/Map;)[Lt5/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public declared-synchronized d(Landroid/net/Uri;Ljava/util/Map;)[Lt5/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lt5/k;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    sget-object v1, Lt5/h;->n:[I

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lb7/k;->b(Ljava/util/Map;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p2, v0}, Lt5/h;->f(ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    invoke-static {p1}, Lb7/k;->c(Landroid/net/Uri;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lt5/h;->f(ILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-ge v3, v2, :cond_3

    .line 37
    .line 38
    aget v4, v1, v3

    .line 39
    .line 40
    if-eq v4, p2, :cond_2

    .line 41
    .line 42
    if-eq v4, p1, :cond_2

    .line 43
    .line 44
    invoke-direct {p0, v4, v0}, Lt5/h;->f(ILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    new-array p1, p1, [Lt5/k;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Lt5/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1
.end method
