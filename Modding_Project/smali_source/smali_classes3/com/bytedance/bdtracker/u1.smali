.class public Lcom/bytedance/bdtracker/u1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile a:Lcom/bytedance/bdtracker/r4;

.field public b:Landroid/accounts/Account;

.field public c:Lcom/bytedance/bdtracker/t3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)Lcom/bytedance/bdtracker/r4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/bdtracker/u1;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/bdtracker/u1;->c:Lcom/bytedance/bdtracker/t3;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/bytedance/bdtracker/t3;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Lcom/bytedance/bdtracker/t3;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/bytedance/bdtracker/u1;->c:Lcom/bytedance/bdtracker/t3;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    new-instance v1, Lcom/bytedance/bdtracker/n4;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/bdtracker/u1;->c:Lcom/bytedance/bdtracker/t3;

    .line 35
    .line 36
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/bytedance/bdtracker/n4;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/t3;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/bytedance/bdtracker/u1;->b:Landroid/accounts/Account;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 46
    .line 47
    check-cast p1, Lcom/bytedance/bdtracker/n4;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/bytedance/bdtracker/u1;->b:Landroid/accounts/Account;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/n4;->a(Landroid/accounts/Account;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "context == null"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_1
    monitor-exit v0

    .line 64
    goto :goto_3

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 68
    .line 69
    return-object p1
.end method
