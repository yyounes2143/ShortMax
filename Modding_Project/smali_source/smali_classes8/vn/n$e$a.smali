.class public final Lvn/n$e$a;
.super Lzm/d0$c;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn/n$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private final U:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lsn/x;",
            "Lvn/n$f;",
            ">;>;"
        }
    .end annotation
.end field

.field private final V:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lzm/d0$c;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lvn/n$e$a;->U:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lvn/n$e$a;->V:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p0}, Lvn/n$e$a;->k0()V

    return-void
.end method

.method private constructor <init>(Lvn/n$e;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lzm/d0$c;-><init>(Lzm/d0;)V

    .line 7
    iget-boolean v0, p1, Lvn/n$e;->p0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->F:Z

    .line 8
    iget-boolean v0, p1, Lvn/n$e;->q0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->G:Z

    .line 9
    iget-boolean v0, p1, Lvn/n$e;->r0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->H:Z

    .line 10
    iget-boolean v0, p1, Lvn/n$e;->s0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->I:Z

    .line 11
    iget-boolean v0, p1, Lvn/n$e;->t0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->J:Z

    .line 12
    iget-boolean v0, p1, Lvn/n$e;->u0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->K:Z

    .line 13
    iget-boolean v0, p1, Lvn/n$e;->v0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->L:Z

    .line 14
    iget-boolean v0, p1, Lvn/n$e;->w0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->M:Z

    .line 15
    iget-boolean v0, p1, Lvn/n$e;->x0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->N:Z

    .line 16
    iget-boolean v0, p1, Lvn/n$e;->y0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->O:Z

    .line 17
    iget-boolean v0, p1, Lvn/n$e;->z0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->P:Z

    .line 18
    iget-boolean v0, p1, Lvn/n$e;->A0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->Q:Z

    .line 19
    iget-boolean v0, p1, Lvn/n$e;->B0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->R:Z

    .line 20
    iget-boolean v0, p1, Lvn/n$e;->C0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->S:Z

    .line 21
    iget-boolean v0, p1, Lvn/n$e;->D0:Z

    iput-boolean v0, p0, Lvn/n$e$a;->T:Z

    .line 22
    invoke-static {p1}, Lvn/n$e;->b(Lvn/n$e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lvn/n$e$a;->j0(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lvn/n$e$a;->U:Landroid/util/SparseArray;

    .line 23
    invoke-static {p1}, Lvn/n$e;->c(Lvn/n$e;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lvn/n$e$a;->V:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lvn/n$e;Lvn/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvn/n$e$a;-><init>(Lvn/n$e;)V

    return-void
.end method

.method static synthetic Q(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->F:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->G:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic S(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->H:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->I:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic U(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->J:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic V(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->K:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic W(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->L:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic X(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->M:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Y(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->N:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Z(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->O:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic a0(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->P:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b0(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->Q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c0(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->R:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d0(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->S:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e0(Lvn/n$e$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvn/n$e$a;->T:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f0(Lvn/n$e$a;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lvn/n$e$a;->U:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g0(Lvn/n$e$a;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lvn/n$e$a;->V:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    return-object p0
.end method

.method private static j0(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lsn/x;",
            "Lvn/n$f;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lsn/x;",
            "Lvn/n$f;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/util/Map;

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method private k0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvn/n$e$a;->F:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lvn/n$e$a;->G:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lvn/n$e$a;->H:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lvn/n$e$a;->I:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lvn/n$e$a;->J:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lvn/n$e$a;->K:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lvn/n$e$a;->L:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lvn/n$e$a;->M:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lvn/n$e$a;->N:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lvn/n$e$a;->O:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lvn/n$e$a;->P:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lvn/n$e$a;->Q:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lvn/n$e$a;->R:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lvn/n$e$a;->S:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lvn/n$e$a;->T:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic F()Lzm/d0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvn/n$e$a;->h0()Lvn/n$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic G(I)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->i0(I)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic K(I)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->m0(I)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L(Lzm/c0;)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->n0(Lzm/c0;)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic M(Ljava/lang/String;)Lzm/d0$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->o0(Ljava/lang/String;)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic N([Ljava/lang/String;)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->p0([Ljava/lang/String;)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic O(I)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvn/n$e$a;->q0(I)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic P(IZ)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lvn/n$e$a;->r0(IZ)Lvn/n$e$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h0()Lvn/n$e;
    .locals 2

    .line 1
    new-instance v0, Lvn/n$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lvn/n$e;-><init>(Lvn/n$e$a;Lvn/n$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public i0(I)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->G(I)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method protected l0(Lzm/d0;)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->J(Lzm/d0;)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public m0(I)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->K(I)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public n0(Lzm/c0;)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->L(Lzm/c0;)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public o0(Ljava/lang/String;)Lvn/n$e$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->M(Ljava/lang/String;)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public varargs p0([Ljava/lang/String;)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->N([Ljava/lang/String;)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public q0(I)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lzm/d0$c;->O(I)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public r0(IZ)Lvn/n$e$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lzm/d0$c;->P(IZ)Lzm/d0$c;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
