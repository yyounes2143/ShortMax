.class public final synthetic Lcom/applovin/impl/k9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/d1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/d1;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/k9;->a:Lcom/applovin/impl/d1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/k9;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/k9;->c:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k9;->a:Lcom/applovin/impl/d1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/k9;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/k9;->c:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/d1;->g(Lcom/applovin/impl/d1;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
