.class public final synthetic Lcom/applovin/impl/sdk/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field public final synthetic c:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/sdk/s;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/sdk/s;->c:Lcom/applovin/sdk/AppLovinAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->c:Lcom/applovin/sdk/AppLovinAd;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->f(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
