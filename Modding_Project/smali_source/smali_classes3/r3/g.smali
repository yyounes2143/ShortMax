.class public final synthetic Lr3/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lr3/i;

.field public final synthetic c:Lf2/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lr3/i;Lf2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/g;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/g;->b:Lr3/i;

    .line 7
    .line 8
    iput-object p3, p0, Lr3/g;->c:Lf2/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/g;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/g;->b:Lr3/i;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/g;->c:Lf2/a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lr3/i;->b(Ljava/lang/Object;Lr3/i;Lf2/a;)Ljava/lang/Void;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
