.class public final Lcom/facebook/internal/p0;
.super Ljava/lang/Object;
.source "UrlRedirectCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Lcom/facebook/internal/w;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/p0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/p0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/p0;->a:Lcom/facebook/internal/p0;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/internal/p0;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "UrlRedirectCache"

    .line 21
    .line 22
    :cond_0
    sput-object v0, Lcom/facebook/internal/p0;->b:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "_Redirect"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/facebook/internal/p0;->c:Ljava/lang/String;

    .line 42
    .line 43
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

.method public static final a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p0    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/p0;->b()Lcom/facebook/internal/w;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v2, "fromUri.toString()"

    .line 16
    .line 17
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/facebook/internal/p0;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, p0, v2}, Lcom/facebook/internal/w;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "toUri.toString()"

    .line 31
    .line 32
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "this as java.lang.String).getBytes(charset)"

    .line 42
    .line 43
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_1
    sget-object p1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 57
    .line 58
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 59
    .line 60
    sget-object v2, Lcom/facebook/internal/p0;->b:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "IOException when accessing cache: "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const/4 v3, 0x4

    .line 84
    invoke-virtual {p1, v1, v3, v2, p0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_1
    return-void

    .line 89
    :goto_2
    invoke-static {v0}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    :goto_3
    return-void
.end method

.method public static final declared-synchronized b()Lcom/facebook/internal/w;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/internal/p0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/internal/p0;->d:Lcom/facebook/internal/w;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/facebook/internal/w;

    .line 9
    .line 10
    sget-object v2, Lcom/facebook/internal/p0;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Lcom/facebook/internal/w$e;

    .line 13
    .line 14
    invoke-direct {v3}, Lcom/facebook/internal/w$e;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/w;-><init>(Ljava/lang/String;Lcom/facebook/internal/w$e;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sput-object v1, Lcom/facebook/internal/p0;->d:Lcom/facebook/internal/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method

.method public static final c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "uri.toString()"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/p0;->b()Lcom/facebook/internal/w;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lcom/facebook/internal/p0;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, p0, v3}, Lcom/facebook/internal/w;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v5, v0

    .line 34
    move v6, v4

    .line 35
    :goto_0
    if-eqz v3, :cond_4

    .line 36
    .line 37
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    .line 38
    .line 39
    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x80

    .line 43
    .line 44
    :try_start_2
    new-array v5, v3, [C

    .line 45
    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v5, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    :goto_1
    if-lez v8, :cond_1

    .line 56
    .line 57
    invoke-virtual {v7, v5, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v5, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    move-object v0, v6

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :catch_0
    move-exception p0

    .line 70
    move-object v5, v6

    .line 71
    goto :goto_4

    .line 72
    :cond_1
    invoke-static {v6}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v5, "urlBuilder.toString()"

    .line 80
    .line 81
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v7, 0x1

    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    move-object v5, v6

    .line 98
    move v6, v7

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    sget-object p0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 101
    .line 102
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 103
    .line 104
    sget-object v2, Lcom/facebook/internal/p0;->b:Ljava/lang/String;

    .line 105
    .line 106
    const-string v3, "A loop detected in UrlRedirectCache"

    .line 107
    .line 108
    const/4 v4, 0x6

    .line 109
    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-static {v6}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 113
    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_3
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    sget-object p0, Lcom/facebook/internal/p0;->c:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v2, v3, p0}, Lcom/facebook/internal/w;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 122
    .line 123
    .line 124
    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    move-object v5, v6

    .line 126
    move v6, v7

    .line 127
    move-object v9, v3

    .line 128
    move-object v3, p0

    .line 129
    move-object p0, v9

    .line 130
    goto :goto_0

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    move-object v0, v5

    .line 133
    goto :goto_6

    .line 134
    :catch_1
    move-exception p0

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 137
    .line 138
    :try_start_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    invoke-static {v5}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_5
    :goto_3
    invoke-static {v5}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :catchall_2
    move-exception p0

    .line 151
    goto :goto_6

    .line 152
    :catch_2
    move-exception p0

    .line 153
    move-object v5, v0

    .line 154
    :goto_4
    :try_start_5
    sget-object v1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 155
    .line 156
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 157
    .line 158
    sget-object v3, Lcom/facebook/internal/p0;->b:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v6, "IOException when accessing cache: "

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    const/4 v4, 0x4

    .line 182
    invoke-virtual {v1, v2, v4, v3, p0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :goto_5
    return-object v0

    .line 187
    :goto_6
    invoke-static {v0}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 188
    .line 189
    .line 190
    throw p0
.end method
