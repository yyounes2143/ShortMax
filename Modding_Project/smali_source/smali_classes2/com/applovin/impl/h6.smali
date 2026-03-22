.class public Lcom/applovin/impl/h6;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lorg/json/JSONObject;

.field private final i:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    const-string v0, "TaskRenderAppLovinAd"

    .line 2
    .line 3
    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/impl/h6;->g:Lorg/json/JSONObject;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/applovin/impl/h6;->h:Lorg/json/JSONObject;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/applovin/impl/h6;->i:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

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
    const-string v2, "Rendering ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/ad/a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/h6;->g:Lorg/json/JSONObject;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/applovin/impl/h6;->h:Lorg/json/JSONObject;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/ad/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/applovin/impl/h6;->g:Lorg/json/JSONObject;

    .line 28
    .line 29
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    const-string v3, "gs_load_immediately"

    .line 32
    .line 33
    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/applovin/impl/h6;->g:Lorg/json/JSONObject;

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    const-string/jumbo v4, "vs_load_immediately"

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    new-instance v3, Lcom/applovin/impl/k5;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/applovin/impl/h6;->i:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 61
    .line 62
    invoke-direct {v3, v0, v4, v5}, Lcom/applovin/impl/k5;-><init>(Lcom/applovin/impl/sdk/ad/a;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Lcom/applovin/impl/k5;->c(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/applovin/impl/k5;->b(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lcom/applovin/impl/b6$b;->b:Lcom/applovin/impl/b6$b;

    .line 78
    .line 79
    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
