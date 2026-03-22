.class public final synthetic Lcom/applovin/impl/jf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/g;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/jf;->a:Lcom/applovin/impl/adview/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/jf;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/jf;->a:Lcom/applovin/impl/adview/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/jf;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/v1;->k(Lcom/applovin/impl/adview/g;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
