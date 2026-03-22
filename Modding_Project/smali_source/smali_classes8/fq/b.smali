.class public final synthetic Lfq/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ltp/r;


# instance fields
.field public final synthetic a:Lfq/n;

.field public final synthetic b:Lrq/c;


# direct methods
.method public synthetic constructor <init>(Lfq/n;Lrq/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfq/b;->a:Lfq/n;

    .line 5
    .line 6
    iput-object p2, p0, Lfq/b;->b:Lrq/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq/b;->a:Lfq/n;

    .line 2
    .line 3
    iget-object v1, p0, Lfq/b;->b:Lrq/c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lfq/n;->d(Lfq/n;Lrq/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
