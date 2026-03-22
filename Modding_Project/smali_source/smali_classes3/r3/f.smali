.class public final synthetic Lr3/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lr3/i;

.field public final synthetic c:Lf2/a;

.field public final synthetic d:Ly3/k;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/f;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/f;->b:Lr3/i;

    .line 7
    .line 8
    iput-object p3, p0, Lr3/f;->c:Lf2/a;

    .line 9
    .line 10
    iput-object p4, p0, Lr3/f;->d:Ly3/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/f;->b:Lr3/i;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/f;->c:Lf2/a;

    .line 6
    .line 7
    iget-object v3, p0, Lr3/f;->d:Ly3/k;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lr3/i;->c(Ljava/lang/Object;Lr3/i;Lf2/a;Ly3/k;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
