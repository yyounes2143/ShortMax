.class public Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk;
.super Lcom/bytedance/sdk/component/oJ/ex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/oJ/ex<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final oJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/UN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/ex;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk;->oJ:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    const-string p1, "interstitial_webview_close"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/ex$ZYk;)Lcom/bytedance/sdk/component/oJ/si;

    return-void
.end method


# virtual methods
.method protected bridge synthetic oJ(Ljava/lang/Object;Lcom/bytedance/sdk/component/oJ/ba;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/oJ/ba;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)V

    return-void
.end method

.method protected oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/oJ/ba;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/UN;

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/oJ/ex;->tB()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->so()V

    return-void
.end method
