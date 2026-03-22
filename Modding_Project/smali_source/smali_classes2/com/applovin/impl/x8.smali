.class public final synthetic Lcom/applovin/impl/x8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/c4;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/c4;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/x8;->a:Lcom/applovin/impl/c4;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/x8;->b:Landroid/webkit/WebView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/x8;->a:Lcom/applovin/impl/c4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/x8;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/c4;->e(Lcom/applovin/impl/c4;Landroid/webkit/WebView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
