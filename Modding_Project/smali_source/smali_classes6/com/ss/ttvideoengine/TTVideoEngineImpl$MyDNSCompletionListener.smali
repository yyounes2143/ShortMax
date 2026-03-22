.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDNSCompletionListener;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/DNSCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDNSCompletionListener"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDNSCompletionListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDNSCompletionListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "dns cancelled"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDNSCompletionListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mShouldStop:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "MyDNSCompletionListener should stop"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "dns failed:"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string p2, "ip"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string/jumbo v1, "time"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    const-string v3, "dns_type"

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3, v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setDNSEndTime(J)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/16 v2, 0x56

    .line 99
    .line 100
    invoke-interface {v1, v2, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setStringOption(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const/4 p2, 0x0

    .line 105
    :cond_4
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 112
    .line 113
    const/16 p2, -0x270d

    .line 114
    .line 115
    const-string v1, "DNS result empty"

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    invoke-direct {p1, v2, p2, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string p2, "dns parse empty"

    .line 130
    .line 131
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDNSCompletionListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "fetcher should retry, error:"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->firstDNSFailed(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
