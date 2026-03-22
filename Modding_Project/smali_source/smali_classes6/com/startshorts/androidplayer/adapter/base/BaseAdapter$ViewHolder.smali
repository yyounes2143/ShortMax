.class public Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:Landroidx/databinding/ViewDataBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->c:Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c()Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->c:Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public f(ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->c()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->n()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->c()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->a(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    new-instance v1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 53
    .line 54
    move-object v2, v1

    .line 55
    move-object v4, p2

    .line 56
    move v5, p1

    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/lang/Object;IJ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->o()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$c;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITD;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->e:Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "ignore_refresh"

    .line 11
    .line 12
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 19
    .line 20
    const-string/jumbo p2, "setItem failed -> PAYLOAD_IGNORE_REFRESH"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->l(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method protected final h(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method protected final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d:I

    .line 2
    .line 3
    return-void
.end method
