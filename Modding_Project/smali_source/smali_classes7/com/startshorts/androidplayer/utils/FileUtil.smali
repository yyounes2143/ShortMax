.class public final Lcom/startshorts/androidplayer/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtil.kt\ncom/startshorts/androidplayer/utils/FileUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/utils/FileUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/utils/FileUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

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

.method public static final synthetic a(Lcom/startshorts/androidplayer/utils/FileUtil;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/utils/FileUtil;->c(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c(Ljava/io/File;)Z
    .locals 6

    .line 1
    const-string v0, "FileUtil"

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v5, "deleteFile -> path("

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, ") result("

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const-string v2, "success"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v2, "failed"

    .line 41
    .line 42
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v0, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "deleteFile failed -> path("

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ") errMsg("

    .line 77
    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v3, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    :goto_2
    return p1
.end method


# virtual methods
.method public final b(Ljava/io/File;Z)V
    .locals 7
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 9
    .line 10
    new-instance v4, Lcom/startshorts/androidplayer/utils/FileUtil$deleteFile$1;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {v4, p1, p2}, Lcom/startshorts/androidplayer/utils/FileUtil$deleteFile$1;-><init>(Ljava/io/File;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "deleteFile"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/utils/FileUtil;->c(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fileName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "open(...)"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    new-instance v0, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/io/BufferedReader;

    .line 32
    .line 33
    const/16 p2, 0x2000

    .line 34
    .line 35
    invoke-direct {p1, v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lws/n;->h(Ljava/io/Reader;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {p1, v0}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    invoke-static {p1, p2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final e(Ljava/io/File;Ljava/lang/String;ZI)V
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "inputFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "savePath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 13
    .line 14
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    .line 23
    .line 24
    invoke-direct {p2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    array-length v2, v0

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance p3, Ljava/util/zip/ZipEntry;

    .line 43
    .line 44
    new-instance p4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p3, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    move-object v0, p2

    .line 74
    goto :goto_3

    .line 75
    :cond_0
    const/4 v2, -0x1

    .line 76
    if-ne p4, v2, :cond_1

    .line 77
    .line 78
    array-length p4, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    array-length v2, v0

    .line 81
    invoke-static {p4, v2}, Lkotlin/ranges/e;->j(II)I

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    :goto_0
    if-eqz p3, :cond_2

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/collections/n;->e1([Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    const/4 p3, 0x0

    .line 91
    :goto_1
    if-ge p3, p4, :cond_3

    .line 92
    .line 93
    aget-object v2, v0, p3

    .line 94
    .line 95
    sget-object v3, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v1, v2, v4, p2}, Lcom/startshorts/androidplayer/utils/FileUtil;->f(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    add-int/lit8 p3, p3, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    return-void

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    goto :goto_3

    .line 143
    :catchall_2
    move-exception p1

    .line 144
    move-object v1, v0

    .line 145
    :goto_3
    if-eqz v0, :cond_4

    .line 146
    .line 147
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 148
    .line 149
    .line 150
    :cond_4
    if-eqz v1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 153
    .line 154
    .line 155
    :catch_1
    :cond_5
    throw p1
.end method

.method public final f(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    .locals 2
    .param p1    # Ljava/util/zip/ZipOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/BufferedOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "base"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "bo"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    .line 23
    .line 24
    invoke-direct {v1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/io/FileInputStream;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->read()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/4 v0, -0x1

    .line 45
    if-eq p3, v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p4, p3}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p3

    .line 52
    :goto_1
    move-object v0, p1

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    return-void

    .line 61
    :catchall_1
    move-exception p3

    .line 62
    move-object p2, v0

    .line 63
    goto :goto_1

    .line 64
    :catchall_2
    move-exception p3

    .line 65
    move-object p2, v0

    .line 66
    :goto_2
    if-eqz v0, :cond_1

    .line 67
    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 69
    .line 70
    .line 71
    :cond_1
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 74
    .line 75
    .line 76
    :catch_1
    :cond_2
    throw p3
.end method
