.class public final synthetic Lcom/applovin/impl/lc;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/m2;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/m2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/lc;->a:Lcom/applovin/impl/m2;

    .line 5
    .line 6
    iput p2, p0, Lcom/applovin/impl/lc;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/lc;->a:Lcom/applovin/impl/m2;

    .line 2
    .line 3
    iget v1, p0, Lcom/applovin/impl/lc;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/m2;->c(Lcom/applovin/impl/m2;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
