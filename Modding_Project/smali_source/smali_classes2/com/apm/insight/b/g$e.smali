.class public final Lcom/apm/insight/b/g$e;
.super Ljava/lang/Object;
.source "LooperDispatchMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:J

.field b:J

.field c:J

.field d:I

.field e:I

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/apm/insight/b/g$d;


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
.method public final a()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "msg"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/apm/insight/b/g$e;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/apm/insight/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "cpuDuration"

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->g:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "duration"

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->f:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "type"

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/apm/insight/b/g$e;->d:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "count"

    .line 40
    .line 41
    iget v2, p0, Lcom/apm/insight/b/g$e;->e:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "messageCount"

    .line 47
    .line 48
    iget v2, p0, Lcom/apm/insight/b/g$e;->e:I

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v1, "lastDuration"

    .line 54
    .line 55
    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->b:J

    .line 56
    .line 57
    iget-wide v4, p0, Lcom/apm/insight/b/g$e;->c:J

    .line 58
    .line 59
    sub-long/2addr v2, v4

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v1, "start"

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->a:J

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v1, "end"

    .line 71
    .line 72
    iget-wide v2, p0, Lcom/apm/insight/b/g$e;->b:J

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string v1, "block_uuid"

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "sblock_uuid"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    const-string v1, "belong_frame"

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-object v0
.end method

.method final b()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apm/insight/b/g$e;->d:I

    .line 3
    .line 4
    iput v0, p0, Lcom/apm/insight/b/g$e;->e:I

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/apm/insight/b/g$e;->f:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/apm/insight/b/g$e;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/apm/insight/b/g$e;->j:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/apm/insight/b/g$e;->k:Lcom/apm/insight/b/g$d;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/apm/insight/b/g$e;->i:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
