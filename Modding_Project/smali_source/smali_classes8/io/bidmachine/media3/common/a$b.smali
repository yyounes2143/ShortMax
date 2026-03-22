.class public final Lio/bidmachine/media3/common/a$b;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private A:I

.field private B:Lzm/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzm/p;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lzm/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private r:Lio/bidmachine/media3/common/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:J

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:I

.field private y:F

.field private z:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->h:I

    .line 5
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->i:I

    .line 6
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->o:I

    .line 7
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->p:I

    const-wide v1, 0x7fffffffffffffffL

    .line 8
    iput-wide v1, p0, Lio/bidmachine/media3/common/a$b;->s:J

    .line 9
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->u:I

    .line 10
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->v:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    iput v1, p0, Lio/bidmachine/media3/common/a$b;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lio/bidmachine/media3/common/a$b;->y:F

    .line 13
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->A:I

    .line 14
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->C:I

    .line 15
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->D:I

    .line 16
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->E:I

    .line 17
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->F:I

    .line 18
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->I:I

    const/4 v1, 0x1

    .line 19
    iput v1, p0, Lio/bidmachine/media3/common/a$b;->J:I

    .line 20
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->K:I

    .line 21
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->L:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->M:I

    .line 23
    iput v0, p0, Lio/bidmachine/media3/common/a$b;->g:I

    return-void
.end method

