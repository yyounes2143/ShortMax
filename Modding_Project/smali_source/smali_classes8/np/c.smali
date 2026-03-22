.class public Lnp/c;
.super Ljava/lang/Object;
.source "DownloadImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnp/c$c;,
        Lnp/c$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Lnp/c$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnp/c$a;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lnp/c$a;-><init>(Lnp/c;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lnp/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lnp/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lnp/c;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lnp/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lnp/c;)Lnp/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lnp/c;->e:Lnp/c$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lnp/c;Lnp/c$c;)Lnp/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/c;->e:Lnp/c$c;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lnp/c;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/c;->d:Ljava/io/File;

    .line 2
    .line 3
    return-object p1
.end method

.method private h([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lnp/c;->o([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {v1}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    move-object v0, v1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p1

    .line 42
    move-object v1, v0

    .line 43
    :goto_0
    :try_start_2
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    .line 13
    iget-object v1, p0, Lnp/c;->d:Ljava/io/File;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    iget-object v3, p0, Lnp/c;->d:Ljava/io/File;

    .line 21
    .line 22
    invoke-static {p2}, Lio/bidmachine/core/g;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    cmp-long v3, v3, v5

    .line 42
    .line 43
    if-lez v3, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lnp/c;->n(Landroid/net/Uri;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    move-object v1, v2

    .line 54
    :cond_1
    const/16 v3, 0x4e20

    .line 55
    .line 56
    :try_start_0
    invoke-static {p2, v3}, Lnp/b;->a(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .line 68
    .line 69
    const/16 v2, 0x2000

    .line 70
    .line 71
    :try_start_2
    new-array v2, v2, [B

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v5, -0x1

    .line 78
    const/4 v6, 0x0

    .line 79
    if-eq v4, v5, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    :goto_1
    move-object v2, p2

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    array-length v4, v2

    .line 93
    invoke-static {v2, v6, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-direct {p0, v1, v2, v0}, Lnp/c;->k(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lnp/c;->n(Landroid/net/Uri;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-static {p1}, Lop/a;->c(Landroid/content/Context;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {p1}, Lop/a;->b(I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {v0, p1, v1}, Lop/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    .line 123
    invoke-direct {p0, v2, v0}, Lnp/c;->h([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lnp/c;->m(Landroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-direct {p0}, Lnp/c;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    move-object v3, v2

    .line 148
    goto :goto_1

    .line 149
    :catchall_2
    move-exception p1

    .line 150
    move-object v3, v2

    .line 151
    :goto_3
    :try_start_3
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lnp/c;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 155
    .line 156
    .line 157
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 164
    .line 165
    .line 166
    :goto_4
    return-void

    .line 167
    :catchall_3
    move-exception p1

    .line 168
    invoke-static {v3}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 175
    .line 176
    .line 177
    throw p1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Lnp/c$b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lnp/c$b;

    .line 2
    .line 3
    new-instance v1, Lnp/c;

    .line 4
    .line 5
    invoke-direct {v1}, Lnp/c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, Lnp/c$b;-><init>(Lnp/c;Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private k(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-direct {p0, p2, p3, v1}, Lnp/c;->o([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    move-object v0, v1

    .line 22
    goto :goto_2

    .line 23
    :catch_0
    move-exception p1

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :catch_1
    move-exception p1

    .line 29
    :goto_0
    :try_start_2
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void

    .line 39
    :goto_2
    invoke-static {v0}, Lio/bidmachine/core/g;->p(Ljava/io/Flushable;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private m(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private n(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lnp/c;->a:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private o([BLandroid/graphics/BitmapFactory$Options;Ljava/io/OutputStream;)V
    .locals 2
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 8
    .line 9
    const/16 v0, 0x55

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnp/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lnp/c;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/core/g;->K(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lnp/c;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, " "

    .line 21
    .line 22
    const-string v2, "%20"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lnp/c;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lnp/c;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p0, v1, v0}, Lnp/c;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-direct {p0}, Lnp/c;->l()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
