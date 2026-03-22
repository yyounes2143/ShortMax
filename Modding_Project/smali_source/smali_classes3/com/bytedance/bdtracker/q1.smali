.class public Lcom/bytedance/bdtracker/q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/p1;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/q1;->b:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/q1;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/bdtracker/q1;->a:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string v2, "appId"

    .line 17
    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/q1;->b:Lcom/bytedance/bdtracker/p1;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v2, "config"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    return-object v0
.end method
