.class public final Lcom/bytedance/applog/util/WebViewJsUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->injectCollectJs(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->isH5CollectEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lcom/bytedance/applog/IPicker;->getMarqueeCookie()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method
