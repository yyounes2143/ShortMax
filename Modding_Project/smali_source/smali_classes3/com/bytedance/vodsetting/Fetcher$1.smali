.class Lcom/bytedance/vodsetting/Fetcher$1;
.super Ljava/lang/Object;
.source "Fetcher.java"

# interfaces
.implements Lcom/bytedance/vodsetting/NetInterface$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vodsetting/Fetcher;->startFetch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vodsetting/Fetcher;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$module:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$configKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/json/JSONObject;Ljava/lang/Error;)V
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Error;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x5

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$module:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$configKey:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/vodsetting/Fetcher;->access$000(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p2, "Fetcher"

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, "response is null or empty"

    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$module:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$configKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/vodsetting/Fetcher;->access$000(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v0, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->access$102(Lcom/bytedance/vodsetting/Fetcher;J)J

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/bytedance/vodsetting/Fetcher;->access$200(Lcom/bytedance/vodsetting/Fetcher;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "fetch suc, fetch count = "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/bytedance/vodsetting/Fetcher;->access$300(Lcom/bytedance/vodsetting/Fetcher;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", response = "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p2, v0}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    const-string p2, "data"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 96
    .line 97
    invoke-static {p2}, Lcom/bytedance/vodsetting/Fetcher;->access$400(Lcom/bytedance/vodsetting/Fetcher;)Lcom/bytedance/vodsetting/FetcherListener;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$1;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 104
    .line 105
    invoke-static {p2}, Lcom/bytedance/vodsetting/Fetcher;->access$400(Lcom/bytedance/vodsetting/Fetcher;)Lcom/bytedance/vodsetting/FetcherListener;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string p2, "code"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const-string p2, "msg"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v4, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$module:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/bytedance/vodsetting/Fetcher$1;->val$configKey:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/vodsetting/FetcherListener;->onResult(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method
