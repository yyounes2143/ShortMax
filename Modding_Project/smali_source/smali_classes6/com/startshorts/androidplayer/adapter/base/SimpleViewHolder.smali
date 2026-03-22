.class public abstract Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SimpleViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$d;,
        Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/view/View$OnClickListener;

.field private final h:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->c:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;-><init>(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->g:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$b;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$b;-><init>(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->h:Landroid/view/View$OnLongClickListener;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic c(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$d;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method


# virtual methods
.method public abstract e(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public f(ILjava/lang/Object;Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c<",
            "TT;>;",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->f:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->g:Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p4, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->h:Landroid/view/View$OnLongClickListener;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
