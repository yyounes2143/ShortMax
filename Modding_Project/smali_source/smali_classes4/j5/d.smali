.class public final synthetic Lj5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/o;

.field public final synthetic b:Lc5/p;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lj5/o;Lc5/p;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj5/d;->a:Lj5/o;

    .line 5
    .line 6
    iput-object p2, p0, Lj5/d;->b:Lc5/p;

    .line 7
    .line 8
    iput p3, p0, Lj5/d;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lj5/d;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj5/d;->a:Lj5/o;

    .line 2
    .line 3
    iget-object v1, p0, Lj5/d;->b:Lc5/p;

    .line 4
    .line 5
    iget v2, p0, Lj5/d;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lj5/d;->d:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lj5/o;->i(Lj5/o;Lc5/p;ILjava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
