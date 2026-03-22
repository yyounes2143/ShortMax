.class public final synthetic Lcom/applovin/impl/gd;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/adview/AppLovinAdViewEventListener;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinAd;

.field public final synthetic c:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/gd;->a:Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/gd;->b:Lcom/applovin/sdk/AppLovinAd;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/gd;->c:Lcom/applovin/adview/AppLovinAdView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/gd;->a:Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/gd;->b:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/gd;->c:Lcom/applovin/adview/AppLovinAdView;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/q2;->I(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
