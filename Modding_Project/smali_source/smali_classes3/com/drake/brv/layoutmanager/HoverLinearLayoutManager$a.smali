.class Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;
.super Ljava/lang/Object;
.source "HoverLinearLayoutManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->v(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->a:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->a:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->o(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->o(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->p(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager$a;->b:Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;

    .line 31
    .line 32
    const/high16 v2, -0x80000000

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;->q(Lcom/drake/brv/layoutmanager/HoverLinearLayoutManager;II)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
