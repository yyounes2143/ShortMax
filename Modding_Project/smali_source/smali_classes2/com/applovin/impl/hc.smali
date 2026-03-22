.class public final synthetic Lcom/applovin/impl/hc;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/m2;

.field public final synthetic b:Landroidx/lifecycle/Lifecycle;

.field public final synthetic c:Lcom/applovin/sdk/AppLovinAd;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/m2;Landroidx/lifecycle/Lifecycle;Lcom/applovin/sdk/AppLovinAd;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/hc;->a:Lcom/applovin/impl/m2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/hc;->b:Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/hc;->c:Lcom/applovin/sdk/AppLovinAd;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/hc;->d:Landroid/view/ViewGroup;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/applovin/impl/hc;->e:Landroid/app/Activity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/hc;->a:Lcom/applovin/impl/m2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/hc;->b:Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/hc;->c:Lcom/applovin/sdk/AppLovinAd;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/hc;->d:Landroid/view/ViewGroup;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/applovin/impl/hc;->e:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/impl/m2;->d(Lcom/applovin/impl/m2;Landroidx/lifecycle/Lifecycle;Lcom/applovin/sdk/AppLovinAd;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
