.class public final synthetic Lw7/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw7/u;

.field public final synthetic b:Lw8/b;


# direct methods
.method public synthetic constructor <init>(Lw7/u;Lw8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7/m;->a:Lw7/u;

    .line 5
    .line 6
    iput-object p2, p0, Lw7/m;->b:Lw8/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw7/m;->a:Lw7/u;

    .line 2
    .line 3
    iget-object v1, p0, Lw7/m;->b:Lw8/b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/n;->l(Lw7/u;Lw8/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
