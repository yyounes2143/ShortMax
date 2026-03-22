.class public final synthetic Lcom/applovin/impl/ag;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/y0;

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/y0;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/ag;->a:Lcom/applovin/impl/y0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/ag;->b:Landroid/app/AlertDialog;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/ag;->c:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/ag;->a:Lcom/applovin/impl/y0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/ag;->b:Landroid/app/AlertDialog;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/ag;->c:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/y0;->a(Lcom/applovin/impl/y0;Landroid/app/AlertDialog;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
