.class public final synthetic Lfq/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lyq/d;


# instance fields
.field public final synthetic a:Lfq/n;

.field public final synthetic b:Lfq/q;


# direct methods
.method public synthetic constructor <init>(Lfq/n;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfq/i;->a:Lfq/n;

    .line 5
    .line 6
    iput-object p2, p0, Lfq/i;->b:Lfq/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq/i;->a:Lfq/n;

    .line 2
    .line 3
    iget-object v1, p0, Lfq/i;->b:Lfq/q;

    .line 4
    .line 5
    check-cast p1, Lrq/t;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lfq/n;->a(Lfq/n;Lfq/q;Lrq/t;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
