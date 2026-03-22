.class public Lcom/bytedance/bdtracker/d0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/d0;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lcom/bytedance/bdtracker/d0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d0$a;->b:Lcom/bytedance/bdtracker/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/d0$a;->a:Lorg/json/JSONObject;

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
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0$a;->a:Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string v1, "appId"

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0$a;->b:Lcom/bytedance/bdtracker/d0;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    return-object v0
.end method
