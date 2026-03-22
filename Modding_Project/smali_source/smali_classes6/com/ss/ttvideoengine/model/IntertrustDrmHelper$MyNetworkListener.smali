.class Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;
.super Ljava/lang/Object;
.source "IntertrustDrmHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string p1, "network listener invoke"

    .line 2
    .line 3
    const-string v0, "IntertrustDrmHelper"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo p2, "startTask"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    aget-object p1, p3, p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    move-object v3, p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string p1, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    const/4 p1, 0x1

    .line 37
    aget-object p1, p3, p1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    check-cast p1, Ljava/util/Map;

    .line 42
    .line 43
    move-object v4, p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move-object v4, v1

    .line 46
    :goto_2
    const/4 p1, 0x2

    .line 47
    aget-object p1, p3, p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    check-cast p1, Lorg/json/JSONObject;

    .line 52
    .line 53
    move-object v5, p1

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    move-object v5, v1

    .line 56
    :goto_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$200(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v7, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 65
    .line 66
    invoke-direct {v7, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-virtual/range {v2 .. v7}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_3
    const-string p2, "cancel"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$200(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string p3, "invalid method name:"

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_4
    return-object v1
.end method
