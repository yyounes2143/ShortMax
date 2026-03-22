.class public Lcom/bytedance/bdtracker/j0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/d;

.field public final synthetic b:Z

.field public final synthetic c:J

.field public final synthetic d:Lcom/bytedance/bdtracker/j0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/j0;Lcom/bytedance/bdtracker/d;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/j0$a;->d:Lcom/bytedance/bdtracker/j0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/j0$a;->a:Lcom/bytedance/bdtracker/d;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/bdtracker/j0$a;->b:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/bytedance/bdtracker/j0$a;->c:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "appId"

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/j0$a;->a:Lcom/bytedance/bdtracker/d;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    const-string v1, "sessionId"

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/j0$a;->d:Lcom/bytedance/bdtracker/j0;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    const-string v1, "isBackground"

    .line 25
    .line 26
    :try_start_2
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/j0$a;->b:Z

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    xor-int/2addr v2, v3

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    const-string v1, "newLaunch"

    .line 34
    .line 35
    :try_start_3
    iget-wide v4, p0, Lcom/bytedance/bdtracker/j0$a;->c:J

    .line 36
    .line 37
    const-wide/16 v6, -0x1

    .line 38
    .line 39
    cmp-long v2, v4, v6

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    .line 48
    :catchall_0
    return-object v0
.end method
