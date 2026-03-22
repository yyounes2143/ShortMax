.class public final synthetic Lcom/facebook/internal/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/WebDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/x0;->a:Lcom/facebook/internal/WebDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/x0;->a:Lcom/facebook/internal/WebDialog;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/internal/WebDialog;->b(Lcom/facebook/internal/WebDialog;Landroid/content/DialogInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
