.class public final Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;
.super Landroid/webkit/WebViewClient;
.source "ActActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->E0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->e(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->f(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->d(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Landroid/webkit/SslErrorHandler;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p3, v0, :cond_0

    .line 17
    .line 18
    const/4 p3, 0x4

    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

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
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->a0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->f0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

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
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

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
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->e0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->f0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

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
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->e0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
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
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$g;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 14
    .line 15
    invoke-direct {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_ssl_verified_fail:I

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 21
    .line 22
    .line 23
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_continue:I

    .line 24
    .line 25
    new-instance v0, Lqh/r;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Lqh/r;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 34
    .line 35
    new-instance v0, Lqh/s;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Lqh/s;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    .line 43
    new-instance p3, Lqh/t;

    .line 44
    .line 45
    invoke-direct {p3, p2}, Lqh/t;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
