.class public final synthetic Lcom/applovin/impl/mediation/ads/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/applovin/impl/i;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Landroid/app/Activity;Landroid/content/Context;Lcom/applovin/impl/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/l;->a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/l;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/mediation/ads/l;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/mediation/ads/l;->d:Lcom/applovin/impl/i;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/l;->a:Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/l;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/l;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/l;->d:Lcom/applovin/impl/i;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->p(Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Landroid/app/Activity;Landroid/content/Context;Lcom/applovin/impl/i;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
