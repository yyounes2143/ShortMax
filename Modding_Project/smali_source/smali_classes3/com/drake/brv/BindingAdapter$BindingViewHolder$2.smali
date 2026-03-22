.class final Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BindingAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/drake/brv/BindingAdapter$BindingViewHolder;-><init>(Lcom/drake/brv/BindingAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/drake/brv/BindingAdapter$BindingViewHolder;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/drake/brv/BindingAdapter;

.field final synthetic f:Lcom/drake/brv/BindingAdapter$BindingViewHolder;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/drake/brv/BindingAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/drake/brv/BindingAdapter$BindingViewHolder;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/drake/brv/BindingAdapter;",
            "Lcom/drake/brv/BindingAdapter$BindingViewHolder;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->d:Ljava/util/Map$Entry;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->e:Lcom/drake/brv/BindingAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->f:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$setOnDebounceClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->d:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->e:Lcom/drake/brv/BindingAdapter;

    invoke-static {v0}, Lcom/drake/brv/BindingAdapter;->f(Lcom/drake/brv/BindingAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/drake/brv/BindingAdapter$BindingViewHolder$2;->f:Lcom/drake/brv/BindingAdapter$BindingViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