.method private constructor <init>(Lio/bidmachine/media3/common/a;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->a:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->b:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->c:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->c:Ljava/util/List;

    .line 28
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->d:Ljava/lang/String;

    .line 29
    iget v0, p1, Lio/bidmachine/media3/common/a;->e:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->e:I

    .line 30
    iget v0, p1, Lio/bidmachine/media3/common/a;->f:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->f:I

    .line 31
    iget v0, p1, Lio/bidmachine/media3/common/a;->h:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->h:I

    .line 32
    iget v0, p1, Lio/bidmachine/media3/common/a;->i:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->i:I

    .line 33
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->j:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->k:Lzm/t;

    .line 35
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->m:Ljava/lang/Object;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->l:Ljava/lang/Object;

    .line 36
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->n:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->m:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->n:Ljava/lang/String;

    .line 38
    iget v0, p1, Lio/bidmachine/media3/common/a;->p:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->o:I

    .line 39
    iget v0, p1, Lio/bidmachine/media3/common/a;->q:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->p:I

    .line 40
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->r:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->q:Ljava/util/List;

    .line 41
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->r:Lio/bidmachine/media3/common/DrmInitData;

    .line 42
    iget-wide v0, p1, Lio/bidmachine/media3/common/a;->t:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/a$b;->s:J

    .line 43
    iget-boolean v0, p1, Lio/bidmachine/media3/common/a;->u:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/a$b;->t:Z

    .line 44
    iget v0, p1, Lio/bidmachine/media3/common/a;->v:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->u:I

    .line 45
    iget v0, p1, Lio/bidmachine/media3/common/a;->w:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->v:I

    .line 46
    iget v0, p1, Lio/bidmachine/media3/common/a;->x:F

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->w:F

    .line 47
    iget v0, p1, Lio/bidmachine/media3/common/a;->y:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->x:I

    .line 48
    iget v0, p1, Lio/bidmachine/media3/common/a;->z:F

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->y:F

    .line 49
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->A:[B

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->z:[B

    .line 50
    iget v0, p1, Lio/bidmachine/media3/common/a;->B:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->A:I

    .line 51
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    iput-object v0, p0, Lio/bidmachine/media3/common/a$b;->B:Lzm/g;

    .line 52
    iget v0, p1, Lio/bidmachine/media3/common/a;->D:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->C:I

    .line 53
    iget v0, p1, Lio/bidmachine/media3/common/a;->E:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->D:I

    .line 54
    iget v0, p1, Lio/bidmachine/media3/common/a;->F:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->E:I

    .line 55
    iget v0, p1, Lio/bidmachine/media3/common/a;->G:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->F:I

    .line 56
    iget v0, p1, Lio/bidmachine/media3/common/a;->H:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->G:I

    .line 57
    iget v0, p1, Lio/bidmachine/media3/common/a;->I:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->H:I

    .line 58
    iget v0, p1, Lio/bidmachine/media3/common/a;->J:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->I:I

    .line 59
    iget v0, p1, Lio/bidmachine/media3/common/a;->K:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->J:I

    .line 60
    iget v0, p1, Lio/bidmachine/media3/common/a;->L:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->K:I

    .line 61
    iget v0, p1, Lio/bidmachine/media3/common/a;->M:I

    iput v0, p0, Lio/bidmachine/media3/common/a$b;->L:I

    .line 62
    iget p1, p1, Lio/bidmachine/media3/common/a;->N:I

    iput p1, p0, Lio/bidmachine/media3/common/a$b;->M:I

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/a$b;-><init>(Lio/bidmachine/media3/common/a;)V

    return-void
.end method

.method static synthetic A(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->G:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->H:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->I:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->J:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->K:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->L:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic G(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->M:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic H(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic J(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic K(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic L(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic M(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic a(Lio/bidmachine/media3/common/a$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lio/bidmachine/media3/common/a$b;)Lzm/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->k:Lzm/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/media3/common/a$b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lio/bidmachine/media3/common/a$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lio/bidmachine/media3/common/a$b;)Lio/bidmachine/media3/common/DrmInitData;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->r:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lio/bidmachine/media3/common/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/common/a$b;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic l(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lio/bidmachine/media3/common/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/common/a$b;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->u:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->v:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lio/bidmachine/media3/common/a$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->w:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->x:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lio/bidmachine/media3/common/a$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->y:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lio/bidmachine/media3/common/a$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->z:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->A:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lio/bidmachine/media3/common/a$b;)Lzm/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->B:Lzm/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->C:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lio/bidmachine/media3/common/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/common/a$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->D:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->E:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lio/bidmachine/media3/common/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/common/a$b;->F:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->L:I

    .line 2
    .line 3
    return-object p0
.end method

.method public B0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->u:I

    .line 2
    .line 3
    return-object p0
.end method

.method public N()Lio/bidmachine/media3/common/a;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/a;-><init>(Lio/bidmachine/media3/common/a$b;Lio/bidmachine/media3/common/a$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public O(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->I:I

    .line 2
    .line 3
    return-object p0
.end method

.method public P(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Q(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public R(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->D:I

    .line 2
    .line 3
    return-object p0
.end method

.method public S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public T(Lzm/g;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Lzm/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->B:Lzm/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lzm/u;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->m:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public V(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->M:I

    .line 2
    .line 3
    return-object p0
.end method

.method public W(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->J:I

    .line 2
    .line 3
    return-object p0
.end method

.method public X(Ljava/lang/Object;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->r:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->G:I

    .line 2
    .line 3
    return-object p0
.end method

.method public a0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->H:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b0(F)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->w:F

    .line 2
    .line 3
    return-object p0
.end method

.method public c0(Z)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/common/a$b;->t:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public d0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lio/bidmachine/media3/common/a$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/p;",
            ">;)",
            "Lio/bidmachine/media3/common/a$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->c:Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public l0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->p:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->C:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Lzm/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->k:Lzm/t;

    .line 2
    .line 3
    return-object p0
.end method

.method public o0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->F:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q0(F)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->y:F

    .line 2
    .line 3
    return-object p0
.end method

.method public r0([B)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->z:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public s0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lzm/u;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/common/a$b;->n:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public v0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->E:I

    .line 2
    .line 3
    return-object p0
.end method

.method public w0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public x0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->A:I

    .line 2
    .line 3
    return-object p0
.end method

.method public y0(J)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/common/a$b;->s:J

    .line 2
    .line 3
    return-object p0
.end method

.method public z0(I)Lio/bidmachine/media3/common/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/common/a$b;->K:I

    .line 2
    .line 3
    return-object p0
.end method
