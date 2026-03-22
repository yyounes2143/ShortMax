.class public final synthetic Lcom/applovin/impl/mediation/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/h;

.field public final synthetic b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/h;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/mediation/y;->a:Lcom/applovin/impl/mediation/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/mediation/y;->b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/mediation/y;->c:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/y;->a:Lcom/applovin/impl/mediation/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/mediation/y;->b:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/mediation/y;->c:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/mediation/h;->l(Lcom/applovin/impl/mediation/h;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
