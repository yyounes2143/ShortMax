.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;
.super Landroid/webkit/WebViewClient;
.source "DiscoverWebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverWebViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,428:1\n15#2,9:429\n*S KotlinDebug\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n*L\n249#1:429,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onPageFinished url="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onPageStarted url="

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onReceivedError request.url="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v1

    .line 25
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, " errorCode="

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object p2, v1

    .line 45
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ",errMsg="

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->N(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onReceivedHttpError request.url="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v1

    .line 25
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, " errorCode="

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object p2, v1

    .line 45
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ",errMsg="

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->N(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WebViewClientOnReceivedSslError"
        }
    .end annotation

    .line 1
    const-string p3, "view"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "handler"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 12
    .line 13
    new-instance p3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;

    .line 14
    .line 15
    invoke-direct {p3, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Landroid/webkit/SslErrorHandler;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$b;

    .line 19
    .line 20
    invoke-direct {p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$b;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p3, p2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
