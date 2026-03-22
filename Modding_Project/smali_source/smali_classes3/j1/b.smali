.class public final synthetic Lj1/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lcom/drake/brv/BindingAdapter;

.field public final synthetic c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj1/b;->a:Ljava/util/Map$Entry;

    .line 5
    .line 6
    iput-object p2, p0, Lj1/b;->b:Lcom/drake/brv/BindingAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lj1/b;->c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lj1/b;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    iget-object v1, p0, Lj1/b;->b:Lcom/drake/brv/BindingAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lj1/b;->c:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->d(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
