.class public final Lcom/bytedance/applog/util/WebViewJsUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->getWebInfo(Landroid/webkit/WebView;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/bytedance/applog/util/WebViewJsUtil;->access$000()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v3, "WebViewJsUtil getWebInfo:null!"

    .line 25
    .line 26
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->a:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->b:Landroid/webkit/WebView;

    .line 36
    .line 37
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "web_info"

    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$a;->a:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
