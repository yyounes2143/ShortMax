.class public Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "SelectableAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "TD;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final v:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:I

.field private p:I

.field private q:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
            "TD;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->v:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(I)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->r:Z

    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;

    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;)V

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->s:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 29
    .line 30
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    .line 31
    .line 32
    return-void
.end method

.method public final F()Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$c<",
            "TD;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected final G(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TD;I)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "d"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->r:Z

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->L(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->q:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;

    .line 35
    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    invoke-interface {p2, p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->t:Z

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->E()V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->q:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-interface {p2, p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->u:Z

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->q:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-interface {p2, p1, p3, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public final H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public final I(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public final J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->q:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public final L(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    .line 7
    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    .line 14
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    .line 15
    .line 16
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->s:Z

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->p:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->o:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SelectableAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const/4 p3, 0x2

    .line 18
    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
