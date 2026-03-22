.class public Lcom/bytedance/bdtracker/k3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/k3;->a(Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/k3;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/bdtracker/k3$a;->a:Ljava/util/Set;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/bdtracker/k3$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/bdtracker/k3$a;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    new-instance v1, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/k3$a;->a:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v2, "$$APP_ID"

    .line 34
    .line 35
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/k3$a;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string v2, "$$EVENT_LOCAL_ID_ARRAY"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    const-string v1, "$$UPLOAD_STATUS"

    .line 46
    .line 47
    :try_start_2
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/k3$a;->c:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const-string v2, "success"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v2, "failed"

    .line 55
    .line 56
    :goto_1
    :try_start_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    return-object v0
.end method
