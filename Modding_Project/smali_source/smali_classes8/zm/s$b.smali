.class public final Lzm/s$b;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private A:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private F:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lzm/s$b;->G:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>(Lzm/s;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lzm/s;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->a:Ljava/lang/CharSequence;

    .line 6
    iget-object v0, p1, Lzm/s;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->b:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p1, Lzm/s;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->c:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, p1, Lzm/s;->d:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->d:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, p1, Lzm/s;->e:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->e:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p1, Lzm/s;->f:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->f:Ljava/lang/CharSequence;

    .line 11
    iget-object v0, p1, Lzm/s;->g:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->g:Ljava/lang/CharSequence;

    .line 12
    iget-object v0, p1, Lzm/s;->h:Ljava/lang/Long;

    iput-object v0, p0, Lzm/s$b;->h:Ljava/lang/Long;

    .line 13
    iget-object v0, p1, Lzm/s;->i:[B

    iput-object v0, p0, Lzm/s$b;->i:[B

    .line 14
    iget-object v0, p1, Lzm/s;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->j:Ljava/lang/Integer;

    .line 15
    iget-object v0, p1, Lzm/s;->k:Landroid/net/Uri;

    iput-object v0, p0, Lzm/s$b;->k:Landroid/net/Uri;

    .line 16
    iget-object v0, p1, Lzm/s;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->l:Ljava/lang/Integer;

    .line 17
    iget-object v0, p1, Lzm/s;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->m:Ljava/lang/Integer;

    .line 18
    iget-object v0, p1, Lzm/s;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->n:Ljava/lang/Integer;

    .line 19
    iget-object v0, p1, Lzm/s;->o:Ljava/lang/Boolean;

    iput-object v0, p0, Lzm/s$b;->o:Ljava/lang/Boolean;

    .line 20
    iget-object v0, p1, Lzm/s;->p:Ljava/lang/Boolean;

    iput-object v0, p0, Lzm/s$b;->p:Ljava/lang/Boolean;

    .line 21
    iget-object v0, p1, Lzm/s;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->q:Ljava/lang/Integer;

    .line 22
    iget-object v0, p1, Lzm/s;->s:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->r:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Lzm/s;->t:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->s:Ljava/lang/Integer;

    .line 24
    iget-object v0, p1, Lzm/s;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->t:Ljava/lang/Integer;

    .line 25
    iget-object v0, p1, Lzm/s;->v:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->u:Ljava/lang/Integer;

    .line 26
    iget-object v0, p1, Lzm/s;->w:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->v:Ljava/lang/Integer;

    .line 27
    iget-object v0, p1, Lzm/s;->x:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->w:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p1, Lzm/s;->y:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->x:Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p1, Lzm/s;->z:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->y:Ljava/lang/CharSequence;

    .line 30
    iget-object v0, p1, Lzm/s;->A:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->z:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Lzm/s;->B:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->A:Ljava/lang/Integer;

    .line 32
    iget-object v0, p1, Lzm/s;->C:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->B:Ljava/lang/CharSequence;

    .line 33
    iget-object v0, p1, Lzm/s;->D:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->C:Ljava/lang/CharSequence;

    .line 34
    iget-object v0, p1, Lzm/s;->E:Ljava/lang/CharSequence;

    iput-object v0, p0, Lzm/s$b;->D:Ljava/lang/CharSequence;

    .line 35
    iget-object v0, p1, Lzm/s;->F:Ljava/lang/Integer;

    iput-object v0, p0, Lzm/s$b;->E:Ljava/lang/Integer;

    .line 36
    iget-object v0, p1, Lzm/s;->H:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lzm/s$b;->G:Lcom/google/common/collect/ImmutableList;

    .line 37
    iget-object p1, p1, Lzm/s;->G:Landroid/os/Bundle;

    iput-object p1, p0, Lzm/s$b;->F:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lzm/s;Lzm/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/s$b;-><init>(Lzm/s;)V

    return-void
.end method

.method static synthetic A(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->D:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lzm/s$b;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->G:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lzm/s$b;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->F:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->b:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic G(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->d:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->e:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->f:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a(Lzm/s$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->o:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->g:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lzm/s$b;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->h:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lzm/s$b;)Lzm/y;
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

.method static synthetic e(Lzm/s$b;)Lzm/y;
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

.method static synthetic f(Lzm/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->i:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->j:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lzm/s$b;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->k:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->l:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lzm/s$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->q:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->r:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->s:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->t:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->u:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->x:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->z:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->E:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lzm/s$b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->A:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->B:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lzm/s$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/s$b;->C:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public J()Lzm/s;
    .locals 2

    .line 1
    new-instance v0, Lzm/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/s;-><init>(Lzm/s$b;Lzm/s$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public K([BI)Lzm/s$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lzm/s$b;->i:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lzm/s$b;->j:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, [B

    .line 25
    .line 26
    iput-object p1, p0, Lzm/s$b;->i:[B

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lzm/s$b;->j:Ljava/lang/Integer;

    .line 33
    .line 34
    :cond_1
    return-object p0
.end method

.method public L(Lzm/s;)Lzm/s$b;
    .locals 2
    .param p1    # Lzm/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p1, Lzm/s;->a:Ljava/lang/CharSequence;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lzm/s$b;->p0(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-object v0, p1, Lzm/s;->b:Ljava/lang/CharSequence;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lzm/s$b;->Q(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 16
    .line 17
    .line 18
    :cond_2
    iget-object v0, p1, Lzm/s;->c:Ljava/lang/CharSequence;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lzm/s$b;->P(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 23
    .line 24
    .line 25
    :cond_3
    iget-object v0, p1, Lzm/s;->d:Ljava/lang/CharSequence;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lzm/s$b;->O(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 30
    .line 31
    .line 32
    :cond_4
    iget-object v0, p1, Lzm/s;->e:Ljava/lang/CharSequence;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lzm/s$b;->Y(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 37
    .line 38
    .line 39
    :cond_5
    iget-object v0, p1, Lzm/s;->f:Ljava/lang/CharSequence;

    .line 40
    .line 41
    if-eqz v0, :cond_6

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lzm/s$b;->n0(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 44
    .line 45
    .line 46
    :cond_6
    iget-object v0, p1, Lzm/s;->g:Ljava/lang/CharSequence;

    .line 47
    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lzm/s$b;->W(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 51
    .line 52
    .line 53
    :cond_7
    iget-object v0, p1, Lzm/s;->h:Ljava/lang/Long;

    .line 54
    .line 55
    if-eqz v0, :cond_8

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lzm/s$b;->Z(Ljava/lang/Long;)Lzm/s$b;

    .line 58
    .line 59
    .line 60
    :cond_8
    iget-object v0, p1, Lzm/s;->k:Landroid/net/Uri;

    .line 61
    .line 62
    if-nez v0, :cond_9

    .line 63
    .line 64
    iget-object v1, p1, Lzm/s;->i:[B

    .line 65
    .line 66
    if-eqz v1, :cond_a

    .line 67
    .line 68
    :cond_9
    invoke-virtual {p0, v0}, Lzm/s$b;->S(Landroid/net/Uri;)Lzm/s$b;

    .line 69
    .line 70
    .line 71
    iget-object v0, p1, Lzm/s;->i:[B

    .line 72
    .line 73
    iget-object v1, p1, Lzm/s;->j:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lzm/s$b;->R([BLjava/lang/Integer;)Lzm/s$b;

    .line 76
    .line 77
    .line 78
    :cond_a
    iget-object v0, p1, Lzm/s;->l:Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v0, :cond_b

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lzm/s$b;->s0(Ljava/lang/Integer;)Lzm/s$b;

    .line 83
    .line 84
    .line 85
    :cond_b
    iget-object v0, p1, Lzm/s;->m:Ljava/lang/Integer;

    .line 86
    .line 87
    if-eqz v0, :cond_c

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lzm/s$b;->r0(Ljava/lang/Integer;)Lzm/s$b;

    .line 90
    .line 91
    .line 92
    :cond_c
    iget-object v0, p1, Lzm/s;->n:Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz v0, :cond_d

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lzm/s$b;->b0(Ljava/lang/Integer;)Lzm/s$b;

    .line 97
    .line 98
    .line 99
    :cond_d
    iget-object v0, p1, Lzm/s;->o:Ljava/lang/Boolean;

    .line 100
    .line 101
    if-eqz v0, :cond_e

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lzm/s$b;->d0(Ljava/lang/Boolean;)Lzm/s$b;

    .line 104
    .line 105
    .line 106
    :cond_e
    iget-object v0, p1, Lzm/s;->p:Ljava/lang/Boolean;

    .line 107
    .line 108
    if-eqz v0, :cond_f

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lzm/s$b;->e0(Ljava/lang/Boolean;)Lzm/s$b;

    .line 111
    .line 112
    .line 113
    :cond_f
    iget-object v0, p1, Lzm/s;->q:Ljava/lang/Integer;

    .line 114
    .line 115
    if-eqz v0, :cond_10

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lzm/s$b;->i0(Ljava/lang/Integer;)Lzm/s$b;

    .line 118
    .line 119
    .line 120
    :cond_10
    iget-object v0, p1, Lzm/s;->r:Ljava/lang/Integer;

    .line 121
    .line 122
    if-eqz v0, :cond_11

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lzm/s$b;->i0(Ljava/lang/Integer;)Lzm/s$b;

    .line 125
    .line 126
    .line 127
    :cond_11
    iget-object v0, p1, Lzm/s;->s:Ljava/lang/Integer;

    .line 128
    .line 129
    if-eqz v0, :cond_12

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lzm/s$b;->h0(Ljava/lang/Integer;)Lzm/s$b;

    .line 132
    .line 133
    .line 134
    :cond_12
    iget-object v0, p1, Lzm/s;->t:Ljava/lang/Integer;

    .line 135
    .line 136
    if-eqz v0, :cond_13

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lzm/s$b;->g0(Ljava/lang/Integer;)Lzm/s$b;

    .line 139
    .line 140
    .line 141
    :cond_13
    iget-object v0, p1, Lzm/s;->u:Ljava/lang/Integer;

    .line 142
    .line 143
    if-eqz v0, :cond_14

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lzm/s$b;->l0(Ljava/lang/Integer;)Lzm/s$b;

    .line 146
    .line 147
    .line 148
    :cond_14
    iget-object v0, p1, Lzm/s;->v:Ljava/lang/Integer;

    .line 149
    .line 150
    if-eqz v0, :cond_15

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lzm/s$b;->k0(Ljava/lang/Integer;)Lzm/s$b;

    .line 153
    .line 154
    .line 155
    :cond_15
    iget-object v0, p1, Lzm/s;->w:Ljava/lang/Integer;

    .line 156
    .line 157
    if-eqz v0, :cond_16

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lzm/s$b;->j0(Ljava/lang/Integer;)Lzm/s$b;

    .line 160
    .line 161
    .line 162
    :cond_16
    iget-object v0, p1, Lzm/s;->x:Ljava/lang/CharSequence;

    .line 163
    .line 164
    if-eqz v0, :cond_17

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lzm/s$b;->t0(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 167
    .line 168
    .line 169
    :cond_17
    iget-object v0, p1, Lzm/s;->y:Ljava/lang/CharSequence;

    .line 170
    .line 171
    if-eqz v0, :cond_18

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lzm/s$b;->U(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 174
    .line 175
    .line 176
    :cond_18
    iget-object v0, p1, Lzm/s;->z:Ljava/lang/CharSequence;

    .line 177
    .line 178
    if-eqz v0, :cond_19

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lzm/s$b;->V(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 181
    .line 182
    .line 183
    :cond_19
    iget-object v0, p1, Lzm/s;->A:Ljava/lang/Integer;

    .line 184
    .line 185
    if-eqz v0, :cond_1a

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lzm/s$b;->X(Ljava/lang/Integer;)Lzm/s$b;

    .line 188
    .line 189
    .line 190
    :cond_1a
    iget-object v0, p1, Lzm/s;->B:Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz v0, :cond_1b

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lzm/s$b;->q0(Ljava/lang/Integer;)Lzm/s$b;

    .line 195
    .line 196
    .line 197
    :cond_1b
    iget-object v0, p1, Lzm/s;->C:Ljava/lang/CharSequence;

    .line 198
    .line 199
    if-eqz v0, :cond_1c

    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lzm/s$b;->c0(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 202
    .line 203
    .line 204
    :cond_1c
    iget-object v0, p1, Lzm/s;->D:Ljava/lang/CharSequence;

    .line 205
    .line 206
    if-eqz v0, :cond_1d

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lzm/s$b;->T(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 209
    .line 210
    .line 211
    :cond_1d
    iget-object v0, p1, Lzm/s;->E:Ljava/lang/CharSequence;

    .line 212
    .line 213
    if-eqz v0, :cond_1e

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lzm/s$b;->m0(Ljava/lang/CharSequence;)Lzm/s$b;

    .line 216
    .line 217
    .line 218
    :cond_1e
    iget-object v0, p1, Lzm/s;->F:Ljava/lang/Integer;

    .line 219
    .line 220
    if-eqz v0, :cond_1f

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Lzm/s$b;->f0(Ljava/lang/Integer;)Lzm/s$b;

    .line 223
    .line 224
    .line 225
    :cond_1f
    iget-object v0, p1, Lzm/s;->G:Landroid/os/Bundle;

    .line 226
    .line 227
    if-eqz v0, :cond_20

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lzm/s$b;->a0(Landroid/os/Bundle;)Lzm/s$b;

    .line 230
    .line 231
    .line 232
    :cond_20
    iget-object v0, p1, Lzm/s;->H:Lcom/google/common/collect/ImmutableList;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_21

    .line 239
    .line 240
    iget-object p1, p1, Lzm/s;->H:Lcom/google/common/collect/ImmutableList;

    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lzm/s$b;->o0(Ljava/util/List;)Lzm/s$b;

    .line 243
    .line 244
    .line 245
    :cond_21
    return-object p0
.end method

.method public M(Ljava/util/List;)Lzm/s$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/t;",
            ">;)",
            "Lzm/s$b;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lzm/t;

    .line 14
    .line 15
    move v3, v0

    .line 16
    :goto_1
    invoke-virtual {v2}, Lzm/t;->e()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lzm/t;->d(I)Lzm/t$a;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v4, p0}, Lzm/t$a;->a(Lzm/s$b;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0
.end method

.method public N(Lzm/t;)Lzm/s$b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lzm/t;->e()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lzm/t;->d(I)Lzm/t$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p0}, Lzm/t$a;->a(Lzm/s$b;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0
.end method

.method public O(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->d:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public P(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public Q(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->b:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public R([BLjava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [B

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lzm/s$b;->i:[B

    .line 12
    .line 13
    iput-object p2, p0, Lzm/s$b;->j:Ljava/lang/Integer;

    .line 14
    .line 15
    return-object p0
.end method

.method public S(Landroid/net/Uri;)Lzm/s$b;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->k:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public T(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->C:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public U(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->x:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public V(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public W(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->g:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public X(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->z:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->e:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z(Ljava/lang/Long;)Lzm/s$b;
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lzm/s$b;->h:Ljava/lang/Long;

    .line 21
    .line 22
    return-object p0
.end method

.method public a0(Landroid/os/Bundle;)Lzm/s$b;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->F:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public b0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lzm/s$b;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public c0(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->B:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public d0(Ljava/lang/Boolean;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->o:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public e0(Ljava/lang/Boolean;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public f0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->E:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public g0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x1fL
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->s:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public h0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->r:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public i0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->q:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public j0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x1fL
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public k0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->u:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public l0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->t:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public m0(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->D:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public n0(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->f:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public o0(Ljava/util/List;)Lzm/s$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lzm/s$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lzm/s$b;->G:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    return-object p0
.end method

.method public p0(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public q0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->A:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public r0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public s0(Ljava/lang/Integer;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->l:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public t0(Ljava/lang/CharSequence;)Lzm/s$b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/s$b;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method
