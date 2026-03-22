.class public Lkn/j$c;
.super Lkn/j;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final i:Landroid/net/Uri;

.field public final j:J

.field private final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lkn/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Lkn/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/common/a;Ljava/util/List;Lkn/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Lkn/b;",
            ">;",
            "Lkn/k$e;",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;",
            "Ljava/util/List<",
            "Lkn/e;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    const/4 v9, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    move-object/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lkn/j;-><init>(JLio/bidmachine/media3/common/a;Ljava/util/List;Lkn/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkn/j$a;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    move-object v1, p4

    .line 20
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lkn/b;

    .line 25
    .line 26
    iget-object v0, v0, Lkn/b;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v10, Lkn/j$c;->i:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-virtual/range {p5 .. p5}, Lkn/k$e;->c()Lkn/i;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v10, Lkn/j$c;->l:Lkn/i;

    .line 39
    .line 40
    move-object/from16 v1, p9

    .line 41
    .line 42
    iput-object v1, v10, Lkn/j$c;->k:Ljava/lang/String;

    .line 43
    .line 44
    move-wide/from16 v1, p10

    .line 45
    .line 46
    iput-wide v1, v10, Lkn/j$c;->j:J

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lkn/m;

    .line 53
    .line 54
    new-instance v3, Lkn/i;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    move-object p1, v3

    .line 60
    move-object p2, v4

    .line 61
    move-wide p3, v5

    .line 62
    move-wide/from16 p5, p10

    .line 63
    .line 64
    invoke-direct/range {p1 .. p6}, Lkn/i;-><init>(Ljava/lang/String;JJ)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v3}, Lkn/m;-><init>(Lkn/i;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-object v0, v10, Lkn/j$c;->m:Lkn/m;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkn/j$c;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljn/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkn/j$c;->m:Lkn/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lkn/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkn/j$c;->l:Lkn/i;

    .line 2
    .line 3
    return-object v0
.end method
