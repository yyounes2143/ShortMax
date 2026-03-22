.class Lcom/ss/ttvideoengine/log/ContentDataReporter$1;
.super Ljava/lang/Object;
.source "ContentDataReporter.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/log/ContentDataReporter;->startTask(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/ContentDataReporter;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/ContentDataReporter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;->this$0:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;->val$requestUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;->this$0:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/ContentDataReporter;->access$000(Lcom/ss/ttvideoengine/log/ContentDataReporter;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "ContentDataReporter"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "canceled, return"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const-string p2, "ret"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;->val$requestUrl:Ljava/lang/String;

    .line 32
    .line 33
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "network error, code:%d, requestUrl:%s"

    .line 38
    .line 39
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p2, "req_id"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string/jumbo p2, "translate vdata to content success, req_id:%s"

    .line 54
    .line 55
    .line 56
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/ContentDataReporter$1;->val$requestUrl:Ljava/lang/String;

    .line 75
    .line 76
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "network error:%s, requestUrl:%s"

    .line 81
    .line 82
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method
