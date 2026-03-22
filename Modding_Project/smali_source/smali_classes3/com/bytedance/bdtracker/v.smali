.class public final Lcom/bytedance/bdtracker/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$e;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/e4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/e4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/b;->b:Lcom/bytedance/bdtracker/b$e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/e4;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e4;->E:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->isAutoTrackPageIgnored(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/e4;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/e4;->D:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackFragmentEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    :cond_2
    move v1, v2

    .line 46
    :cond_3
    return v1

    .line 47
    :cond_4
    return v2
.end method
