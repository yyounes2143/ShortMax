.class public final synthetic Lcom/applovin/impl/bg;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/y1;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/applovin/impl/sdk/k;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/y1;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/bg;->a:Lcom/applovin/impl/y1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/bg;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/bg;->c:Lcom/applovin/impl/sdk/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/bg;->a:Lcom/applovin/impl/y1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/bg;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/bg;->c:Lcom/applovin/impl/sdk/k;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/y1;->U(Lcom/applovin/impl/y1;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
