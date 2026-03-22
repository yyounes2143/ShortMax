.class public final Lcom/drake/brv/PageRefreshLayout$b;
.super Ljava/lang/Object;
.source "PageRefreshLayout.kt"

# interfaces
.implements Lm1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/drake/brv/PageRefreshLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/drake/brv/PageRefreshLayout;


# direct methods
.method constructor <init>(Lcom/drake/brv/PageRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/drake/brv/PageRefreshLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/drake/brv/PageRefreshLayout$b;->c(Lcom/drake/brv/PageRefreshLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/drake/brv/PageRefreshLayout;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->getState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/drake/brv/PageRefreshLayout;->O(Lcom/drake/brv/PageRefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p0}, Lcom/drake/brv/PageRefreshLayout;->c(Lsc/f;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/drake/brv/BindingAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drake/brv/BindingAdapter$BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "holder"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/drake/brv/PageRefreshLayout;->L(Lcom/drake/brv/PageRefreshLayout;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iget-object p3, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 25
    .line 26
    invoke-static {p3}, Lcom/drake/brv/PageRefreshLayout;->M(Lcom/drake/brv/PageRefreshLayout;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/drake/brv/PageRefreshLayout;->getPreloadIndex()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 p3, -0x1

    .line 45
    if-eq p1, p3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter;->getItemCount()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/drake/brv/PageRefreshLayout;->getPreloadIndex()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    sub-int/2addr p1, p2

    .line 58
    if-gt p1, p4, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout$b;->a:Lcom/drake/brv/PageRefreshLayout;

    .line 61
    .line 62
    new-instance p2, Lj1/d;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lj1/d;-><init>(Lcom/drake/brv/PageRefreshLayout;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method
