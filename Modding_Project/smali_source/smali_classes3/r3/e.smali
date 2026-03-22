.class public final synthetic Lr3/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lr3/i;

.field public final synthetic d:Lf2/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lr3/e;->c:Lr3/i;

    .line 9
    .line 10
    iput-object p4, p0, Lr3/e;->d:Lf2/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/e;->c:Lr3/i;

    .line 6
    .line 7
    iget-object v3, p0, Lr3/e;->d:Lf2/a;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lr3/i;->d(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lr3/i;Lf2/a;)Ly3/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
