.class Lio/bidmachine/iab/mraid/s$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/s;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/mraid/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/mraid/s;Lio/bidmachine/iab/mraid/s$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/s$c;-><init>(Lio/bidmachine/iab/mraid/s;)V

    return-void
.end method

.method private a()Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/iab/mraid/o;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "text/javascript"

    .line 23
    .line 24
    invoke-direct {v0, v3, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p3, "MraidWebViewController"

    .line 10
    .line 11
    const-string v0, "onError: %s / %s / %d"

    .line 12
    .line 13
    invoke-static {p3, v0, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string p1, "ERR_INTERNET_DISCONNECTED"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/s;->q(Lio/bidmachine/iab/mraid/s;Z)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method c(Landroid/net/Uri;)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mraid.js"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/s$c;->c(Landroid/net/Uri;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "MraidWebViewController"

    .line 8
    .line 9
    const-string v1, "onPageFinished"

    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/iab/mraid/s;->e(Lio/bidmachine/iab/mraid/s;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/s;->f(Lio/bidmachine/iab/mraid/s;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 30
    .line 31
    invoke-static {p1}, Lio/bidmachine/iab/mraid/s;->n(Lio/bidmachine/iab/mraid/s;)Lio/bidmachine/iab/mraid/s$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->j(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 39
    .line 40
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebView;->l()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string p2, "MraidWebViewController"

    .line 8
    .line 9
    const-string p3, "onPageStarted"

    .line 10
    .line 11
    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p4, p3, p2}, Lio/bidmachine/iab/mraid/s$c;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/bidmachine/iab/mraid/s$c;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string p2, "MraidWebViewController"

    .line 5
    .line 6
    const-string v0, "onRenderProcessGone"

    .line 7
    .line 8
    invoke-static {p2, v0, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/s;->s()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 17
    .line 18
    invoke-static {p1}, Lio/bidmachine/iab/mraid/s;->n(Lio/bidmachine/iab/mraid/s;)Lio/bidmachine/iab/mraid/s$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "WebViewClient - onRenderProcessGone"

    .line 23
    .line 24
    invoke-static {p2}, Lqm/a;->f(Ljava/lang/String;)Lqm/a;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/s$a;->c(Lqm/a;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/s$c;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/s$c;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/mraid/s$c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/s$c;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p1, "mraid://"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/s;->b(Lio/bidmachine/iab/mraid/s;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2}, Lrm/b;->d(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 22
    .line 23
    iget-object p1, p1, Lio/bidmachine/iab/mraid/s;->b:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 24
    .line 25
    invoke-static {p1, p2}, Lrm/b;->c(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/s$c;->a:Lio/bidmachine/iab/mraid/s;

    .line 30
    .line 31
    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/s;->o(Lio/bidmachine/iab/mraid/s;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method
