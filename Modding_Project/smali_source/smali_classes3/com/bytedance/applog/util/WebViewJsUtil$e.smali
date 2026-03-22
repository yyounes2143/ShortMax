.class public final Lcom/bytedance/applog/util/WebViewJsUtil$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->evaluateJavascript(Landroid/view/View;Ljava/lang/String;Lcom/bytedance/applog/util/WebViewJsUtil$g;)V
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
.field public final synthetic a:Lcom/bytedance/applog/util/WebViewJsUtil$g;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/util/WebViewJsUtil$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$e;->a:Lcom/bytedance/applog/util/WebViewJsUtil$g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$e;->a:Lcom/bytedance/applog/util/WebViewJsUtil$g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/applog/util/WebViewJsUtil$c;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/util/WebViewJsUtil$c;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
