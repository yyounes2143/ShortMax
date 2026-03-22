.class public Landroidx/webkit/WebResourceResponseCompat;
.super Ljava/lang/Object;
.source "WebResourceResponseCompat.java"


# instance fields
.field private mCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrapped:Landroid/webkit/WebResourceResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 8
    new-instance v0, Landroid/webkit/WebResourceResponse;

    if-eqz p5, :cond_0

    :goto_0
    move-object v6, p5

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p5

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p6

    .line 10
    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, p1, p2, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    iput-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    return-void
.end method

.method private serializeMultiCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/webkit/b;->a(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    const-string v2, "\u0000"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public static toWebResourceResponseCompat(Landroid/webkit/WebResourceResponse;)Landroidx/webkit/WebResourceResponseCompat;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    const/16 v0, 0xc8

    .line 14
    .line 15
    :cond_0
    move v5, v0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "OK"

    .line 19
    .line 20
    :cond_1
    move-object v6, v1

    .line 21
    new-instance v0, Landroidx/webkit/WebResourceResponseCompat;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    move-object v2, v0

    .line 40
    invoke-direct/range {v2 .. v8}, Landroidx/webkit/WebResourceResponseCompat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method


# virtual methods
.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCookies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setEncoding(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toWebResourceResponse()Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v7, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mCookies:Ljava/util/List;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroidx/webkit/WebResourceResponseCompat;->serializeMultiCookieHeader(Ljava/util/List;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "\u0000Set-Cookie-Multivalue\u0000"

    .line 37
    .line 38
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/16 v2, 0x64

    .line 54
    .line 55
    if-ge v0, v2, :cond_2

    .line 56
    .line 57
    const/16 v0, 0xc8

    .line 58
    .line 59
    const-string v1, "OK"

    .line 60
    .line 61
    :cond_2
    move v5, v0

    .line 62
    move-object v6, v1

    .line 63
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v1, p0, Landroidx/webkit/WebResourceResponseCompat;->mWrapped:Landroid/webkit/WebResourceResponse;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    move-object v2, v0

    .line 84
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method
