.class public Lzm/d0$c;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lzm/b0;",
            "Lzm/c0;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lzm/d0$b;

.field private v:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lzm/d0$c;->a:I

    .line 3
    iput v0, p0, Lzm/d0$c;->b:I

    .line 4
    iput v0, p0, Lzm/d0$c;->c:I

    .line 5
    iput v0, p0, Lzm/d0$c;->d:I

    .line 6
    iput v0, p0, Lzm/d0$c;->i:I

    .line 7
    iput v0, p0, Lzm/d0$c;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lzm/d0$c;->k:Z

    .line 9
    iput-boolean v1, p0, Lzm/d0$c;->l:Z

    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lzm/d0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lzm/d0$c;->n:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lzm/d0$c;->o:I

    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lzm/d0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 14
    iput v2, p0, Lzm/d0$c;->q:I

    .line 15
    iput v0, p0, Lzm/d0$c;->r:I

    .line 16
    iput v0, p0, Lzm/d0$c;->s:I

    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lzm/d0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 18
    sget-object v0, Lzm/d0$b;->d:Lzm/d0$b;

    iput-object v0, p0, Lzm/d0$c;->u:Lzm/d0$b;

    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lzm/d0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 20
    iput v2, p0, Lzm/d0$c;->w:I

    .line 21
    iput-boolean v1, p0, Lzm/d0$c;->x:Z

    .line 22
    iput v2, p0, Lzm/d0$c;->y:I

    .line 23
    iput-boolean v2, p0, Lzm/d0$c;->z:Z

    .line 24
    iput-boolean v2, p0, Lzm/d0$c;->A:Z

    .line 25
    iput-boolean v2, p0, Lzm/d0$c;->B:Z

    .line 26
    iput-boolean v2, p0, Lzm/d0$c;->C:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzm/d0$c;->D:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzm/d0$c;->E:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>(Lzm/d0;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lzm/d0$c;->H(Lzm/d0;)V

    return-void
.end method

.method static synthetic A(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->A:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lzm/d0$c;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lzm/d0$c;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->E:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method private H(Lzm/d0;)V
    .locals 2

    .line 1
    iget v0, p1, Lzm/d0;->a:I

    .line 2
    .line 3
    iput v0, p0, Lzm/d0$c;->a:I

    .line 4
    .line 5
    iget v0, p1, Lzm/d0;->b:I

    .line 6
    .line 7
    iput v0, p0, Lzm/d0$c;->b:I

    .line 8
    .line 9
    iget v0, p1, Lzm/d0;->c:I

    .line 10
    .line 11
    iput v0, p0, Lzm/d0$c;->c:I

    .line 12
    .line 13
    iget v0, p1, Lzm/d0;->d:I

    .line 14
    .line 15
    iput v0, p0, Lzm/d0$c;->d:I

    .line 16
    .line 17
    iget v0, p1, Lzm/d0;->e:I

    .line 18
    .line 19
    iput v0, p0, Lzm/d0$c;->e:I

    .line 20
    .line 21
    iget v0, p1, Lzm/d0;->f:I

    .line 22
    .line 23
    iput v0, p0, Lzm/d0$c;->f:I

    .line 24
    .line 25
    iget v0, p1, Lzm/d0;->g:I

    .line 26
    .line 27
    iput v0, p0, Lzm/d0$c;->g:I

    .line 28
    .line 29
    iget v0, p1, Lzm/d0;->h:I

    .line 30
    .line 31
    iput v0, p0, Lzm/d0$c;->h:I

    .line 32
    .line 33
    iget v0, p1, Lzm/d0;->i:I

    .line 34
    .line 35
    iput v0, p0, Lzm/d0$c;->i:I

    .line 36
    .line 37
    iget v0, p1, Lzm/d0;->j:I

    .line 38
    .line 39
    iput v0, p0, Lzm/d0$c;->j:I

    .line 40
    .line 41
    iget-boolean v0, p1, Lzm/d0;->k:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lzm/d0$c;->k:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Lzm/d0;->l:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lzm/d0$c;->l:Z

    .line 48
    .line 49
    iget-object v0, p1, Lzm/d0;->m:Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    iput-object v0, p0, Lzm/d0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    iget-object v0, p1, Lzm/d0;->n:Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    iput-object v0, p0, Lzm/d0$c;->n:Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    iget v0, p1, Lzm/d0;->o:I

    .line 58
    .line 59
    iput v0, p0, Lzm/d0$c;->o:I

    .line 60
    .line 61
    iget-object v0, p1, Lzm/d0;->p:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    iput-object v0, p0, Lzm/d0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    iget v0, p1, Lzm/d0;->q:I

    .line 66
    .line 67
    iput v0, p0, Lzm/d0$c;->q:I

    .line 68
    .line 69
    iget v0, p1, Lzm/d0;->r:I

    .line 70
    .line 71
    iput v0, p0, Lzm/d0$c;->r:I

    .line 72
    .line 73
    iget v0, p1, Lzm/d0;->s:I

    .line 74
    .line 75
    iput v0, p0, Lzm/d0$c;->s:I

    .line 76
    .line 77
    iget-object v0, p1, Lzm/d0;->t:Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    iput-object v0, p0, Lzm/d0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    iget-object v0, p1, Lzm/d0;->u:Lzm/d0$b;

    .line 82
    .line 83
    iput-object v0, p0, Lzm/d0$c;->u:Lzm/d0$b;

    .line 84
    .line 85
    iget-object v0, p1, Lzm/d0;->v:Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    iput-object v0, p0, Lzm/d0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    iget v0, p1, Lzm/d0;->w:I

    .line 90
    .line 91
    iput v0, p0, Lzm/d0$c;->w:I

    .line 92
    .line 93
    iget-boolean v0, p1, Lzm/d0;->x:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Lzm/d0$c;->x:Z

    .line 96
    .line 97
    iget v0, p1, Lzm/d0;->y:I

    .line 98
    .line 99
    iput v0, p0, Lzm/d0$c;->y:I

    .line 100
    .line 101
    iget-boolean v0, p1, Lzm/d0;->z:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lzm/d0$c;->z:Z

    .line 104
    .line 105
    iget-boolean v0, p1, Lzm/d0;->A:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lzm/d0$c;->A:Z

    .line 108
    .line 109
    iget-boolean v0, p1, Lzm/d0;->B:Z

    .line 110
    .line 111
    iput-boolean v0, p0, Lzm/d0$c;->B:Z

    .line 112
    .line 113
    iget-boolean v0, p1, Lzm/d0;->C:Z

    .line 114
    .line 115
    iput-boolean v0, p0, Lzm/d0$c;->C:Z

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashSet;

    .line 118
    .line 119
    iget-object v1, p1, Lzm/d0;->E:Lcom/google/common/collect/ImmutableSet;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lzm/d0$c;->E:Ljava/util/HashSet;

    .line 125
    .line 126
    new-instance v0, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object p1, p1, Lzm/d0;->D:Lcom/google/common/collect/ImmutableMap;

    .line 129
    .line 130
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lzm/d0$c;->D:Ljava/util/HashMap;

    .line 134
    .line 135
    return-void
.end method

.method private static I([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v3}, Lcn/m0;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method static synthetic a(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lzm/d0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lzm/d0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->n:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lzm/d0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->r:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->s:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Lzm/d0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lzm/d0$c;)Lzm/d0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->u:Lzm/d0$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lzm/d0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/d0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->w:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lzm/d0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/d0$c;->y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lzm/d0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/d0$c;->z:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public F()Lzm/d0;
    .locals 1

    .line 1
    new-instance v0, Lzm/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lzm/d0;-><init>(Lzm/d0$c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public G(I)Lzm/d0$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lzm/d0$c;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lzm/c0;

    .line 22
    .line 23
    invoke-virtual {v1}, Lzm/c0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method protected J(Lzm/d0;)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/d0$c;->H(Lzm/d0;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public K(I)Lzm/d0$c;
    .locals 0

    .line 1
    iput p1, p0, Lzm/d0$c;->y:I

    .line 2
    .line 3
    return-object p0
.end method

.method public L(Lzm/c0;)Lzm/d0$c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lzm/c0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lzm/d0$c;->G(I)Lzm/d0$c;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lzm/d0$c;->D:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p1, Lzm/c0;->a:Lzm/b0;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public M(Ljava/lang/String;)Lzm/d0$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lzm/d0$c;->N([Ljava/lang/String;)Lzm/d0$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lzm/d0$c;->N([Ljava/lang/String;)Lzm/d0$c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method

.method public varargs N([Ljava/lang/String;)Lzm/d0$c;
    .locals 0

    .line 1
    invoke-static {p1}, Lzm/d0$c;->I([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lzm/d0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lzm/d0$c;->x:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public O(I)Lzm/d0$c;
    .locals 0

    .line 1
    iput p1, p0, Lzm/d0$c;->w:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lzm/d0$c;->x:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public P(IZ)Lzm/d0$c;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lzm/d0$c;->E:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lzm/d0$c;->E:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method
