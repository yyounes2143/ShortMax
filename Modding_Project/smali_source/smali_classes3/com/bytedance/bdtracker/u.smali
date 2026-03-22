.class public final Lcom/bytedance/bdtracker/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$e;


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
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->isBavEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method
