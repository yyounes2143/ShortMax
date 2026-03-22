.class public final synthetic Lc7/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc7/x$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lc7/x$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc7/p;->a:Lc7/x$a;

    .line 5
    .line 6
    iput-object p2, p0, Lc7/p;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lc7/p;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc7/p;->a:Lc7/x$a;

    .line 2
    .line 3
    iget-object v1, p0, Lc7/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p0, Lc7/p;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lc7/x$a;->d(Lc7/x$a;Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
