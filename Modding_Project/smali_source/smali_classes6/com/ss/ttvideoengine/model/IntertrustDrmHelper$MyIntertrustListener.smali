.class Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;
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
    name = "MyIntertrustListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string p1, "intertrust listener invoke"

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
    const-string p2, "onTokenProcessed"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$300(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    const-string p2, "onError"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_6

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    aget-object p1, p3, p1

    .line 36
    .line 37
    const/4 p2, -0x1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move p1, p2

    .line 48
    :goto_0
    const/4 v0, 0x1

    .line 49
    aget-object v0, p3, v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    :cond_2
    const/4 v0, 0x2

    .line 60
    aget-object p3, p3, v0

    .line 61
    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string p3, ""

    .line 70
    .line 71
    :goto_1
    const v0, -0x927c0

    .line 72
    .line 73
    .line 74
    if-ne p1, v0, :cond_4

    .line 75
    .line 76
    const/16 p1, -0x26cf

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const v0, -0x927c1

    .line 80
    .line 81
    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    const/16 p1, -0x26ce

    .line 85
    .line 86
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 87
    .line 88
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 89
    .line 90
    const-string v2, "kTTVideoErrorDomainIntertrustDRM"

    .line 91
    .line 92
    invoke-direct {v1, v2, p1, p2, p3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$400(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p3, "invalid method name:"

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    const/4 p1, 0x0

    .line 120
    return-object p1
.end method
