.class public final synthetic Lcom/applovin/impl/sdk/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/impl/sdk/d$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lcom/applovin/impl/u;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/sdk/t;->c:Lorg/json/JSONObject;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/sdk/t;->d:Lcom/applovin/impl/u;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->d:Lcom/applovin/impl/u;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
