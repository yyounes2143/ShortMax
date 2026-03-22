.class public final Lcom/bytedance/applog/log/LogUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/bdtracker/u3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v0, "$$APP_ID"

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/bytedance/bdtracker/u3;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    const-string v0, "$$EVENT_TYPE"

    .line 29
    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lcom/bytedance/bdtracker/u3;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    instance-of v3, v2, Lcom/bytedance/bdtracker/b4;

    .line 38
    .line 39
    if-nez v3, :cond_7

    .line 40
    .line 41
    instance-of v3, v2, Lcom/bytedance/bdtracker/e4;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    instance-of v3, v2, Lcom/bytedance/bdtracker/x3;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    check-cast v2, Lcom/bytedance/bdtracker/x3;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    instance-of v3, v2, Lcom/bytedance/bdtracker/c4;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string v2, "LAUNCH"

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :try_start_2
    instance-of v3, v2, Lcom/bytedance/bdtracker/h4;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    const-string v2, "TERMINATE"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :try_start_3
    instance-of v3, v2, Lcom/bytedance/bdtracker/f4;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    const-string v2, "PROFILE"

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    :try_start_4
    instance-of v2, v2, Lcom/bytedance/bdtracker/i4;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    const-string v2, "TRACE"

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    :goto_0
    const-string v2, ""

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    :goto_1
    const-string v2, "EVENT_V3"

    .line 93
    .line 94
    :goto_2
    :try_start_5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 95
    .line 96
    .line 97
    const-string v0, "$$EVENT_LOCAL_ID"

    .line 98
    .line 99
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/applog/log/LogUtils$a;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lcom/bytedance/bdtracker/u3;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    return-object v1
.end method
