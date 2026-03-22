.class public Lpl/a;
.super Lcom/unity3d/scar/adapter/common/j;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/e;


# instance fields
.field private e:Lql/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/c<",
            "Lcom/unity3d/scar/adapter/common/l;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/scar/adapter/common/j;-><init>(Lcom/unity3d/scar/adapter/common/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lql/a;

    .line 5
    .line 6
    new-instance v0, Lml/a;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lml/a;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lql/a;-><init>(Lml/a;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lpl/a;->e:Lql/a;

    .line 15
    .line 16
    new-instance p2, Lsl/b;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lsl/b;-><init>(Lql/a;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/j;->a:Lol/c;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic h(Lpl/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lpl/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e(Landroid/content/Context;Lnl/c;Lcom/unity3d/scar/adapter/common/g;)V
    .locals 7

    .line 1
    new-instance v6, Lrl/e;

    .line 2
    .line 3
    iget-object v2, p0, Lpl/a;->e:Lql/a;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/j;->d:Lcom/unity3d/scar/adapter/common/c;

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lrl/e;-><init>(Landroid/content/Context;Lql/a;Lnl/c;Lcom/unity3d/scar/adapter/common/c;Lcom/unity3d/scar/adapter/common/g;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lpl/a$a;

    .line 15
    .line 16
    invoke-direct {p1, p0, v6, p2}, Lpl/a$a;-><init>(Lpl/a;Lrl/e;Lnl/c;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/k;->a(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public f(Landroid/content/Context;Landroid/widget/RelativeLayout;Lnl/c;IILcom/unity3d/scar/adapter/common/f;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v10, Lrl/c;

    .line 3
    .line 4
    iget-object v4, v0, Lpl/a;->e:Lql/a;

    .line 5
    .line 6
    iget-object v8, v0, Lcom/unity3d/scar/adapter/common/j;->d:Lcom/unity3d/scar/adapter/common/c;

    .line 7
    .line 8
    move-object v1, v10

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v5, p3

    .line 12
    move v6, p4

    .line 13
    move/from16 v7, p5

    .line 14
    .line 15
    move-object/from16 v9, p6

    .line 16
    .line 17
    invoke-direct/range {v1 .. v9}, Lrl/c;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lql/a;Lnl/c;IILcom/unity3d/scar/adapter/common/c;Lcom/unity3d/scar/adapter/common/f;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lpl/a$c;

    .line 21
    .line 22
    invoke-direct {v1, p0, v10}, Lpl/a$c;-><init>(Lpl/a;Lrl/c;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/unity3d/scar/adapter/common/k;->a(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g(Landroid/content/Context;Lnl/c;Lcom/unity3d/scar/adapter/common/h;)V
    .locals 7

    .line 1
    new-instance v6, Lrl/g;

    .line 2
    .line 3
    iget-object v2, p0, Lpl/a;->e:Lql/a;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/j;->d:Lcom/unity3d/scar/adapter/common/c;

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lrl/g;-><init>(Landroid/content/Context;Lql/a;Lnl/c;Lcom/unity3d/scar/adapter/common/c;Lcom/unity3d/scar/adapter/common/h;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lpl/a$b;

    .line 15
    .line 16
    invoke-direct {p1, p0, v6, p2}, Lpl/a$b;-><init>(Lpl/a;Lrl/g;Lnl/c;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/k;->a(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
