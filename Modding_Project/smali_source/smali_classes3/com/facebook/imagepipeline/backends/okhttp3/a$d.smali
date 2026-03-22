.class public final Lcom/facebook/imagepipeline/backends/okhttp3/a$d;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/backends/okhttp3/a;->k(Lcom/facebook/imagepipeline/backends/okhttp3/a$b;Lcom/facebook/imagepipeline/producers/v0$a;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/backends/okhttp3/a$b;

.field final synthetic b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/v0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/backends/okhttp3/a$b;Lcom/facebook/imagepipeline/backends/okhttp3/a;Lcom/facebook/imagepipeline/producers/v0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->a:Lcom/facebook/imagepipeline/backends/okhttp3/a$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->c:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->c:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 14
    .line 15
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->g(Lcom/facebook/imagepipeline/backends/okhttp3/a;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/v0$a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->a:Lcom/facebook/imagepipeline/backends/okhttp3/a$b;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, v0, Lcom/facebook/imagepipeline/backends/okhttp3/a$b;->g:J

    .line 18
    .line 19
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->c:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->a:Lcom/facebook/imagepipeline/backends/okhttp3/a$b;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "Unexpected HTTP code "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v1, v3, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->h(Lcom/facebook/imagepipeline/backends/okhttp3/a;Ljava/lang/String;Lokhttp3/Response;)Ljava/io/IOException;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v1, p1, p2, v2}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->g(Lcom/facebook/imagepipeline/backends/okhttp3/a;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/v0$a;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :catch_0
    move-exception p2

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    sget-object v4, Ls3/b;->c:Ls3/b$a;

    .line 67
    .line 68
    const-string v5, "Content-Range"

    .line 69
    .line 70
    invoke-virtual {p2, v5}, Lokhttp3/Response;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {v4, p2}, Ls3/b$a;->c(Ljava/lang/String;)Ls3/b;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    iget v4, p2, Ls3/b;->a:I

    .line 81
    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    iget v4, p2, Ls3/b;->b:I

    .line 85
    .line 86
    const v5, 0x7fffffff

    .line 87
    .line 88
    .line 89
    if-eq v4, v5, :cond_2

    .line 90
    .line 91
    :cond_1
    invoke-virtual {v3, p2}, Lcom/facebook/imagepipeline/producers/c0;->j(Ls3/b;)V

    .line 92
    .line 93
    .line 94
    const/16 p2, 0x8

    .line 95
    .line 96
    invoke-virtual {v3, p2}, Lcom/facebook/imagepipeline/producers/c0;->i(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long p2, v3, v5

    .line 106
    .line 107
    if-gez p2, :cond_3

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    long-to-int p2, v3

    .line 116
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v2, v3, p2}, Lcom/facebook/imagepipeline/producers/v0$a;->b(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_1
    :try_start_1
    invoke-static {v1, p1, p2, v2}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->g(Lcom/facebook/imagepipeline/backends/okhttp3/a;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/v0$a;)V

    .line 125
    .line 126
    .line 127
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    invoke-static {v0, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    :catchall_1
    move-exception p2

    .line 136
    invoke-static {v0, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p2

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->b:Lcom/facebook/imagepipeline/backends/okhttp3/a;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v2, "Response body null: "

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1, p2}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->h(Lcom/facebook/imagepipeline/backends/okhttp3/a;Ljava/lang/String;Lokhttp3/Response;)Ljava/io/IOException;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    iget-object v1, p0, Lcom/facebook/imagepipeline/backends/okhttp3/a$d;->c:Lcom/facebook/imagepipeline/producers/v0$a;

    .line 164
    .line 165
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/backends/okhttp3/a;->g(Lcom/facebook/imagepipeline/backends/okhttp3/a;Lokhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/v0$a;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    return-void
.end method
