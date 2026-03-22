.class public Lcom/applovin/impl/sdk/nativeAd/b;
.super Lcom/applovin/impl/g5;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/nativeAd/a$a;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final A:Ljava/util/List;

.field private final B:Ljava/util/List;

.field private final g:Lorg/json/JSONObject;

.field private final h:Lorg/json/JSONObject;

.field private final i:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Double;

.field private n:Ljava/lang/String;

.field private o:Landroid/net/Uri;

.field private p:Landroid/net/Uri;

.field private q:Lcom/applovin/impl/l7;

.field private r:Landroid/net/Uri;

.field private s:Landroid/net/Uri;

.field private t:Landroid/net/Uri;

.field private u:Landroid/net/Uri;

.field private final v:Ljava/util/List;

.field private final w:Ljava/util/List;

.field private final x:Ljava/util/List;

.field private final y:Ljava/util/List;

.field private final z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    const-string v0, "TaskRenderNativeAd"

    .line 2
    .line 3
    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    const-string p4, ""

    .line 7
    .line 8
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->j:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->k:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->l:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->m:Ljava/lang/Double;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->n:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->o:Landroid/net/Uri;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->p:Landroid/net/Uri;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->r:Landroid/net/Uri;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->s:Landroid/net/Uri;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->t:Landroid/net/Uri;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->u:Landroid/net/Uri;

    .line 30
    .line 31
    new-instance p4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->v:Ljava/util/List;

    .line 37
    .line 38
    new-instance p4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->w:Ljava/util/List;

    .line 44
    .line 45
    new-instance p4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->x:Ljava/util/List;

    .line 51
    .line 52
    new-instance p4, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->y:Ljava/util/List;

    .line 58
    .line 59
    new-instance p4, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->z:Ljava/util/List;

    .line 65
    .line 66
    new-instance p4, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->A:Ljava/util/List;

    .line 72
    .line 73
    new-instance p4, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->B:Ljava/util/List;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 81
    .line 82
    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/b;->h:Lorg/json/JSONObject;

    .line 83
    .line 84
    iput-object p3, p0, Lcom/applovin/impl/sdk/nativeAd/b;->i:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    .line 85
    .line 86
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    const-string/jumbo v0, "url"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->t:Landroid/net/Uri;

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processed click destination URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->t:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    const-string v0, "fallback"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->u:Landroid/net/Uri;

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processed click destination backup URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->u:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    const-string v0, "clicktrackers"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->M2:Lcom/applovin/impl/v4;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string/jumbo v3, "use_requests_for_native_ad_click_postbacks"

    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v2, v0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 13
    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getObjectAtIndex(Lorg/json/JSONArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/b;->x:Ljava/util/List;

    new-instance v5, Lcom/applovin/impl/sdk/network/e$a;

    iget-object v6, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v5, v6}, Lcom/applovin/impl/sdk/network/e$a;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 18
    invoke-virtual {v5, v3}, Lcom/applovin/impl/sdk/network/e$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$a;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/e$a;->i(Z)Lcom/applovin/impl/sdk/network/e$a;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/e$a;->g(Z)Lcom/applovin/impl/sdk/network/e$a;

    move-result-object v3

    .line 21
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/b;->f()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/e$a;->h(Z)Lcom/applovin/impl/sdk/network/e$a;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/e$a;->b()Lcom/applovin/impl/sdk/network/e;

    move-result-object v3

    .line 23
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed click tracking requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/b;->x:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->v:Ljava/util/List;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed click tracking URLs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/b;->v:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Failed to render click tracking URLs"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Preparing native ad view components..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->setUpNativeAdViewComponents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Successfully prepared native ad view components"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/f4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/c4;->h()V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->i:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoaded(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Failed to prepare native ad view components"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/b;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "prepareNativeComponents"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    const/4 v1, -0x6

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->i:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoadFailed(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/nativeAd/j;-><init>(Lcom/applovin/impl/sdk/nativeAd/b;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private e()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->h:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v2, v0, v1, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->m:Ljava/lang/Double;

    .line 9
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setStarRating(Ljava/lang/Double;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->o:Landroid/net/Uri;

    .line 10
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->p:Landroid/net/Uri;

    .line 11
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setMainImageUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->r:Landroid/net/Uri;

    .line 12
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->q:Lcom/applovin/impl/l7;

    .line 13
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setVastAd(Lcom/applovin/impl/l7;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->s:Landroid/net/Uri;

    .line 14
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->t:Landroid/net/Uri;

    .line 15
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->u:Landroid/net/Uri;

    .line 16
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationBackupUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->v:Ljava/util/List;

    .line 17
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickTrackingUrls(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->w:Ljava/util/List;

    .line 18
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setJsTrackers(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->x:Ljava/util/List;

    .line 19
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickTrackingRequests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->y:Ljava/util/List;

    .line 20
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setImpressionRequests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->z:Ljava/util/List;

    .line 21
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->A:Ljava/util/List;

    .line 22
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC100Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->B:Ljava/util/List;

    .line 23
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableVideo50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->build()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/f4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/c4;->e()V

    .line 26
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting cache task for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/a;

    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v1, v0, v2, p0}, Lcom/applovin/impl/sdk/nativeAd/a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/sdk/nativeAd/a$a;)V

    .line 28
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b6$b;->a:Lcom/applovin/impl/b6$b;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    return-void
.end method

.method public static synthetic e(Lcom/applovin/impl/sdk/nativeAd/b;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/b;->b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    sget-object v2, Lcom/applovin/impl/v4;->L2:Lcom/applovin/impl/v4;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v2, "fire_native_ad_postbacks_from_webview"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 3

    .line 28
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Successfully cached and loaded ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/b;->c(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "VAST ad rendered successfully"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    check-cast p1, Lcom/applovin/impl/l7;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->q:Lcom/applovin/impl/l7;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/b;->e()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "VAST ad failed to render"

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/b;->e()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v2, "privacy_icon_url"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->r:Landroid/net/Uri;

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 25
    .line 26
    const-string v2, "privacy_url"

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->s:Landroid/net/Uri;

    .line 43
    .line 44
    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 45
    .line 46
    const-string v2, "ortb_response"

    .line 47
    .line 48
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_38

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    goto/16 :goto_13

    .line 61
    .line 62
    :cond_2
    const-string/jumbo v2, "version"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string/jumbo v4, "value"

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iget-object v5, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 83
    .line 84
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v8, "Rendering native ad for oRTB version: "

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v5, v6, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    const-string v2, "native"

    .line 107
    .line 108
    invoke-static {v1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "link"

    .line 113
    .line 114
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v0, v5}, Lcom/applovin/impl/sdk/nativeAd/b;->a(Lorg/json/JSONObject;)V

    .line 119
    .line 120
    .line 121
    const-string v5, "assets"

    .line 122
    .line 123
    invoke-static {v1, v5, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_36

    .line 128
    .line 129
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-nez v6, :cond_4

    .line 134
    .line 135
    goto/16 :goto_12

    .line 136
    .line 137
    :cond_4
    const-string v7, ""

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    const-string/jumbo v11, "url"

    .line 145
    .line 146
    .line 147
    const/4 v12, 0x3

    .line 148
    const/4 v14, 0x1

    .line 149
    const/4 v15, -0x1

    .line 150
    if-ge v8, v9, :cond_1f

    .line 151
    .line 152
    invoke-static {v5, v8, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    const-string/jumbo v6, "title"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v16

    .line 163
    if-eqz v16, :cond_5

    .line 164
    .line 165
    invoke-static {v9, v6, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const-string v9, "text"

    .line 170
    .line 171
    invoke-static {v6, v9, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iput-object v6, v0, Lcom/applovin/impl/sdk/nativeAd/b;->j:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_1e

    .line 182
    .line 183
    iget-object v6, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 184
    .line 185
    iget-object v9, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v11, "Processed title: "

    .line 193
    .line 194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v11, v0, Lcom/applovin/impl/sdk/nativeAd/b;->j:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v6, v9, v10}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_5
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_6

    .line 216
    .line 217
    invoke-static {v9, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-direct {v0, v6}, Lcom/applovin/impl/sdk/nativeAd/b;->a(Lorg/json/JSONObject;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_6
    const-string v6, "img"

    .line 227
    .line 228
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    const-string/jumbo v10, "type"

    .line 233
    .line 234
    .line 235
    const-string v13, "id"

    .line 236
    .line 237
    if-eqz v16, :cond_10

    .line 238
    .line 239
    invoke-static {v9, v13, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    invoke-static {v9, v6, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v6, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    invoke-static {v6, v11, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-eq v10, v14, :cond_f

    .line 256
    .line 257
    if-ne v12, v13, :cond_7

    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_7
    if-eq v10, v12, :cond_e

    .line 262
    .line 263
    const/4 v10, 0x2

    .line 264
    if-ne v10, v13, :cond_8

    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-eqz v10, :cond_9

    .line 273
    .line 274
    iget-object v10, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 275
    .line 276
    iget-object v12, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 277
    .line 278
    new-instance v13, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v14, "Unrecognized image: "

    .line 284
    .line 285
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-virtual {v10, v12, v9}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    const-string/jumbo v9, "w"

    .line 299
    .line 300
    .line 301
    invoke-static {v6, v9, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    const-string v10, "h"

    .line 306
    .line 307
    invoke-static {v6, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-lez v9, :cond_d

    .line 312
    .line 313
    if-lez v6, :cond_d

    .line 314
    .line 315
    int-to-float v10, v9

    .line 316
    int-to-float v12, v6

    .line 317
    div-float/2addr v10, v12

    .line 318
    float-to-double v12, v10

    .line 319
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 320
    .line 321
    cmpl-double v10, v12, v14

    .line 322
    .line 323
    const-string v12, "..."

    .line 324
    .line 325
    const-string/jumbo v13, "x"

    .line 326
    .line 327
    .line 328
    if-lez v10, :cond_b

    .line 329
    .line 330
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    if-eqz v10, :cond_a

    .line 335
    .line 336
    iget-object v10, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 337
    .line 338
    iget-object v14, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v15, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v3, "Inferring main image from "

    .line 346
    .line 347
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v10, v14, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_a
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->p:Landroid/net/Uri;

    .line 374
    .line 375
    goto/16 :goto_8

    .line 376
    .line 377
    :cond_b
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_c

    .line 382
    .line 383
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 384
    .line 385
    iget-object v10, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 386
    .line 387
    new-instance v14, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v15, "Inferring icon image from "

    .line 393
    .line 394
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-virtual {v3, v10, v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_c
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->o:Landroid/net/Uri;

    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_1e

    .line 429
    .line 430
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 431
    .line 432
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 433
    .line 434
    const-string v9, "Skipping..."

    .line 435
    .line 436
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_8

    .line 440
    .line 441
    :cond_e
    :goto_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->p:Landroid/net/Uri;

    .line 446
    .line 447
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_1e

    .line 452
    .line 453
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 454
    .line 455
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 456
    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v10, "Processed main image URL: "

    .line 463
    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->p:Landroid/net/Uri;

    .line 468
    .line 469
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_8

    .line 480
    .line 481
    :cond_f
    :goto_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->o:Landroid/net/Uri;

    .line 486
    .line 487
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_1e

    .line 492
    .line 493
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 494
    .line 495
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 496
    .line 497
    new-instance v9, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    const-string v10, "Processed icon URL: "

    .line 503
    .line 504
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->o:Landroid/net/Uri;

    .line 508
    .line 509
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_8

    .line 520
    .line 521
    :cond_10
    const-string/jumbo v3, "video"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-eqz v6, :cond_13

    .line 529
    .line 530
    const/4 v6, 0x0

    .line 531
    invoke-static {v9, v3, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    const-string/jumbo v7, "vasttag"

    .line 536
    .line 537
    .line 538
    invoke-static {v3, v7, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    if-eqz v6, :cond_11

    .line 547
    .line 548
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 549
    .line 550
    .line 551
    move-result v6

    .line 552
    if-eqz v6, :cond_12

    .line 553
    .line 554
    iget-object v6, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 555
    .line 556
    iget-object v7, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 557
    .line 558
    const-string v9, "Processed VAST video"

    .line 559
    .line 560
    invoke-virtual {v6, v7, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto :goto_3

    .line 564
    :cond_11
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-eqz v6, :cond_12

    .line 569
    .line 570
    iget-object v6, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 571
    .line 572
    iget-object v7, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 573
    .line 574
    new-instance v10, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    const-string v11, "Ignoring invalid \"vasttag\" for video: "

    .line 580
    .line 581
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    invoke-virtual {v6, v7, v9}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_12
    :goto_3
    move-object v7, v3

    .line 595
    goto/16 :goto_8

    .line 596
    .line 597
    :cond_13
    const-string v3, "data"

    .line 598
    .line 599
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    if-eqz v6, :cond_1d

    .line 604
    .line 605
    invoke-static {v9, v13, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    const/4 v11, 0x0

    .line 610
    invoke-static {v9, v3, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-static {v3, v10, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 615
    .line 616
    .line 617
    move-result v10

    .line 618
    invoke-static {v3, v4, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    if-eq v10, v14, :cond_1c

    .line 623
    .line 624
    const/16 v11, 0x8

    .line 625
    .line 626
    if-ne v6, v11, :cond_14

    .line 627
    .line 628
    goto/16 :goto_7

    .line 629
    .line 630
    :cond_14
    const/4 v11, 0x2

    .line 631
    if-eq v10, v11, :cond_1b

    .line 632
    .line 633
    const/4 v11, 0x4

    .line 634
    if-ne v6, v11, :cond_15

    .line 635
    .line 636
    goto/16 :goto_6

    .line 637
    .line 638
    :cond_15
    const/16 v11, 0xc

    .line 639
    .line 640
    if-eq v10, v11, :cond_1a

    .line 641
    .line 642
    const/4 v11, 0x5

    .line 643
    if-ne v6, v11, :cond_16

    .line 644
    .line 645
    goto/16 :goto_5

    .line 646
    .line 647
    :cond_16
    if-eq v10, v12, :cond_18

    .line 648
    .line 649
    const/4 v10, 0x6

    .line 650
    if-ne v6, v10, :cond_17

    .line 651
    .line 652
    goto :goto_4

    .line 653
    :cond_17
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    if-eqz v3, :cond_1e

    .line 658
    .line 659
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 660
    .line 661
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 662
    .line 663
    new-instance v10, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .line 667
    .line 668
    const-string v11, "Skipping unsupported data: "

    .line 669
    .line 670
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v9

    .line 680
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_8

    .line 684
    .line 685
    :cond_18
    :goto_4
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 686
    .line 687
    invoke-static {v3, v9, v10}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;D)D

    .line 688
    .line 689
    .line 690
    move-result-wide v11

    .line 691
    cmpl-double v6, v11, v9

    .line 692
    .line 693
    if-nez v6, :cond_19

    .line 694
    .line 695
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 696
    .line 697
    .line 698
    move-result v6

    .line 699
    if-eqz v6, :cond_1e

    .line 700
    .line 701
    iget-object v6, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 702
    .line 703
    iget-object v9, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 704
    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    .line 706
    .line 707
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .line 709
    .line 710
    const-string v11, "Received invalid star rating: "

    .line 711
    .line 712
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    invoke-virtual {v6, v9, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_8

    .line 726
    .line 727
    :cond_19
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->m:Ljava/lang/Double;

    .line 732
    .line 733
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-eqz v3, :cond_1e

    .line 738
    .line 739
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 740
    .line 741
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 742
    .line 743
    new-instance v9, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    .line 748
    const-string v10, "Processed star rating: "

    .line 749
    .line 750
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->m:Ljava/lang/Double;

    .line 754
    .line 755
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_8

    .line 766
    .line 767
    :cond_1a
    :goto_5
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->n:Ljava/lang/String;

    .line 768
    .line 769
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    if-eqz v3, :cond_1e

    .line 774
    .line 775
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 776
    .line 777
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 778
    .line 779
    new-instance v9, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .line 783
    .line 784
    const-string v10, "Processed cta: "

    .line 785
    .line 786
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->n:Ljava/lang/String;

    .line 790
    .line 791
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v9

    .line 798
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    goto :goto_8

    .line 802
    :cond_1b
    :goto_6
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->l:Ljava/lang/String;

    .line 803
    .line 804
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    if-eqz v3, :cond_1e

    .line 809
    .line 810
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 811
    .line 812
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 813
    .line 814
    new-instance v9, Ljava/lang/StringBuilder;

    .line 815
    .line 816
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 817
    .line 818
    .line 819
    const-string v10, "Processed body: "

    .line 820
    .line 821
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->l:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v9

    .line 833
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    goto :goto_8

    .line 837
    :cond_1c
    :goto_7
    iput-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->k:Ljava/lang/String;

    .line 838
    .line 839
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    if-eqz v3, :cond_1e

    .line 844
    .line 845
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 846
    .line 847
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 848
    .line 849
    new-instance v9, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .line 853
    .line 854
    const-string v10, "Processed advertiser: "

    .line 855
    .line 856
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/b;->k:Ljava/lang/String;

    .line 860
    .line 861
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v9

    .line 868
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    goto :goto_8

    .line 872
    :cond_1d
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    if-eqz v3, :cond_1e

    .line 877
    .line 878
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 879
    .line 880
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 881
    .line 882
    new-instance v10, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    const-string v11, "Unsupported asset object: "

    .line 888
    .line 889
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v9

    .line 899
    invoke-virtual {v3, v6, v9}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :cond_1e
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 903
    .line 904
    const/4 v3, 0x0

    .line 905
    goto/16 :goto_0

    .line 906
    .line 907
    :cond_1f
    const-string v2, "jstracker"

    .line 908
    .line 909
    const/4 v3, 0x0

    .line 910
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-eqz v3, :cond_20

    .line 919
    .line 920
    iget-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->w:Ljava/util/List;

    .line 921
    .line 922
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    if-eqz v3, :cond_20

    .line 930
    .line 931
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 932
    .line 933
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 934
    .line 935
    new-instance v5, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    const-string v6, "Processed jstracker: "

    .line 941
    .line 942
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    :cond_20
    const-string v2, "imptrackers"

    .line 956
    .line 957
    const/4 v3, 0x0

    .line 958
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    if-eqz v2, :cond_24

    .line 963
    .line 964
    const/4 v4, 0x0

    .line 965
    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    if-ge v4, v5, :cond_24

    .line 970
    .line 971
    invoke-static {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getObjectAtIndex(Lorg/json/JSONArray;ILjava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    instance-of v3, v5, Ljava/lang/String;

    .line 976
    .line 977
    if-nez v3, :cond_21

    .line 978
    .line 979
    goto :goto_a

    .line 980
    :cond_21
    check-cast v5, Ljava/lang/String;

    .line 981
    .line 982
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-eqz v3, :cond_22

    .line 987
    .line 988
    goto :goto_a

    .line 989
    :cond_22
    iget-object v3, v0, Lcom/applovin/impl/sdk/nativeAd/b;->y:Ljava/util/List;

    .line 990
    .line 991
    new-instance v6, Lcom/applovin/impl/sdk/network/e$a;

    .line 992
    .line 993
    iget-object v8, v0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 994
    .line 995
    invoke-direct {v6, v8}, Lcom/applovin/impl/sdk/network/e$a;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v6, v5}, Lcom/applovin/impl/sdk/network/e$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$a;

    .line 999
    .line 1000
    .line 1001
    move-result-object v6

    .line 1002
    const/4 v8, 0x0

    .line 1003
    invoke-virtual {v6, v8}, Lcom/applovin/impl/sdk/network/e$a;->i(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v6

    .line 1007
    invoke-virtual {v6, v8}, Lcom/applovin/impl/sdk/network/e$a;->g(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v6

    .line 1011
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/b;->f()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v8

    .line 1015
    invoke-virtual {v6, v8}, Lcom/applovin/impl/sdk/network/e$a;->h(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v6

    .line 1019
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/network/e$a;->b()Lcom/applovin/impl/sdk/network/e;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v6

    .line 1023
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v3

    .line 1030
    if-eqz v3, :cond_23

    .line 1031
    .line 1032
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1033
    .line 1034
    iget-object v6, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1035
    .line 1036
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    const-string v9, "Processed imptracker URL: "

    .line 1042
    .line 1043
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v5

    .line 1053
    invoke-virtual {v3, v6, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    :cond_23
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 1057
    .line 1058
    const/4 v3, 0x0

    .line 1059
    goto :goto_9

    .line 1060
    :cond_24
    const-string v2, "eventtrackers"

    .line 1061
    .line 1062
    const/4 v3, 0x0

    .line 1063
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    if-eqz v1, :cond_33

    .line 1068
    .line 1069
    const/4 v8, 0x0

    .line 1070
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 1071
    .line 1072
    .line 1073
    move-result v2

    .line 1074
    if-ge v8, v2, :cond_33

    .line 1075
    .line 1076
    invoke-static {v1, v8, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    const-string v4, "event"

    .line 1081
    .line 1082
    invoke-static {v2, v4, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 1083
    .line 1084
    .line 1085
    move-result v4

    .line 1086
    const-string v5, "method"

    .line 1087
    .line 1088
    invoke-static {v2, v5, v15}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 1089
    .line 1090
    .line 1091
    move-result v5

    .line 1092
    invoke-static {v2, v11, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v6

    .line 1096
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v9

    .line 1100
    if-eqz v9, :cond_27

    .line 1101
    .line 1102
    :cond_25
    :goto_c
    const/4 v9, 0x2

    .line 1103
    const/4 v10, 0x0

    .line 1104
    :cond_26
    :goto_d
    const/4 v13, 0x4

    .line 1105
    goto/16 :goto_10

    .line 1106
    .line 1107
    :cond_27
    const/4 v9, 0x2

    .line 1108
    if-eq v5, v14, :cond_28

    .line 1109
    .line 1110
    if-eq v5, v9, :cond_28

    .line 1111
    .line 1112
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v4

    .line 1116
    if-eqz v4, :cond_25

    .line 1117
    .line 1118
    iget-object v4, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1119
    .line 1120
    iget-object v5, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1121
    .line 1122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    const-string v9, "Unsupported method for event tracker: "

    .line 1128
    .line 1129
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    invoke-virtual {v4, v5, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_c

    .line 1143
    :cond_28
    if-ne v5, v9, :cond_29

    .line 1144
    .line 1145
    const-string v9, "<script"

    .line 1146
    .line 1147
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v9

    .line 1151
    if-eqz v9, :cond_29

    .line 1152
    .line 1153
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->w:Ljava/util/List;

    .line 1154
    .line 1155
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    goto :goto_c

    .line 1159
    :cond_29
    new-instance v9, Lcom/applovin/impl/sdk/network/e$a;

    .line 1160
    .line 1161
    iget-object v10, v0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 1162
    .line 1163
    invoke-direct {v9, v10}, Lcom/applovin/impl/sdk/network/e$a;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v9, v6}, Lcom/applovin/impl/sdk/network/e$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$a;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v9

    .line 1170
    const/4 v10, 0x0

    .line 1171
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/network/e$a;->i(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v9

    .line 1175
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/network/e$a;->g(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v9

    .line 1179
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/b;->f()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v13

    .line 1183
    if-nez v13, :cond_2b

    .line 1184
    .line 1185
    const/4 v13, 0x2

    .line 1186
    if-ne v5, v13, :cond_2a

    .line 1187
    .line 1188
    goto :goto_e

    .line 1189
    :cond_2a
    move v5, v10

    .line 1190
    goto :goto_f

    .line 1191
    :cond_2b
    :goto_e
    move v5, v14

    .line 1192
    :goto_f
    invoke-virtual {v9, v5}, Lcom/applovin/impl/sdk/network/e$a;->h(Z)Lcom/applovin/impl/sdk/network/e$a;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v5

    .line 1196
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/network/e$a;->b()Lcom/applovin/impl/sdk/network/e;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v5

    .line 1200
    if-ne v4, v14, :cond_2d

    .line 1201
    .line 1202
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->y:Ljava/util/List;

    .line 1203
    .line 1204
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v2

    .line 1211
    if-eqz v2, :cond_2c

    .line 1212
    .line 1213
    iget-object v2, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1214
    .line 1215
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1216
    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    const-string v9, "Processed impression URL: "

    .line 1223
    .line 1224
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v5

    .line 1234
    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_2c
    const/4 v9, 0x2

    .line 1238
    goto/16 :goto_d

    .line 1239
    .line 1240
    :cond_2d
    const/4 v9, 0x2

    .line 1241
    if-ne v4, v9, :cond_2e

    .line 1242
    .line 1243
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->z:Ljava/util/List;

    .line 1244
    .line 1245
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1249
    .line 1250
    .line 1251
    move-result v2

    .line 1252
    if-eqz v2, :cond_26

    .line 1253
    .line 1254
    iget-object v2, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1255
    .line 1256
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1257
    .line 1258
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .line 1262
    .line 1263
    const-string v13, "Processed viewable MRC50 URL: "

    .line 1264
    .line 1265
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v5

    .line 1275
    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_d

    .line 1279
    .line 1280
    :cond_2e
    if-ne v4, v12, :cond_2f

    .line 1281
    .line 1282
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->A:Ljava/util/List;

    .line 1283
    .line 1284
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v2

    .line 1291
    if-eqz v2, :cond_26

    .line 1292
    .line 1293
    iget-object v2, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1294
    .line 1295
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1296
    .line 1297
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1300
    .line 1301
    .line 1302
    const-string v13, "Processed viewable MRC100 URL: "

    .line 1303
    .line 1304
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v5

    .line 1314
    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    goto/16 :goto_d

    .line 1318
    .line 1319
    :cond_2f
    const/4 v13, 0x4

    .line 1320
    if-ne v4, v13, :cond_30

    .line 1321
    .line 1322
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->B:Ljava/util/List;

    .line 1323
    .line 1324
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    .line 1326
    .line 1327
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    if-eqz v2, :cond_32

    .line 1332
    .line 1333
    iget-object v2, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1334
    .line 1335
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1336
    .line 1337
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    const-string v3, "Processed viewable video 50 URL: "

    .line 1343
    .line 1344
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    goto :goto_10

    .line 1358
    :cond_30
    const/16 v3, 0x22b

    .line 1359
    .line 1360
    if-ne v4, v3, :cond_31

    .line 1361
    .line 1362
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v2

    .line 1366
    if-eqz v2, :cond_32

    .line 1367
    .line 1368
    iget-object v2, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1369
    .line 1370
    iget-object v3, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1371
    .line 1372
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1375
    .line 1376
    .line 1377
    const-string v5, "Ignoring processing of OMID URL: "

    .line 1378
    .line 1379
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v4

    .line 1389
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    goto :goto_10

    .line 1393
    :cond_31
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    if-eqz v3, :cond_32

    .line 1398
    .line 1399
    iget-object v3, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1400
    .line 1401
    iget-object v4, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1402
    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1404
    .line 1405
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1406
    .line 1407
    .line 1408
    const-string v6, "Unsupported event tracker: "

    .line 1409
    .line 1410
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v2

    .line 1420
    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    .line 1422
    .line 1423
    :cond_32
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 1424
    .line 1425
    const/4 v3, 0x0

    .line 1426
    goto/16 :goto_b

    .line 1427
    .line 1428
    :cond_33
    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v1

    .line 1432
    if-eqz v1, :cond_35

    .line 1433
    .line 1434
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1435
    .line 1436
    .line 1437
    move-result v1

    .line 1438
    if-eqz v1, :cond_34

    .line 1439
    .line 1440
    iget-object v1, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1441
    .line 1442
    iget-object v2, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1443
    .line 1444
    const-string v3, "Processing VAST video..."

    .line 1445
    .line 1446
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    :cond_34
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 1450
    .line 1451
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v1

    .line 1455
    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/b;->h:Lorg/json/JSONObject;

    .line 1456
    .line 1457
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v2

    .line 1461
    iget-object v3, v0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 1462
    .line 1463
    invoke-static {v7, v1, v2, v0, v3}, Lcom/applovin/impl/f6;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/f6;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v1

    .line 1467
    iget-object v2, v0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 1468
    .line 1469
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v2

    .line 1473
    invoke-virtual {v2, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 1474
    .line 1475
    .line 1476
    goto :goto_11

    .line 1477
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/b;->e()V

    .line 1478
    .line 1479
    .line 1480
    :goto_11
    return-void

    .line 1481
    :cond_36
    :goto_12
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1482
    .line 1483
    .line 1484
    move-result v1

    .line 1485
    if-eqz v1, :cond_37

    .line 1486
    .line 1487
    iget-object v1, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1488
    .line 1489
    iget-object v2, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1490
    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    const-string v4, "Unable to retrieve assets - failing ad load: "

    .line 1497
    .line 1498
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    .line 1501
    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 1502
    .line 1503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v3

    .line 1510
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    :cond_37
    const-string v1, "Unable to retrieve assets"

    .line 1514
    .line 1515
    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/b;->b(Ljava/lang/String;)V

    .line 1516
    .line 1517
    .line 1518
    return-void

    .line 1519
    :cond_38
    :goto_13
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v1

    .line 1523
    if-eqz v1, :cond_39

    .line 1524
    .line 1525
    iget-object v1, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 1526
    .line 1527
    iget-object v2, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 1528
    .line 1529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1532
    .line 1533
    .line 1534
    const-string v4, "No oRtb response provided: "

    .line 1535
    .line 1536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/b;->g:Lorg/json/JSONObject;

    .line 1540
    .line 1541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v3

    .line 1548
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    .line 1550
    .line 1551
    :cond_39
    const-string v1, "No oRtb response provided"

    .line 1552
    .line 1553
    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/b;->b(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    return-void
.end method
