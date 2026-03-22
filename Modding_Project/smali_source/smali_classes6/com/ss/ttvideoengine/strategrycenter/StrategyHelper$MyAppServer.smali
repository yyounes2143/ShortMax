.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/IAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppServer"
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public addGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge p3, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2, p3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    add-int/lit8 p3, p3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    :cond_1
    new-instance p3, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "from"

    .line 51
    .line 52
    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string p1, "name"

    .line 56
    .line 57
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1, p3, v1}, Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;->addGroupConfig(Ljava/util/Map;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public getMediaPortrait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "type"

    .line 25
    .line 26
    .line 27
    const-string v4, "one"

    .line 28
    .line 29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v3, "name"

    .line 33
    .line 34
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p3, "video_id"

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string p2, "from"

    .line 44
    .line 45
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1, v2}, Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;->getPortraits(Ljava/util/Map;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    new-instance p2, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getMediaPortraits(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "type"

    .line 25
    .line 26
    .line 27
    const-string v4, "group"

    .line 28
    .line 29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v3, "name"

    .line 33
    .line 34
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p3, "video_id"

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string p2, "from"

    .line 44
    .line 45
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1, v2}, Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;->getPortraits(Ljava/util/Map;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    new-instance p2, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getPortrait(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "type"

    .line 24
    .line 25
    .line 26
    const-string v3, "one"

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "from"

    .line 32
    .line 33
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p1, "name"

    .line 37
    .line 38
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, v1}, Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;->getPortraits(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    const-string p1, ""

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public getPortraits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$MyAppServer;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "type"

    .line 25
    .line 26
    .line 27
    const-string v4, "group"

    .line 28
    .line 29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v3, "name"

    .line 33
    .line 34
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p2, "from"

    .line 38
    .line 39
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->access$900(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1, v2}, Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;->getPortraits(Ljava/util/Map;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance p2, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_1
    :goto_0
    return-object v1
.end method
