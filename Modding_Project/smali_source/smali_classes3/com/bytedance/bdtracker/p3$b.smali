.class public Lcom/bytedance/bdtracker/p3$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/net/HttpURLConnection;

.field public final synthetic g:Lcom/bytedance/bdtracker/p3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/p3;Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/p3$b;->g:Lcom/bytedance/bdtracker/p3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/p3$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/bdtracker/p3$b;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/bdtracker/p3$b;->c:[B

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/bdtracker/p3$b;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/bytedance/bdtracker/p3$b;->e:J

    .line 12
    .line 13
    iput-object p8, p0, Lcom/bytedance/bdtracker/p3$b;->f:Ljava/net/HttpURLConnection;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
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
    const-string v1, "appId"

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/p3$b;->g:Lcom/bytedance/bdtracker/p3;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

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
    const-string v1, "nid"

    .line 18
    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/p3$b;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    const-string v1, "statusCode"

    .line 25
    .line 26
    :try_start_2
    iget v2, p0, Lcom/bytedance/bdtracker/p3$b;->b:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    const-string v1, "responseByte"

    .line 32
    .line 33
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/p3$b;->c:[B

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    .line 38
    const-string v1, "responseString"

    .line 39
    .line 40
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/bdtracker/p3$b;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    .line 44
    .line 45
    const-string v1, "time"

    .line 46
    .line 47
    :try_start_5
    iget-wide v2, p0, Lcom/bytedance/bdtracker/p3$b;->e:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    .line 51
    .line 52
    const-string v1, "header"

    .line 53
    .line 54
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/bdtracker/p3$b;->g:Lcom/bytedance/bdtracker/p3;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/bytedance/bdtracker/p3$b;->f:Ljava/net/HttpURLConnection;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/p3;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 63
    .line 64
    .line 65
    :catchall_0
    return-object v0
.end method
