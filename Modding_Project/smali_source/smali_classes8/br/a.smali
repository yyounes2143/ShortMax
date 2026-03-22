.class public final Lbr/a;
.super Ljava/lang/Object;
.source "NetworkUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lbr/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbr/a;->a:Lbr/a;

    .line 7
    .line 8
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

.method public static final a(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "nextUrl"

    .line 2
    .line 3
    const-string v1, "urlString"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const-string v5, "url.toString()"

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :catchall_0
    move-object v1, v3

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :pswitch_1
    :try_start_3
    const-string p1, "Location"

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_a

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_0

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lyq/r;->p(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x2

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v4, v6, v1}, Lbr/a;->c(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_1
    :try_start_4
    new-instance v5, Ljava/net/URI;

    .line 99
    .line 100
    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-nez v5, :cond_9

    .line 108
    .line 109
    :try_start_5
    new-instance v5, Ljava/net/URL;

    .line 110
    .line 111
    invoke-direct {v5, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v5, "URL(url, nextUrl).toString()"

    .line 119
    .line 120
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const/4 v7, 0x1

    .line 128
    sub-int/2addr v5, v7

    .line 129
    move v8, v4

    .line 130
    move v9, v8

    .line 131
    :goto_0
    if-gt v8, v5, :cond_7

    .line 132
    .line 133
    if-nez v9, :cond_2

    .line 134
    .line 135
    move v10, v8

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move v10, v5

    .line 138
    :goto_1
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const/16 v11, 0x20

    .line 143
    .line 144
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-gtz v10, :cond_3

    .line 149
    .line 150
    move v10, v7

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move v10, v4

    .line 153
    :goto_2
    if-nez v9, :cond_5

    .line 154
    .line 155
    if-nez v10, :cond_4

    .line 156
    .line 157
    move v9, v7

    .line 158
    goto :goto_0

    .line 159
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    if-nez v10, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_7
    :goto_3
    add-int/2addr v5, v7

    .line 169
    invoke-interface {v2, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_8

    .line 182
    .line 183
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 187
    .line 188
    .line 189
    return-object p1

    .line 190
    :cond_8
    :try_start_6
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v4, v6, v1}, Lbr/a;->c(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :catch_0
    :try_start_7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :cond_9
    :try_start_8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_a
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 220
    .line 221
    .line 222
    invoke-static {v3}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 223
    .line 224
    .line 225
    return-object p1

    .line 226
    :catchall_1
    :goto_5
    invoke-static {v1}, Lbr/b;->a(Ljava/net/HttpURLConnection;)V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic c(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x1f4

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lbr/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
