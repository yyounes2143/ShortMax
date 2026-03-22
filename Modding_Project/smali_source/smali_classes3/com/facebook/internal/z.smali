.class public final Lcom/facebook/internal/z;
.super Ljava/lang/Object;
.source "ImageDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/z$a;,
        Lcom/facebook/internal/z$b;,
        Lcom/facebook/internal/z$c;,
        Lcom/facebook/internal/z$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageDownloader.kt\ncom/facebook/internal/ImageDownloader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final c:Lcom/facebook/internal/b1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lcom/facebook/internal/b1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/z$d;",
            "Lcom/facebook/internal/z$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/internal/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/z;->a:Lcom/facebook/internal/z;

    .line 7
    .line 8
    new-instance v0, Lcom/facebook/internal/b1;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/b1;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/facebook/internal/z;->c:Lcom/facebook/internal/b1;

    .line 18
    .line 19
    new-instance v0, Lcom/facebook/internal/b1;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2, v3, v2}, Lcom/facebook/internal/b1;-><init>(ILjava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/b1;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/facebook/internal/z;->e:Ljava/util/Map;

    .line 32
    .line 33
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

.method public static synthetic a(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/internal/z;->l(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/facebook/internal/z;Lcom/facebook/internal/z$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/z;->e(Lcom/facebook/internal/z$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/facebook/internal/z;Lcom/facebook/internal/z$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/z;->m(Lcom/facebook/internal/z$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lcom/facebook/internal/a0;)Z
    .locals 4
    .param p0    # Lcom/facebook/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/internal/z$d;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/internal/a0;->c()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/facebook/internal/a0;->b()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/z$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/facebook/internal/z;->e:Ljava/util/Map;

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/facebook/internal/z$c;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/facebook/internal/z$c;->b()Lcom/facebook/internal/b1$b;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/facebook/internal/b1$b;->cancel()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v1, v3}, Lcom/facebook/internal/z$c;->d(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return v3

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw v0
.end method

.method private final e(Lcom/facebook/internal/z$d;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/internal/z$d;->b()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v5, 0xc8

    .line 36
    .line 37
    if-eq v4, v5, :cond_4

    .line 38
    .line 39
    const/16 v5, 0x12d

    .line 40
    .line 41
    if-eq v4, v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x12e

    .line 44
    .line 45
    if-eq v4, v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    new-instance v6, Ljava/io/InputStreamReader;

    .line 59
    .line 60
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    .line 62
    .line 63
    const/16 v7, 0x80

    .line 64
    .line 65
    new-array v8, v7, [C

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v6, v8, v0, v7}, Ljava/io/InputStreamReader;->read([CII)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-lez v9, :cond_0

    .line 72
    .line 73
    invoke-virtual {v5, v8, v0, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    move-object v1, v4

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :catch_0
    move-exception v5

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_0
    invoke-static {v6}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v6, "Unexpected error while downloading an image."

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :goto_1
    new-instance v6, Lcom/facebook/FacebookException;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-direct {v6, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    move-object v5, v1

    .line 103
    :goto_2
    move-object v1, v4

    .line 104
    goto :goto_5

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :catch_1
    move-exception v5

    .line 109
    :goto_3
    move-object v4, v1

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_2
    :try_start_3
    const-string v2, "location"

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_3

    .line 123
    .line 124
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/facebook/internal/z$d;->b()Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4, v2}, Lcom/facebook/internal/p0;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/facebook/internal/z;->n(Lcom/facebook/internal/z$d;)Lcom/facebook/internal/z$c;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/facebook/internal/z$c;->c()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_3

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/facebook/internal/z$c;->a()Lcom/facebook/internal/a0;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    new-instance v5, Lcom/facebook/internal/z$d;

    .line 152
    .line 153
    const-string v6, "redirectUri"

    .line 154
    .line 155
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/facebook/internal/z$d;->a()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-direct {v5, v2, v6}, Lcom/facebook/internal/z$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v4, v5, v0}, Lcom/facebook/internal/z;->g(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :catch_2
    move-exception v5

    .line 170
    move v2, v0

    .line 171
    goto :goto_3

    .line 172
    :cond_3
    :goto_4
    move v2, v0

    .line 173
    move-object v5, v1

    .line 174
    move-object v6, v5

    .line 175
    goto :goto_5

    .line 176
    :cond_4
    :try_start_4
    invoke-static {v3}, Lcom/facebook/internal/c0;->c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 177
    .line 178
    .line 179
    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :try_start_5
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 181
    .line 182
    .line 183
    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    move-object v6, v1

    .line 185
    goto :goto_2

    .line 186
    :goto_5
    invoke-static {v1}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 190
    .line 191
    .line 192
    move-object v1, v5

    .line 193
    goto :goto_8

    .line 194
    :catchall_2
    move-exception p1

    .line 195
    move-object v3, v1

    .line 196
    goto :goto_6

    .line 197
    :catch_3
    move-exception v5

    .line 198
    move-object v3, v1

    .line 199
    move-object v4, v3

    .line 200
    goto :goto_7

    .line 201
    :goto_6
    invoke-static {v1}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :goto_7
    invoke-static {v4}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 212
    .line 213
    .line 214
    move-object v6, v5

    .line 215
    :goto_8
    if-eqz v2, :cond_5

    .line 216
    .line 217
    invoke-direct {p0, p1, v6, v1, v0}, Lcom/facebook/internal/z;->k(Lcom/facebook/internal/z$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 218
    .line 219
    .line 220
    :cond_5
    return-void
.end method

.method public static final f(Lcom/facebook/internal/a0;)V
    .locals 4
    .param p0    # Lcom/facebook/internal/a0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/facebook/internal/z$d;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/internal/a0;->c()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/facebook/internal/a0;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/z$d;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/facebook/internal/z;->e:Ljava/util/Map;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/facebook/internal/z$c;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Lcom/facebook/internal/z$c;->e(Lcom/facebook/internal/a0;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    invoke-virtual {v2, p0}, Lcom/facebook/internal/z$c;->d(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/facebook/internal/z$c;->b()Lcom/facebook/internal/b1$b;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0}, Lcom/facebook/internal/b1$b;->a()V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object v2, Lcom/facebook/internal/z;->a:Lcom/facebook/internal/z;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/facebook/internal/a0;->d()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {v2, p0, v0, v3}, Lcom/facebook/internal/z;->g(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Z)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    :cond_2
    :goto_0
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v1

    .line 63
    throw p0
.end method

.method private final g(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/internal/z;->d:Lcom/facebook/internal/b1;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/internal/z$a;

    .line 4
    .line 5
    invoke-direct {v1, p2, p3}, Lcom/facebook/internal/z$a;-><init>(Lcom/facebook/internal/z$d;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/z;->i(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Lcom/facebook/internal/b1;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final h(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/internal/z;->c:Lcom/facebook/internal/b1;

    .line 2
    .line 3
    new-instance v1, Lcom/facebook/internal/z$b;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lcom/facebook/internal/z$b;-><init>(Lcom/facebook/internal/z$d;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/z;->i(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Lcom/facebook/internal/b1;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final i(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;Lcom/facebook/internal/b1;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/internal/z;->e:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/facebook/internal/z$c;

    .line 5
    .line 6
    invoke-direct {v1, p1}, Lcom/facebook/internal/z$c;-><init>(Lcom/facebook/internal/a0;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p3, p4, v2, p1, p2}, Lcom/facebook/internal/b1;->f(Lcom/facebook/internal/b1;Ljava/lang/Runnable;ZILjava/lang/Object;)Lcom/facebook/internal/b1$b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/facebook/internal/z$c;->f(Lcom/facebook/internal/b1$b;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0

    .line 28
    throw p1
.end method

.method private final declared-synchronized j()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/internal/z;->b:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/facebook/internal/z;->b:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/internal/z;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method private final k(Lcom/facebook/internal/z$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/z;->n(Lcom/facebook/internal/z$d;)Lcom/facebook/internal/z$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/facebook/internal/z$c;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/internal/z$c;->a()Lcom/facebook/internal/a0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/facebook/internal/a0;->a()Lcom/facebook/internal/a0$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    move-object v6, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    if-eqz v6, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/facebook/internal/z;->j()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/facebook/internal/y;

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    move-object v3, p2

    .line 39
    move v4, p4

    .line 40
    move-object v5, p3

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/facebook/internal/y;-><init>(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private static final l(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/a0$b;)V
    .locals 1

    .line 1
    const-string v0, "$request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/internal/b0;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/internal/b0;-><init>(Lcom/facebook/internal/a0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, v0}, Lcom/facebook/internal/a0$b;->a(Lcom/facebook/internal/b0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final m(Lcom/facebook/internal/z$d;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/internal/z$d;->b()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/facebook/internal/p0;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {p2}, Lcom/facebook/internal/c0;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, v0

    .line 24
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/facebook/internal/z$d;->b()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/facebook/internal/c0;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p2}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/facebook/internal/z;->k(Lcom/facebook/internal/z$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/internal/z;->n(Lcom/facebook/internal/z$d;)Lcom/facebook/internal/z$c;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/facebook/internal/z$c;->a()Lcom/facebook/internal/a0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_4
    if-eqz p2, :cond_5

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/facebook/internal/z$c;->c()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_5

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/z;->h(Lcom/facebook/internal/a0;Lcom/facebook/internal/z$d;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void
.end method

.method private final n(Lcom/facebook/internal/z$d;)Lcom/facebook/internal/z$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/z;->e:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/internal/z$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    .line 14
    throw p1
.end method
