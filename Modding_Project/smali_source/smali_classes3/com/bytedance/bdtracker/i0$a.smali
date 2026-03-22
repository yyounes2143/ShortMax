.class public Lcom/bytedance/bdtracker/i0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/i0;->a(Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/bytedance/bdtracker/i0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/i0;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/i0$a;->c:Lcom/bytedance/bdtracker/i0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/i0$a;->a:Ljava/util/Set;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/bdtracker/i0$a;->b:Z

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
    const-string v1, "$$APP_ID"

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/i0$a;->c:Lcom/bytedance/bdtracker/i0;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lorg/json/JSONArray;

    .line 18
    .line 19
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/bdtracker/i0$a;->a:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v2, "$$EVENT_LOCAL_ID_ARRAY"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    const-string v1, "$$UPLOAD_STATUS"

    .line 50
    .line 51
    :try_start_1
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/i0$a;->b:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const-string v2, "success"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v2, "failed"

    .line 59
    .line 60
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    return-object v0
.end method
