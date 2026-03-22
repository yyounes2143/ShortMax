.class public final Lzm/q$c;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lzm/q$d$a;

.field private e:Lzm/q$f$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lzm/q$k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:J

.field private k:Lzm/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lzm/q$g$a;

.field private m:Lzm/q$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lzm/q$d$a;

    invoke-direct {v0}, Lzm/q$d$a;-><init>()V

    iput-object v0, p0, Lzm/q$c;->d:Lzm/q$d$a;

    .line 4
    new-instance v0, Lzm/q$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzm/q$f$a;-><init>(Lzm/q$a;)V

    iput-object v0, p0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzm/q$c;->f:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lzm/q$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 7
    new-instance v0, Lzm/q$g$a;

    invoke-direct {v0}, Lzm/q$g$a;-><init>()V

    iput-object v0, p0, Lzm/q$c;->l:Lzm/q$g$a;

    .line 8
    sget-object v0, Lzm/q$i;->d:Lzm/q$i;

    iput-object v0, p0, Lzm/q$c;->m:Lzm/q$i;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lzm/q$c;->j:J

    return-void
.end method

.method private constructor <init>(Lzm/q;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lzm/q$c;-><init>()V

    .line 11
    iget-object v0, p1, Lzm/q;->f:Lzm/q$d;

    invoke-virtual {v0}, Lzm/q$d;->a()Lzm/q$d$a;

    move-result-object v0

    iput-object v0, p0, Lzm/q$c;->d:Lzm/q$d$a;

    .line 12
    iget-object v0, p1, Lzm/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$c;->a:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lzm/q;->e:Lzm/s;

    iput-object v0, p0, Lzm/q$c;->k:Lzm/s;

    .line 14
    iget-object v0, p1, Lzm/q;->d:Lzm/q$g;

    invoke-virtual {v0}, Lzm/q$g;->a()Lzm/q$g$a;

    move-result-object v0

    iput-object v0, p0, Lzm/q$c;->l:Lzm/q$g$a;

    .line 15
    iget-object v0, p1, Lzm/q;->h:Lzm/q$i;

    iput-object v0, p0, Lzm/q$c;->m:Lzm/q$i;

    .line 16
    iget-object p1, p1, Lzm/q;->b:Lzm/q$h;

    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p1, Lzm/q$h;->e:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$c;->g:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lzm/q$h;->b:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$c;->c:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lzm/q$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lzm/q$c;->b:Landroid/net/Uri;

    .line 20
    iget-object v0, p1, Lzm/q$h;->d:Ljava/util/List;

    iput-object v0, p0, Lzm/q$c;->f:Ljava/util/List;

    .line 21
    iget-object v0, p1, Lzm/q$h;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lzm/q$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 22
    iget-object v0, p1, Lzm/q$h;->h:Ljava/lang/Object;

    iput-object v0, p0, Lzm/q$c;->i:Ljava/lang/Object;

    .line 23
    iget-object v0, p1, Lzm/q$h;->c:Lzm/q$f;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lzm/q$f;->b()Lzm/q$f$a;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lzm/q$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzm/q$f$a;-><init>(Lzm/q$a;)V

    :goto_0
    iput-object v0, p0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 26
    iget-wide v0, p1, Lzm/q$h;->i:J

    iput-wide v0, p0, Lzm/q$c;->j:J

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lzm/q;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$c;-><init>(Lzm/q;)V

    return-void
.end method


# virtual methods
.method public a()Lzm/q;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 4
    .line 5
    invoke-static {v1}, Lzm/q$f$a;->e(Lzm/q$f$a;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 12
    .line 13
    invoke-static {v1}, Lzm/q$f$a;->f(Lzm/q$f$a;)Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 23
    :goto_1
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lzm/q$c;->b:Landroid/net/Uri;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    new-instance v14, Lzm/q$h;

    .line 32
    .line 33
    iget-object v4, v0, Lzm/q$c;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 36
    .line 37
    invoke-static {v2}, Lzm/q$f$a;->f(Lzm/q$f$a;)Ljava/util/UUID;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v1, v0, Lzm/q$c;->e:Lzm/q$f$a;

    .line 44
    .line 45
    invoke-virtual {v1}, Lzm/q$f$a;->i()Lzm/q$f;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_2
    move-object v5, v1

    .line 50
    iget-object v7, v0, Lzm/q$c;->f:Ljava/util/List;

    .line 51
    .line 52
    iget-object v8, v0, Lzm/q$c;->g:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v9, v0, Lzm/q$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    iget-object v10, v0, Lzm/q$c;->i:Ljava/lang/Object;

    .line 57
    .line 58
    iget-wide v11, v0, Lzm/q$c;->j:J

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v2, v14

    .line 63
    invoke-direct/range {v2 .. v13}, Lzm/q$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Lzm/q$f;Lzm/q$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLzm/q$a;)V

    .line 64
    .line 65
    .line 66
    move-object/from16 v18, v14

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object/from16 v18, v1

    .line 70
    .line 71
    :goto_2
    new-instance v1, Lzm/q;

    .line 72
    .line 73
    iget-object v2, v0, Lzm/q$c;->a:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    :goto_3
    move-object/from16 v16, v2

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const-string v2, ""

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_4
    iget-object v2, v0, Lzm/q$c;->d:Lzm/q$d$a;

    .line 84
    .line 85
    invoke-virtual {v2}, Lzm/q$d$a;->g()Lzm/q$e;

    .line 86
    .line 87
    .line 88
    move-result-object v17

    .line 89
    iget-object v2, v0, Lzm/q$c;->l:Lzm/q$g$a;

    .line 90
    .line 91
    invoke-virtual {v2}, Lzm/q$g$a;->f()Lzm/q$g;

    .line 92
    .line 93
    .line 94
    move-result-object v19

    .line 95
    iget-object v2, v0, Lzm/q$c;->k:Lzm/s;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    :goto_5
    move-object/from16 v20, v2

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_5
    sget-object v2, Lzm/s;->I:Lzm/s;

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :goto_6
    iget-object v2, v0, Lzm/q$c;->m:Lzm/q$i;

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    move-object v15, v1

    .line 110
    move-object/from16 v21, v2

    .line 111
    .line 112
    invoke-direct/range {v15 .. v22}, Lzm/q;-><init>(Ljava/lang/String;Lzm/q$e;Lzm/q$h;Lzm/q$g;Lzm/s;Lzm/q$i;Lzm/q$a;)V

    .line 113
    .line 114
    .line 115
    return-object v1
.end method

.method public b(Lzm/q$g;)Lzm/q$c;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lzm/q$g;->a()Lzm/q$g$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lzm/q$c;->l:Lzm/q$g$a;

    .line 6
    .line 7
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lzm/q$c;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lzm/q$c;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public d(Ljava/util/List;)Lzm/q$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/q$k;",
            ">;)",
            "Lzm/q$c;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lzm/q$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    return-object p0
.end method

.method public e(Ljava/lang/Object;)Lzm/q$c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/q$c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Landroid/net/Uri;)Lzm/q$c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/q$c;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lzm/q$c;
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
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lzm/q$c;->f(Landroid/net/Uri;)Lzm/q$c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
