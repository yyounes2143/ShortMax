.class public abstract Lcom/applovin/impl/r4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Map;
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 1
    const-string/jumbo p1, "top_main_method"

    .line 2
    .line 3
    .line 4
    const-string v0, "onRenderProcessGone"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/applovin/impl/r4;->a()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/applovin/impl/o0;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {p2}, Lcom/applovin/impl/adview/e0;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "crash"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "non_crash"

    .line 33
    .line 34
    :goto_0
    const-string v1, "source"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "renderer_priority_at_exit="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/applovin/impl/ze;->a(Landroid/webkit/RenderProcessGoneDetail;)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v0, "details"

    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object p2, Lcom/applovin/impl/sdk/k;->D0:Lcom/applovin/impl/sdk/k;

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    sget-object v0, Lcom/applovin/impl/v4;->o3:Lcom/applovin/impl/v4;

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Ljava/lang/Long;

    .line 76
    .line 77
    sget-object v0, Lcom/applovin/impl/sdk/k;->D0:Lcom/applovin/impl/sdk/k;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/applovin/impl/c2;->N0:Lcom/applovin/impl/c2;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/util/Map;J)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const-string p1, "RenderProcessGoneHandlingWebViewClient"

    .line 93
    .line 94
    const-string p2, "onRenderProcessGone() handled"

    .line 95
    .line 96
    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x1

    .line 100
    return p1
.end method
