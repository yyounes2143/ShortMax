.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/IStrategyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyIStrategyEventListener"
.end annotation


# instance fields
.field private mHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->mHelper:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->mHelper:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "on event, videoID = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", key = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", value = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", info = "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "VCStrategy"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x7e3

    .line 48
    .line 49
    if-ne p2, v0, :cond_1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->mHelper:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 58
    .line 59
    if-eqz p2, :cond_0

    .line 60
    .line 61
    invoke-static {p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$500(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-static {p2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$500(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2, p3, p1, p4}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$DBHelper;->event(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$600(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->event(Ljava/lang/String;IILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$700(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$800(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$700(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    .line 109
    .line 110
    const/16 v0, 0x7dc

    .line 111
    .line 112
    if-eq p2, v0, :cond_2

    .line 113
    .line 114
    const/16 v0, 0x9c4

    .line 115
    .line 116
    if-lt p2, v0, :cond_4

    .line 117
    .line 118
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$800(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;->onEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyIStrategyEventListener;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$700(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_0
    return-void
.end method

.method public onEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "eventName: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", logInfo: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VCStrategy"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 38
    .line 39
    new-instance v1, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-virtual {v0, p2, v1, p1}, Lcom/ss/ttvideoengine/log/VideoEventManager;->addEventV2(ZLorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method
