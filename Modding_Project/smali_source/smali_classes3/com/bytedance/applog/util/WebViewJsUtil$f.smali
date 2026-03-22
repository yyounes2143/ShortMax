.class public final Lcom/bytedance/applog/util/WebViewJsUtil$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->sendWebClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->d:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/bdtracker/u3;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->d:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/applog/util/WebViewJsUtil;->access$300(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/bdtracker/b4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
