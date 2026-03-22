.class public final Lcom/bytedance/bdtracker/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 1
    .param p1    # Lcom/bytedance/bdtracker/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appLogInstance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/bytedance/bdtracker/l;)Lcom/bytedance/bdtracker/m;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/bdtracker/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/l;",
            ")",
            "Lcom/bytedance/bdtracker/m<",
            "Lcom/bytedance/bdtracker/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParam"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    const-string v2, "appLogInstance.api"

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/bdtracker/l;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/q;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q;->a()Ljava/util/HashMap;

    move-result-object v5

    const/4 v7, 0x1

    const v8, 0xea60

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    const-string p2, "appLogInstance.netClient\u2026TIMEOUT\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/bytedance/bdtracker/m;->c:Lcom/bytedance/bdtracker/m$a;

    const-class v0, Lcom/bytedance/bdtracker/k;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/bdtracker/m$a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/bytedance/bdtracker/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/bytedance/bdtracker/o;Lcom/bytedance/bdtracker/l;)Lcom/bytedance/bdtracker/m;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/bdtracker/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/bdtracker/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/o;",
            "Lcom/bytedance/bdtracker/l;",
            ")",
            "Lcom/bytedance/bdtracker/m<",
            "Lcom/bytedance/bdtracker/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParam"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    const-string v2, "appLogInstance.api"

    .line 8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 10
    invoke-virtual {p3}, Lcom/bytedance/bdtracker/l;->a()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/bdtracker/q;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/bdtracker/o;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q;->a()Ljava/util/HashMap;

    move-result-object v5

    const/4 v7, 0x1

    const v8, 0xea60

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    const-string p2, "appLogInstance.netClient\u2026OUT\n                    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/bytedance/bdtracker/m;->c:Lcom/bytedance/bdtracker/m$a;

    const-class p3, Lcom/bytedance/bdtracker/n;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/bdtracker/m$a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/bytedance/bdtracker/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/bytedance/bdtracker/m;->c:Lcom/bytedance/bdtracker/m$a;

    invoke-virtual {p2, p1}, Lcom/bytedance/bdtracker/m$a;->a(Ljava/lang/Throwable;)Lcom/bytedance/bdtracker/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/q;->a:Lcom/bytedance/bdtracker/d;

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/util/HashMap;Lcom/bytedance/bdtracker/d;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
