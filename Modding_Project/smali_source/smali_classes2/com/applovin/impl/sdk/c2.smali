.class public final synthetic Lcom/applovin/impl/sdk/c2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/r;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/r;Li/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/c2;->a:Lcom/applovin/impl/sdk/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c2;->a:Lcom/applovin/impl/sdk/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/r;->d(Lcom/applovin/impl/sdk/r;Li/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
