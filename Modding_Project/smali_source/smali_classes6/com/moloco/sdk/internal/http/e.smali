.class public final Lcom/moloco/sdk/internal/http/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)Lio/ktor/client/HttpClient;
    .locals 1
    .param p0    # Lcom/moloco/sdk/internal/services/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/internal/services/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "appInfo"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deviceInfo"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/internal/http/a;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/http/a;-><init>(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lmr/b;->a(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;Lio/ktor/client/HttpClientConfig;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "$this$HttpClient"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->b:Lio/ktor/client/plugins/UserAgent$Plugin;

    .line 7
    .line 8
    new-instance v1, Lcom/moloco/sdk/internal/http/b;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/moloco/sdk/internal/http/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0, v1}, Lio/ktor/client/HttpClientConfig;->i(Lqr/d;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {p2, v0, v1, v2, v1}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry;->g:Lio/ktor/client/plugins/HttpRequestRetry$c;

    .line 24
    .line 25
    invoke-static {p2, v0, v1, v2, v1}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/moloco/sdk/internal/http/c;

    .line 29
    .line 30
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/http/c;-><init>(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lio/ktor/client/plugins/DefaultRequestKt;->b(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final c(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;Lio/ktor/client/plugins/DefaultRequest$a;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$defaultRequest"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/internal/http/d;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/http/d;-><init>(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;Lwr/g;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "$this$headers"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    const-string v1, "AppBundle/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/w;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "; AppVersion/"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/w;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "; AppKey/"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object p0, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/moloco/sdk/publisher/Moloco;->getAppKey$moloco_sdk_release()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 p0, 0x3b

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "X-Moloco-App-Info"

    .line 59
    .line 60
    invoke-virtual {p2, v0, p0}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v0, "make/"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/i0;->f()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "; model/"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/i0;->h()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "; hwv/"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/i0;->d()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, "; osv/"

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/i0;->j()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, "; OS/Android;"

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string p1, "X-Moloco-Device-Info"

    .line 126
    .line 127
    invoke-virtual {p2, p1, p0}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p0, "X-Moloco-SDK-Info"

    .line 131
    .line 132
    const-string p1, "SdkVersion/4.0.0"

    .line 133
    .line 134
    invoke-virtual {p2, p0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p0
.end method

.method public static final e(Lio/ktor/client/plugins/UserAgent$a;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$install"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/e;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/a;->invoke()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/UserAgent$a;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method
