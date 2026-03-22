.class public Lcom/bytedance/bdtracker/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/d;->setForbidReportPhoneDetailInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d$b;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/bdtracker/d$b;->a:Z

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
    const-string v2, "appId"

    .line 12
    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/d$b;->b:Lcom/bytedance/bdtracker/d;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    const-string v2, "\u7981\u6b62\u91c7\u96c6\u8be6\u7ec6\u4fe1\u606f\u5f00\u5173"

    .line 21
    .line 22
    :try_start_1
    iget-boolean v3, p0, Lcom/bytedance/bdtracker/d$b;->a:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v2, "config"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    return-object v0
.end method
