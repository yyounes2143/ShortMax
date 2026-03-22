.class public final synthetic Lcom/applovin/impl/sdk/network/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/network/b;

.field public final synthetic b:Lcom/applovin/impl/sdk/network/d;

.field public final synthetic c:Lcom/applovin/sdk/AppLovinPostbackListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/d;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/network/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/network/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/sdk/network/f;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/f;->a:Lcom/applovin/impl/sdk/network/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/f;->b:Lcom/applovin/impl/sdk/network/d;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/sdk/network/f;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/network/b;->e(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/d;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
