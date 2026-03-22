.class public final Lj5/p;
.super Ljava/lang/Object;
.source "Uploader_Factory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Lj5/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Ld5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lk5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj5/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Ll5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lk5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Ld5/d;",
            ">;",
            "Lls/a<",
            "Lk5/d;",
            ">;",
            "Lls/a<",
            "Lj5/u;",
            ">;",
            "Lls/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lls/a<",
            "Ll5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lk5/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/p;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/p;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Lj5/p;->c:Lls/a;

    .line 9
    .line 10
    iput-object p4, p0, Lj5/p;->d:Lls/a;

    .line 11
    .line 12
    iput-object p5, p0, Lj5/p;->e:Lls/a;

    .line 13
    .line 14
    iput-object p6, p0, Lj5/p;->f:Lls/a;

    .line 15
    .line 16
    iput-object p7, p0, Lj5/p;->g:Lls/a;

    .line 17
    .line 18
    iput-object p8, p0, Lj5/p;->h:Lls/a;

    .line 19
    .line 20
    iput-object p9, p0, Lj5/p;->i:Lls/a;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)Lj5/p;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Ld5/d;",
            ">;",
            "Lls/a<",
            "Lk5/d;",
            ">;",
            "Lls/a<",
            "Lj5/u;",
            ">;",
            "Lls/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lls/a<",
            "Ll5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lk5/c;",
            ">;)",
            "Lj5/p;"
        }
    .end annotation

    .line 1
    new-instance v10, Lj5/p;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Lj5/p;-><init>(Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;Lls/a;)V

    .line 18
    .line 19
    .line 20
    return-object v10
.end method

.method public static c(Landroid/content/Context;Ld5/d;Lk5/d;Lj5/u;Ljava/util/concurrent/Executor;Ll5/a;Lm5/a;Lm5/a;Lk5/c;)Lj5/o;
    .locals 11

    .line 1
    new-instance v10, Lj5/o;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Lj5/o;-><init>(Landroid/content/Context;Ld5/d;Lk5/d;Lj5/u;Ljava/util/concurrent/Executor;Ll5/a;Lm5/a;Lm5/a;Lk5/c;)V

    .line 18
    .line 19
    .line 20
    return-object v10
.end method


# virtual methods
.method public b()Lj5/o;
    .locals 10

    .line 1
    iget-object v0, p0, Lj5/p;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lj5/p;->b:Lls/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Ld5/d;

    .line 18
    .line 19
    iget-object v0, p0, Lj5/p;->c:Lls/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lk5/d;

    .line 27
    .line 28
    iget-object v0, p0, Lj5/p;->d:Lls/a;

    .line 29
    .line 30
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lj5/u;

    .line 36
    .line 37
    iget-object v0, p0, Lj5/p;->e:Lls/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    iget-object v0, p0, Lj5/p;->f:Lls/a;

    .line 47
    .line 48
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Ll5/a;

    .line 54
    .line 55
    iget-object v0, p0, Lj5/p;->g:Lls/a;

    .line 56
    .line 57
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    check-cast v7, Lm5/a;

    .line 63
    .line 64
    iget-object v0, p0, Lj5/p;->h:Lls/a;

    .line 65
    .line 66
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v8, v0

    .line 71
    check-cast v8, Lm5/a;

    .line 72
    .line 73
    iget-object v0, p0, Lj5/p;->i:Lls/a;

    .line 74
    .line 75
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    check-cast v9, Lk5/c;

    .line 81
    .line 82
    invoke-static/range {v1 .. v9}, Lj5/p;->c(Landroid/content/Context;Ld5/d;Lk5/d;Lj5/u;Ljava/util/concurrent/Executor;Ll5/a;Lm5/a;Lm5/a;Lk5/c;)Lj5/o;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj5/p;->b()Lj5/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
