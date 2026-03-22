.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChunkedMediaDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkedMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/ChunkedMediaDownloaderImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,296:1\n332#2:297\n225#2:298\n99#2,2:299\n22#2:301\n39#3:302\n*S KotlinDebug\n*F\n+ 1 ChunkedMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/ChunkedMediaDownloaderImpl\n*L\n190#1:297\n190#1:298\n190#1:299,2\n190#1:301\n278#1:302\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/error/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;Lcom/moloco/sdk/internal/services/g0;Lcom/moloco/sdk/internal/error/b;Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/error/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mediaConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connectivityService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "errorReportingService"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "httpClient"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->b:Lcom/moloco/sdk/internal/services/g0;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->c:Lcom/moloco/sdk/internal/error/b;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->d:Lio/ktor/client/HttpClient;

    .line 31
    .line 32
    const-string p1, "ChunkedMediaDownloader"

    .line 33
    .line 34
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic A(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic B(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->G(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lio/ktor/client/plugins/HttpRequestRetry$a;I)J
    .locals 0

    .line 1
    const-string p1, "$this$delayMillis"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p0, 0x64

    .line 7
    .line 8
    return-wide p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;)Lcom/moloco/sdk/internal/services/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->b:Lcom/moloco/sdk/internal/services/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->h(Ljava/io/File;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Ltr/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->i(Ljava/io/File;Ltr/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->l(Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/lang/String;JILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->m(Ljava/lang/String;JILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->C(Ljava/io/File;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;ILjava/lang/String;Lwr/g;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "$this$headers"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "bytes="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x2d

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->a()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    add-long/2addr p0, v1

    .line 32
    int-to-long v1, p3

    .line 33
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 45
    .line 46
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 47
    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v7, "Adding "

    .line 54
    .line 55
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v8, Lwr/i;->a:Lwr/i;

    .line 59
    .line 60
    invoke-virtual {v8}, Lwr/i;->s()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v9, " header: "

    .line 68
    .line 69
    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/16 v5, 0xc

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    move-object v0, p1

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Lwr/i;->s()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p5, p3, p0}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-eqz p4, :cond_0

    .line 96
    .line 97
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8}, Lwr/i;->o()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/16 v5, 0xc

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v4, 0x0

    .line 129
    move-object v0, p1

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Lwr/i;->o()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p5, p0, p4}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 141
    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Lwr/i;->l()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Lwr/i;->l()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p5, p0, p4}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0
.end method

.method public static final p(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "$this$retry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->u(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/f;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/f;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {p1, v3, v1, v4, v2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->c(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v4}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->o(IZ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->s(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/g;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/g;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->l(Lkotlin/jvm/functions/Function2;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Lio/ktor/client/plugins/HttpRequestRetry$b;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "$this$modifyRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p2, "Retry attempt #"

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$b;->b()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, " for "

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$b;->a()Lio/ktor/client/request/HttpRequestBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v6, 0xc

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method public static final synthetic r(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->t(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Ltr/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->u(Ljava/io/File;Ltr/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;)Lcom/moloco/sdk/internal/error/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->c:Lcom/moloco/sdk/internal/error/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->x(Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->D(Ljava/io/File;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final C(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->z(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v1, v0, v1}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    return-object v1
.end method

.method public final D(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->E(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v1, v0, v1}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    return-object v1
.end method

.method public final E(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ".range"

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final F(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->z(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final G(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->E(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 1
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
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->E(Ljava/io/File;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public b(Ljava/io/File;)Z
    .locals 1
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
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->E(Ljava/io/File;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/String;
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
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$b;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Ljava/lang/String;Ljava/io/File;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;Ljava/lang/String;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v8, p5}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final h(Ljava/io/File;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->F(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->G(Ljava/io/File;)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final i(Ljava/io/File;Ltr/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;
    .locals 12

    .line 1
    invoke-virtual {p2}, Ltr/c;->e()Lwr/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lwr/o;->e0()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x190

    .line 10
    .line 11
    const-string v2, ", status: "

    .line 12
    .line 13
    const-string v3, "Failed to fetch media from url: "

    .line 14
    .line 15
    const/16 v4, 0x1f4

    .line 16
    .line 17
    if-gt v1, v0, :cond_1

    .line 18
    .line 19
    if-ge v0, v4, :cond_1

    .line 20
    .line 21
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->e(Ltr/c;)Lsr/b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ltr/c;->e()Lwr/o;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const/16 v10, 0xc

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    if-eqz p3, :cond_0

    .line 67
    .line 68
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 69
    .line 70
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;

    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p3, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-gt v4, v0, :cond_3

    .line 82
    .line 83
    const/16 v1, 0x258

    .line 84
    .line 85
    if-ge v0, v1, :cond_3

    .line 86
    .line 87
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 88
    .line 89
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->e(Ltr/c;)Lsr/b;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ltr/c;->e()Lwr/o;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const/16 v9, 0xc

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v7, 0x0

    .line 128
    const/4 v8, 0x0

    .line 129
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    if-eqz p3, :cond_2

    .line 133
    .line 134
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 135
    .line 136
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;

    .line 137
    .line 138
    invoke-direct {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p3, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 148
    .line 149
    invoke-direct {p2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;-><init>(Ljava/io/File;)V

    .line 150
    .line 151
    .line 152
    move-object p1, p2

    .line 153
    :goto_0
    return-object p1
.end method

.method public final l(Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;

    .line 13
    .line 14
    iget v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->m:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->m:I

    .line 24
    .line 25
    :goto_0
    move-object v8, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;

    .line 28
    .line 29
    invoke-direct {v3, v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Lrs/c;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->k:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->m:I

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    const/4 v6, 0x1

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    if-eq v4, v6, :cond_2

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->j:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ltr/c;

    .line 52
    .line 53
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Ljava/io/File;

    .line 56
    .line 57
    iget-object v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_2
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->j:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Ltr/c;

    .line 77
    .line 78
    iget-object v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->i:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Ljava/io/File;

    .line 81
    .line 82
    iget-object v7, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->h:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;

    .line 85
    .line 86
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v11, v7

    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    move-object v4, v2

    .line 93
    move-object/from16 v2, v16

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 100
    .line 101
    iget-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v14, 0xc

    .line 104
    .line 105
    const/4 v15, 0x0

    .line 106
    const-string v11, "Range header not supported, downloading full file"

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v13, 0x0

    .line 110
    move-object v9, v2

    .line 111
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    iget-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 121
    .line 122
    const/16 v14, 0xc

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    const-string v11, "Deleting existing file and fully re-downloading it"

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    move-object v9, v2

    .line 130
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 134
    .line 135
    .line 136
    :cond_4
    iput-object v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->h:Ljava/lang/Object;

    .line 137
    .line 138
    move-object/from16 v2, p1

    .line 139
    .line 140
    iput-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->i:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->j:Ljava/lang/Object;

    .line 143
    .line 144
    iput v6, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->m:I

    .line 145
    .line 146
    invoke-static {v1, v8}, Lio/ktor/client/statement/HttpResponseKt;->a(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-ne v4, v3, :cond_5

    .line 151
    .line 152
    return-object v3

    .line 153
    :cond_5
    move-object v11, v0

    .line 154
    :goto_2
    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    invoke-static {v2, v7, v6, v7}, Lio/ktor/util/cio/FileChannelsKt;->b(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/e;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    iput-object v11, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->h:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->i:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->j:Ljava/lang/Object;

    .line 166
    .line 167
    iput v5, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$a;->m:I

    .line 168
    .line 169
    const/4 v9, 0x2

    .line 170
    const/4 v10, 0x0

    .line 171
    const-wide/16 v12, 0x0

    .line 172
    .line 173
    move-object v5, v6

    .line 174
    move-wide v6, v12

    .line 175
    invoke-static/range {v4 .. v10}, Lio/ktor/utils/io/ByteReadChannelKt;->c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-ne v4, v3, :cond_6

    .line 180
    .line 181
    return-object v3

    .line 182
    :cond_6
    move-object v3, v2

    .line 183
    move-object v2, v4

    .line 184
    move-object v4, v11

    .line 185
    :goto_3
    check-cast v2, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 188
    .line 189
    .line 190
    move-result-wide v5

    .line 191
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 192
    .line 193
    iget-object v8, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v4, "Downloaded full response: "

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lio/ktor/http/d;->b(Lwr/k;)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, " and saved to disk: "

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, " bytes, file size: "

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 226
    .line 227
    .line 228
    move-result-wide v3

    .line 229
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    const/16 v12, 0xc

    .line 237
    .line 238
    const/4 v13, 0x0

    .line 239
    const/4 v10, 0x0

    .line 240
    const/4 v11, 0x0

    .line 241
    invoke-static/range {v7 .. v13}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 245
    .line 246
    return-object v1
.end method

.method public final m(Ljava/lang/String;JILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ltr/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->d:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    new-instance v1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p1}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/c;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lio/ktor/client/plugins/c;->i(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/e;

    .line 20
    .line 21
    move-object v2, p1

    .line 22
    move-wide v3, p2

    .line 23
    move-object v5, p0

    .line 24
    move v6, p4

    .line 25
    move-object v7, p5

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/e;-><init>(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

    .line 30
    .line 31
    .line 32
    sget-object p1, Lwr/m;->b:Lwr/m$a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lwr/m$a;->a()Lwr/m;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    .line 42
    .line 43
    invoke-direct {p1, v1, v0}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p6}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final t(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->E(Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {p1, p2, v0, v1, v0}, Lws/f;->p(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final u(Ljava/io/File;Ltr/c;)V
    .locals 9

    .line 1
    invoke-interface {p2}, Lwr/k;->a()Lwr/f;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lwr/i;->l()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {p2, v1}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lwr/i;->l()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ": "

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/16 v6, 0xc

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->z(Ljava/io/File;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x2

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {p1, p2, v1, v0, v1}, Lws/f;->p(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "No "

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lwr/i;->l()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " in header"

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const/16 v7, 0xc

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->F(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public final x(Ljava/io/File;Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->m:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->m:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->k:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->m:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->j:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .line 48
    .line 49
    iget-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v7, Ljava/io/File;

    .line 52
    .line 53
    iget-object v8, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;

    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->i:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Ljava/io/File;

    .line 72
    .line 73
    iget-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->h:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v17, v4

    .line 81
    .line 82
    move-object v4, v1

    .line 83
    move-object/from16 v1, v17

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->h:Ljava/lang/Object;

    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    iput-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->i:Ljava/lang/Object;

    .line 94
    .line 95
    iput v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->m:I

    .line 96
    .line 97
    move-object/from16 v4, p2

    .line 98
    .line 99
    invoke-static {v4, v2}, Lio/ktor/client/statement/HttpResponseKt;->a(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-ne v4, v3, :cond_4

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_4
    move-object v7, v0

    .line 107
    :goto_1
    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .line 108
    .line 109
    move-object v8, v7

    .line 110
    move-object v7, v1

    .line 111
    :cond_5
    invoke-interface {v4}, Lio/ktor/utils/io/ByteReadChannel;->l()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->a()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    int-to-long v9, v1

    .line 124
    const-wide/16 v11, 0x2

    .line 125
    .line 126
    mul-long/2addr v9, v11

    .line 127
    iput-object v8, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->h:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->i:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->j:Ljava/lang/Object;

    .line 132
    .line 133
    iput v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b$c;->m:I

    .line 134
    .line 135
    invoke-interface {v4, v9, v10, v2}, Lio/ktor/utils/io/ByteReadChannel;->k(JLrs/c;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-ne v1, v3, :cond_6

    .line 140
    .line 141
    return-object v3

    .line 142
    :cond_6
    :goto_2
    check-cast v1, Lhs/j;

    .line 143
    .line 144
    :goto_3
    invoke-virtual {v1}, Lhs/l;->P()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_5

    .line 149
    .line 150
    const/4 v9, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    invoke-static {v1, v9, v6, v10}, Lhs/q;->c(Lhs/j;IILjava/lang/Object;)[B

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-static {v7, v9}, Lws/f;->d(Ljava/io/File;[B)V

    .line 157
    .line 158
    .line 159
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 160
    .line 161
    iget-object v11, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/b;->e:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v12, "dst file length: "

    .line 169
    .line 170
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 174
    .line 175
    .line 176
    move-result-wide v12

    .line 177
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v12, " bytes"

    .line 181
    .line 182
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    const/16 v15, 0xc

    .line 190
    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    const/4 v14, 0x0

    .line 195
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    return-object v1
.end method

.method public final z(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ".etag"

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
