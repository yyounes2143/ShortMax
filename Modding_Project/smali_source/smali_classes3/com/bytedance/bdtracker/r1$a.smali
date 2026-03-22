.class public Lcom/bytedance/bdtracker/r1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/r1;->q()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/r1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fetch()Ljava/lang/Object;
    .locals 5

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
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    const-string v1, "did"

    .line 18
    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 22
    .line 23
    const-string v3, "device_id"

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    const-string v1, "bdDid"

    .line 35
    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    const-string v1, "ssid"

    .line 46
    .line 47
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->i()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    .line 55
    .line 56
    const-string v1, "installId"

    .line 57
    .line 58
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->f()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    const-string v1, "uuid"

    .line 68
    .line 69
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    .line 77
    .line 78
    const-string v1, "uuidType"

    .line 79
    .line 80
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/bdtracker/r1$a;->a:Lcom/bytedance/bdtracker/r1;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->l()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    .line 88
    .line 89
    :catchall_0
    return-object v0
.end method
