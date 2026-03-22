.class public final Lcom/inmobi/media/vf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/N9;

.field public final b:Lcom/inmobi/media/q2;

.field public c:Lcom/inmobi/media/uf;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/N9;Lcom/inmobi/media/q2;)V
    .locals 1

    .line 1
    const-string v0, "mNetworkRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mWebViewClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/vf;->a:Lcom/inmobi/media/N9;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/vf;->b:Lcom/inmobi/media/q2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/inmobi/media/uf;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/inmobi/media/uf;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/inmobi/media/vf;->b:Lcom/inmobi/media/q2;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/inmobi/media/vf;->c:Lcom/inmobi/media/uf;

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/vf;->c:Lcom/inmobi/media/uf;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/inmobi/media/vf;->a:Lcom/inmobi/media/N9;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/inmobi/media/N9;->d()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/inmobi/media/vf;->a:Lcom/inmobi/media/N9;

    .line 47
    .line 48
    sget-boolean v3, Lcom/inmobi/media/T9;->a:Z

    .line 49
    .line 50
    iget-object v3, v2, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/inmobi/media/T9;->a(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v2, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    const-string v0, "vf"

    .line 62
    .line 63
    const-string v1, "TAG"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    return-void
.end method
