.class public final synthetic Lja/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lua/d;


# instance fields
.field public final synthetic a:Lja/i;

.field public final synthetic b:Lka/j;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lja/i;Lka/j;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lja/h;->a:Lja/i;

    .line 5
    .line 6
    iput-object p2, p0, Lja/h;->b:Lka/j;

    .line 7
    .line 8
    iput-object p3, p0, Lja/h;->c:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lja/h;->a:Lja/i;

    .line 2
    .line 3
    iget-object v1, p0, Lja/h;->b:Lka/j;

    .line 4
    .line 5
    iget-object v2, p0, Lja/h;->c:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lja/i;->u(Lja/i;Lka/j;Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
