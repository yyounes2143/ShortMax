.class Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;
.super Ljava/lang/Object;
.source "SmartUrlFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->fetch(Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$cacheKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->access$000(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 15
    .line 16
    invoke-static {p1, v0, p2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->access$100(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 25
    .line 26
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 27
    .line 28
    const-string v1, "kTTVideoErrorDomainFetchingSmartUrlInfo"

    .line 29
    .line 30
    const/16 v2, -0x270d

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->access$100(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->access$200(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 50
    .line 51
    invoke-static {p1, v0, p2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->access$100(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$cacheKey:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->put(Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->this$0:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;->val$params:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {p2, v0, v1, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->access$300(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
