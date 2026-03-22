.class public Lcom/bytedance/bdtracker/h0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/EventBus$DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/h0;->a(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/bytedance/bdtracker/h0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/h0$a;->g:Lcom/bytedance/bdtracker/h0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/h0$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/bdtracker/h0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/bdtracker/h0$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/bdtracker/h0$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/bdtracker/h0$a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bytedance/bdtracker/h0$a;->f:Ljava/lang/String;

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
    .locals 3

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
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->g:Lcom/bytedance/bdtracker/h0;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

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
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    const-string v1, "installId"

    .line 25
    .line 26
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    const-string v1, "ssid"

    .line 32
    .line 33
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    .line 38
    const-string v1, "bdDid"

    .line 39
    .line 40
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    .line 44
    .line 45
    const-string v1, "uuid"

    .line 46
    .line 47
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->e:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    .line 51
    .line 52
    const-string v1, "uuidType"

    .line 53
    .line 54
    :try_start_6
    iget-object v2, p0, Lcom/bytedance/bdtracker/h0$a;->f:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    .line 58
    .line 59
    :catchall_0
    return-object v0
.end method
