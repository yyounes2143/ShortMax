.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "Http2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONNECTION_PREFACE:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FLAGS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FLAG_ACK:I = 0x1

.field public static final FLAG_COMPRESSED:I = 0x20

.field public static final FLAG_END_HEADERS:I = 0x4

.field public static final FLAG_END_PUSH_PROMISE:I = 0x4

.field public static final FLAG_END_STREAM:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_PADDED:I = 0x8

.field public static final FLAG_PRIORITY:I = 0x20

.field private static final FRAME_NAMES:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field public static final INSTANCE:Lcom/applovin/shadow/okhttp3/internal/http2/Http2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CONTINUATION:I = 0x9

.field public static final TYPE_DATA:I = 0x0

.field public static final TYPE_GOAWAY:I = 0x7

.field public static final TYPE_HEADERS:I = 0x1

.field public static final TYPE_PING:I = 0x6

.field public static final TYPE_PRIORITY:I = 0x2

.field public static final TYPE_PUSH_PROMISE:I = 0x5

.field public static final TYPE_RST_STREAM:I = 0x3

.field public static final TYPE_SETTINGS:I = 0x4

.field public static final TYPE_WINDOW_UPDATE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->INSTANCE:Lcom/applovin/shadow/okhttp3/internal/http2/Http2;

    .line 7
    .line 8
    sget-object v0, Lcom/applovin/shadow/okio/ByteString;->Companion:Lcom/applovin/shadow/okio/ByteString$Companion;

    .line 9
    .line 10
    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/applovin/shadow/okio/ByteString;

    .line 17
    .line 18
    const-string v9, "WINDOW_UPDATE"

    .line 19
    .line 20
    const-string v10, "CONTINUATION"

    .line 21
    .line 22
    const-string v1, "DATA"

    .line 23
    .line 24
    const-string v2, "HEADERS"

    .line 25
    .line 26
    const-string v3, "PRIORITY"

    .line 27
    .line 28
    const-string v4, "RST_STREAM"

    .line 29
    .line 30
    const-string v5, "SETTINGS"

    .line 31
    .line 32
    const-string v6, "PUSH_PROMISE"

    .line 33
    .line 34
    const-string v7, "PING"

    .line 35
    .line 36
    const-string v8, "GOAWAY"

    .line 37
    .line 38
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 43
    .line 44
    const/16 v0, 0x40

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/String;

    .line 47
    .line 48
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 49
    .line 50
    const/16 v0, 0x100

    .line 51
    .line 52
    new-array v1, v0, [Ljava/lang/String;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    move v3, v2

    .line 56
    :goto_0
    if-ge v3, v0, :cond_0

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string/jumbo v5, "toBinaryString(it)"

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "%8s"

    .line 73
    .line 74
    invoke-static {v5, v4}, Lcom/applovin/shadow/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v10, 0x4

    .line 79
    const/4 v11, 0x0

    .line 80
    const/16 v7, 0x20

    .line 81
    .line 82
    const/16 v8, 0x30

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v1, v3

    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 95
    .line 96
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 97
    .line 98
    const-string v1, ""

    .line 99
    .line 100
    aput-object v1, v0, v2

    .line 101
    .line 102
    const-string v1, "END_STREAM"

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    aput-object v1, v0, v3

    .line 106
    .line 107
    filled-new-array {v3}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, "PADDED"

    .line 112
    .line 113
    const/16 v4, 0x8

    .line 114
    .line 115
    aput-object v3, v0, v4

    .line 116
    .line 117
    aget v3, v1, v2

    .line 118
    .line 119
    or-int/lit8 v5, v3, 0x8

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    aget-object v3, v0, v3

    .line 127
    .line 128
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v3, "|PADDED"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    aput-object v6, v0, v5

    .line 142
    .line 143
    const-string v5, "END_HEADERS"

    .line 144
    .line 145
    const/4 v6, 0x4

    .line 146
    aput-object v5, v0, v6

    .line 147
    .line 148
    const-string v5, "PRIORITY"

    .line 149
    .line 150
    const/16 v7, 0x20

    .line 151
    .line 152
    aput-object v5, v0, v7

    .line 153
    .line 154
    const-string v5, "END_HEADERS|PRIORITY"

    .line 155
    .line 156
    const/16 v8, 0x24

    .line 157
    .line 158
    aput-object v5, v0, v8

    .line 159
    .line 160
    filled-new-array {v6, v7, v8}, [I

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    move v5, v2

    .line 165
    :goto_1
    const/4 v6, 0x3

    .line 166
    if-ge v5, v6, :cond_1

    .line 167
    .line 168
    aget v6, v0, v5

    .line 169
    .line 170
    aget v7, v1, v2

    .line 171
    .line 172
    sget-object v8, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 173
    .line 174
    or-int v9, v7, v6

    .line 175
    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    aget-object v11, v8, v7

    .line 182
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const/16 v11, 0x7c

    .line 187
    .line 188
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    aget-object v12, v8, v6

    .line 192
    .line 193
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    aput-object v10, v8, v9

    .line 201
    .line 202
    or-int/2addr v9, v4

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    aget-object v7, v8, v7

    .line 209
    .line 210
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    aget-object v6, v8, v6

    .line 217
    .line 218
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    aput-object v6, v8, v9

    .line 229
    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 234
    .line 235
    array-length v0, v0

    .line 236
    :goto_2
    if-ge v2, v0, :cond_3

    .line 237
    .line 238
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 239
    .line 240
    aget-object v3, v1, v2

    .line 241
    .line 242
    if-nez v3, :cond_2

    .line 243
    .line 244
    sget-object v3, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 245
    .line 246
    aget-object v3, v3, v2

    .line 247
    .line 248
    aput-object v3, v1, v2

    .line 249
    .line 250
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final formatFlags(II)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_6

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p1, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    if-eq p1, v0, :cond_6

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    if-eq p1, v0, :cond_6

    .line 24
    .line 25
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    if-ge p2, v1, :cond_1

    .line 29
    .line 30
    aget-object v0, v0, p2

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    move-object v1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object v0, v0, p2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    const/4 v0, 0x5

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    and-int/lit8 v0, p2, 0x4

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v2, "HEADERS"

    .line 52
    .line 53
    const-string v3, "PUSH_PROMISE"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    if-nez p1, :cond_3

    .line 62
    .line 63
    and-int/lit8 p1, p2, 0x20

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 v5, 0x4

    .line 68
    const/4 v6, 0x0

    .line 69
    const-string v2, "PRIORITY"

    .line 70
    .line 71
    const-string v3, "COMPRESSED"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_3
    :goto_2
    return-object v1

    .line 79
    :cond_4
    const/4 p1, 0x1

    .line 80
    if-ne p2, p1, :cond_5

    .line 81
    .line 82
    const-string p1, "ACK"

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    sget-object p1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 86
    .line 87
    aget-object p1, p1, p2

    .line 88
    .line 89
    :goto_3
    return-object p1

    .line 90
    :cond_6
    sget-object p1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 91
    .line 92
    aget-object p1, p1, p2

    .line 93
    .line 94
    return-object p1
.end method

.method public final formattedType$okhttp(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "0x%02x"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method

.method public final frameLog(ZIIII)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p4}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->formattedType$okhttp(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p4, p5}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2;->formatFlags(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "<<"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, ">>"

    .line 15
    .line 16
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    filled-new-array {p1, p2, p3, v0, p4}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "%s 0x%08x %5d %-13s %s"

    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
