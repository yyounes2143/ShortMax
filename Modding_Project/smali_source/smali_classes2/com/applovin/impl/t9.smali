.class public final synthetic Lcom/applovin/impl/t9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/d6;

.field public final synthetic b:Lcom/applovin/mediation/MaxError;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/d6;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/t9;->a:Lcom/applovin/impl/d6;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/t9;->b:Lcom/applovin/mediation/MaxError;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/t9;->a:Lcom/applovin/impl/d6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/t9;->b:Lcom/applovin/mediation/MaxError;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/d6;->h(Lcom/applovin/impl/d6;Lcom/applovin/mediation/MaxError;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
