.class public final synthetic Li5/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li5/c;

.field public final synthetic b:Lc5/p;

.field public final synthetic c:La5/j;

.field public final synthetic d:Lc5/i;


# direct methods
.method public synthetic constructor <init>(Li5/c;Lc5/p;La5/j;Lc5/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li5/a;->a:Li5/c;

    .line 5
    .line 6
    iput-object p2, p0, Li5/a;->b:Lc5/p;

    .line 7
    .line 8
    iput-object p3, p0, Li5/a;->c:La5/j;

    .line 9
    .line 10
    iput-object p4, p0, Li5/a;->d:Lc5/i;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li5/a;->a:Li5/c;

    .line 2
    .line 3
    iget-object v1, p0, Li5/a;->b:Lc5/p;

    .line 4
    .line 5
    iget-object v2, p0, Li5/a;->c:La5/j;

    .line 6
    .line 7
    iget-object v3, p0, Li5/a;->d:Lc5/i;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Li5/c;->c(Li5/c;Lc5/p;La5/j;Lc5/i;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
