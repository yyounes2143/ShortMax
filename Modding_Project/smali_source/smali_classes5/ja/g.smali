.class public final synthetic Lja/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lua/e;


# instance fields
.field public final synthetic a:Lja/i;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lka/j;


# direct methods
.method public synthetic constructor <init>(Lja/i;Landroid/app/Activity;Lka/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lja/g;->a:Lja/i;

    .line 5
    .line 6
    iput-object p2, p0, Lja/g;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lja/g;->c:Lka/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lja/g;->a:Lja/i;

    .line 2
    .line 3
    iget-object v1, p0, Lja/g;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lja/g;->c:Lka/j;

    .line 6
    .line 7
    check-cast p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lja/i;->t(Lja/i;Landroid/app/Activity;Lka/j;Lcom/huawei/hms/support/account/result/AuthAccount;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
