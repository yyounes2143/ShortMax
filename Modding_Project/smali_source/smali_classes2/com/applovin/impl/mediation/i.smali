.class public final synthetic Lcom/applovin/impl/mediation/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field public final synthetic b:Lcom/applovin/impl/z2;

.field public final synthetic c:Lcom/applovin/impl/mediation/h;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lcom/applovin/impl/mediation/ads/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/mediation/i;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/mediation/i;->b:Lcom/applovin/impl/z2;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/mediation/h;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/mediation/i;->d:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/applovin/impl/mediation/i;->e:Lcom/applovin/impl/mediation/ads/a$a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/i;->a:Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/mediation/i;->b:Lcom/applovin/impl/z2;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/mediation/i;->c:Lcom/applovin/impl/mediation/h;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/mediation/i;->d:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/applovin/impl/mediation/i;->e:Lcom/applovin/impl/mediation/ads/a$a;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->h(Lcom/applovin/impl/mediation/MediationServiceImpl;Lcom/applovin/impl/z2;Lcom/applovin/impl/mediation/h;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
