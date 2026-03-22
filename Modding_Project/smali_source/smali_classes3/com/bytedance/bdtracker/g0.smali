.class public Lcom/bytedance/bdtracker/g0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# instance fields
.field public final g:Ljava/lang/String;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/bdtracker/g0;->h:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bytedance/bdtracker/g0;->g:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/bdtracker/g0;->g:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/bytedance/bdtracker/g0;->h:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    :goto_0
    iput v0, p0, Lcom/bytedance/bdtracker/g0;->h:I

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    if-le v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/bytedance/bdtracker/g0;->g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/bdtracker/d;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RangersEventVerify"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()[J
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const-wide/16 v1, 0x3e8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-wide v1, v0, v3

    .line 8
    .line 9
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    return-wide v0
.end method
