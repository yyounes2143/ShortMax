.class public Lio/bidmachine/iab/mraid/MraidWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidWebView$c;,
        Lio/bidmachine/iab/mraid/MraidWebView$a;
    }
.end annotation


# static fields
.field private static final g:Lio/bidmachine/iab/mraid/MraidWebView$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lsm/r;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lio/bidmachine/iab/mraid/MraidWebView$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebView$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebView$c;-><init>(Lio/bidmachine/iab/mraid/MraidWebView$b;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebView;->g:Lio/bidmachine/iab/mraid/MraidWebView$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Z

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollContainer(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x2000000

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lio/bidmachine/iab/mraid/u;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lio/bidmachine/iab/mraid/u;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/u;

    .line 40
    .line 41
    new-instance v1, Lio/bidmachine/iab/mraid/MraidWebView$b;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lio/bidmachine/iab/mraid/MraidWebView$b;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lio/bidmachine/iab/mraid/MraidWebView;->g:Lio/bidmachine/iab/mraid/MraidWebView$c;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lio/bidmachine/iab/mraid/q;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lio/bidmachine/iab/mraid/q;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lsm/r;

    .line 80
    .line 81
    invoke-direct {v1, p1, p0, v0}, Lsm/r;-><init>(Landroid/content/Context;Landroid/view/View;Lsm/r$a;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lsm/r;

    .line 85
    .line 86
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidWebView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->f(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lio/bidmachine/iab/mraid/MraidWebView;)Lio/bidmachine/iab/mraid/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/u;

    .line 2
    .line 3
    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "onPause"

    .line 5
    .line 6
    const-string v2, "MraidWebView"

    .line 7
    .line 8
    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {v2, v0}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    .line 21
    .line 22
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->h()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static synthetic e(Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "MraidWebView"

    .line 6
    .line 7
    const-string v1, "evaluate js complete: %s"

    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic f(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "onResume"

    .line 5
    .line 6
    const-string v3, "MraidWebView"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    invoke-static {v3, v1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->h()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lsm/r;

    .line 6
    .line 7
    invoke-virtual {v0}, Lsm/r;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    .line 21
    .line 22
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->c:Lio/bidmachine/iab/mraid/MraidWebView$a;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lio/bidmachine/iab/mraid/MraidWebView$a;->a(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .line 1
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Z

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lsm/r;

    .line 11
    .line 12
    invoke-virtual {v0}, Lsm/r;->j()V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "MraidWebView"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-array p1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v0, "can\'t evaluating js: WebView is destroyed"

    .line 13
    .line 14
    invoke-static {v2, v0, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-array p1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v0, "can\'t evaluating js: js is empty"

    .line 27
    .line 28
    invoke-static {v2, v0, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_0
    const-string v0, "evaluating js: %s"

    .line 33
    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v0, v3}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lio/bidmachine/iab/mraid/r;

    .line 42
    .line 43
    invoke-direct {v0}, Lio/bidmachine/iab/mraid/r;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v2, v0, v1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "loading url: %s"

    .line 65
    .line 66
    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "javascript:"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->b:Lsm/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsm/r;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->d()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/u;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebView;->a:Lio/bidmachine/iab/mraid/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/u;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->g()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->d()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public setListener(Lio/bidmachine/iab/mraid/MraidWebView$a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/MraidWebView$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebView;->c:Lio/bidmachine/iab/mraid/MraidWebView$a;

    .line 2
    .line 3
    return-void
.end method
