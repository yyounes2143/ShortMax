.class public Lcom/google/firebase/appcheck/internal/d;
.super Ljava/lang/Object;
.source "NetworkClient.java"


# static fields
.field private static final f:Ljava/lang/String; = "com.google.firebase.appcheck.internal.d"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Lu8/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/m;Lw8/b;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lw8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/m;",
            "Lw8/b<",
            "Lu8/h;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/d;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {p2}, Lcom/google/firebase/m;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/d;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/d;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lcom/google/firebase/m;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/d;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 14
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/d;->e:Lw8/b;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FirebaseOptions#getProjectId cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/google/firebase/f;)V
    .locals 2
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lp7/e;->d(Lcom/google/firebase/f;)Lp7/e;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appcheck/internal/b;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/b;->m()Lw8/b;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/firebase/appcheck/internal/d;-><init>(Landroid/content/Context;Lcom/google/firebase/m;Lw8/b;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/d;->a:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/google/firebase/appcheck/internal/d;->f:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Could not get fingerprint hash for package: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/firebase/appcheck/internal/d;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    :goto_0
    sget-object v2, Lcom/google/firebase/appcheck/internal/d;->f:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "No such package: "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/google/firebase/appcheck/internal/d;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeRecaptchaEnterpriseToken?key=%s"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Unknown token type."

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    const-string p0, "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangePlayIntegrityToken?key=%s"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeDebugToken?key=%s"

    .line 25
    .line 26
    return-object p0
.end method

.method private static g(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x12c

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private h(Ljava/net/URL;[BLq7/l;Z)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lq7/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/FirebaseException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/appcheck/internal/d;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 7
    .line 8
    .line 9
    array-length v0, p2

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "Content-Type"

    .line 14
    .line 15
    const-string v1, "application/json"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/d;->e()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v1, "X-Firebase-Client"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p2

    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    :goto_0
    const-string v0, "X-Android-Package"

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/d;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "X-Android-Cert"

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/d;->d()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    array-length v2, p2

    .line 62
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    array-length v1, p2

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-static {p2}, Lcom/google/firebase/appcheck/internal/d;->g(I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/io/BufferedReader;

    .line 98
    .line 99
    new-instance v3, Ljava/io/InputStreamReader;

    .line 100
    .line 101
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p2

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p2}, Lcom/google/firebase/appcheck/internal/d;->g(I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    if-eqz p4, :cond_3

    .line 135
    .line 136
    invoke-virtual {p3}, Lq7/l;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_4
    :try_start_5
    invoke-virtual {p3, p2}, Lq7/l;->d(I)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lq7/k;->a(Ljava/lang/String;)Lq7/k;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-instance p3, Lcom/google/firebase/FirebaseException;

    .line 151
    .line 152
    new-instance p4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v0, "Error returned from API. code: "

    .line 158
    .line 159
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Lq7/k;->b()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, " body: "

    .line 170
    .line 171
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Lq7/k;->c()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p3, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catchall_2
    move-exception p3

    .line 194
    :try_start_7
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    :goto_4
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    :catchall_3
    move-exception p2

    .line 199
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catchall_4
    move-exception p3

    .line 204
    :try_start_9
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    :goto_5
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 208
    :goto_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    .line 210
    .line 211
    throw p2
.end method


# virtual methods
.method a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    return-object p1
.end method

.method public b([BILq7/l;)Lq7/a;
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lq7/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/FirebaseException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lq7/l;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/net/URL;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/firebase/appcheck/internal/d;->f(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/d;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/d;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/firebase/appcheck/internal/d;->b:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/google/firebase/appcheck/internal/d;->h(Ljava/net/URL;[BLq7/l;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lq7/a;->a(Ljava/lang/String;)Lq7/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p1, Lcom/google/firebase/FirebaseException;

    .line 41
    .line 42
    const-string p2, "Too many attempts."

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public c([BLq7/l;)Ljava/lang/String;
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lq7/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/FirebaseException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lq7/l;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/net/URL;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/d;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/d;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/firebase/appcheck/internal/d;->b:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:generatePlayIntegrityChallenge?key=%s"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/firebase/appcheck/internal/d;->h(Ljava/net/URL;[BLq7/l;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lcom/google/firebase/FirebaseException;

    .line 35
    .line 36
    const-string p2, "Too many attempts."

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method e()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/d;->e:Lw8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lw8/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu8/h;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0}, Lu8/h;->b()Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    sget-object v0, Lcom/google/firebase/appcheck/internal/d;->f:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "Unable to get heartbeats!"

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v1
.end method
