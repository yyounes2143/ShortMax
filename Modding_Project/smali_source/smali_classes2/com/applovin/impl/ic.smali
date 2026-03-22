.class public final synthetic Lcom/applovin/impl/ic;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/m2;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/m2;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/ic;->a:Lcom/applovin/impl/m2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/ic;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/ic;->c:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/ic;->d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/ic;->a:Lcom/applovin/impl/m2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/ic;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/ic;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/ic;->d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/m2;->e(Lcom/applovin/impl/m2;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
