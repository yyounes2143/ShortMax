.class public final Lcom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt;
.super Ljava/lang/Object;
.source "HttpRequestToOkHttpRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpRequestToOkHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,25:1\n1#2:26\n215#3,2:27\n*S KotlinDebug\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n*L\n17#1:27,2\n*E\n"
    }
.end annotation


# direct methods
.method private static final generateOkHttpBody(Lcom/unity3d/ads/network/model/HttpBody;)Lokhttp3/RequestBody;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/unity3d/ads/network/model/HttpBody$StringBody;

    .line 2
    .line 3
    const-string v1, "text/plain;charset=utf-8"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lokhttp3/MediaType;->g(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p0, Lcom/unity3d/ads/network/model/HttpBody$StringBody;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpBody$StringBody;->getContent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p0, Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lokhttp3/MediaType;->g(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast p0, Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;->getContent()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of p0, p0, Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_0
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 48
    .line 49
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private static final generateOkHttpHeaders(Lcom/unity3d/ads/network/model/HttpRequest;)Lokhttp3/Headers;
    .locals 12

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/List;

    .line 41
    .line 42
    move-object v3, v1

    .line 43
    check-cast v3, Ljava/lang/Iterable;

    .line 44
    .line 45
    const/16 v10, 0x3e

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const-string v4, ","

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->f()Lokhttp3/Headers;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "Builder()\n    .also { he\u2026ng(\",\")) } }\n    .build()"

    .line 68
    .line 69
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method

.method public static final toOkHttpRequest(Lcom/unity3d/ads/network/model/HttpRequest;)Lokhttp3/Request;
    .locals 7
    .param p0    # Lcom/unity3d/ads/network/model/HttpRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpRequest;->getBaseURL()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x2f

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v5, v4, [C

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    aput-char v3, v5, v6

    .line 27
    .line 28
    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->w1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpRequest;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-array v4, v4, [C

    .line 43
    .line 44
    aput-char v3, v4, v6

    .line 45
    .line 46
    invoke-static {v2, v4}, Lkotlin/text/StringsKt;->w1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "/"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->Q0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpRequest;->getMethod()Lcom/unity3d/ads/network/model/RequestType;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/unity3d/ads/network/model/HttpRequest;->getBody()Lcom/unity3d/ads/network/model/HttpBody;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt;->generateOkHttpBody(Lcom/unity3d/ads/network/model/HttpBody;)Lokhttp3/RequestBody;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->g(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt;->generateOkHttpHeaders(Lcom/unity3d/ads/network/model/HttpRequest;)Lokhttp3/Headers;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->f(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v0, "Builder()\n    .url(\"${ba\u2026tpHeaders())\n    .build()"

    .line 100
    .line 101
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method
