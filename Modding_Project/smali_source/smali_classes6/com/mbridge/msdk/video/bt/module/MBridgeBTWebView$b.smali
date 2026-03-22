.class Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;
.super Ljava/lang/Object;
.source "MBridgeBTWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "onClicked"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "code"

    .line 17
    .line 18
    sget v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v2, "id"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    new-instance v2, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v3, "x"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "y"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string p1, "data"

    .line 66
    .line 67
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Landroid/webkit/WebView;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v2, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Landroid/webkit/WebView;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$b;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, v1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_0
    :goto_0
    return-void
.end method
