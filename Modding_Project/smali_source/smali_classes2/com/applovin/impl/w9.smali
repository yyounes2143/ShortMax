.class public final synthetic Lcom/applovin/impl/w9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/e1;

.field public final synthetic b:Lcom/applovin/impl/adview/a;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/e1;Lcom/applovin/impl/adview/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/w9;->a:Lcom/applovin/impl/e1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/w9;->b:Lcom/applovin/impl/adview/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/w9;->c:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/w9;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/w9;->a:Lcom/applovin/impl/e1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/w9;->b:Lcom/applovin/impl/adview/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/w9;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/w9;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/e1;->c(Lcom/applovin/impl/e1;Lcom/applovin/impl/adview/a;Landroid/app/Activity;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
