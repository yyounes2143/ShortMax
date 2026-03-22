.class Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Lcom/bytedance/vodsetting/FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vodsetting/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFetcherListener"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/vodsetting/SettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bytedance/vodsetting/SettingsManager;


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/SettingsManager;Lcom/bytedance/vodsetting/SettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->mManager:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->onResult(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/vodsetting/SettingsManager;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh settings: code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Manager"

    invoke-static {v1, p2}, Lcom/bytedance/vodsetting/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "refresh data fail. code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    const-string p1, "general_settings"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 6
    const-string v1, "config_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 7
    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$300(Lcom/bytedance/vodsetting/SettingsManager;)Lcom/bytedance/vodsetting/Fetcher;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/vodsetting/Fetcher;->setConfigVersion(J)Lcom/bytedance/vodsetting/Fetcher;

    .line 8
    iget-object v4, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {v4}, Lcom/bytedance/vodsetting/SettingsManager;->access$400(Lcom/bytedance/vodsetting/SettingsManager;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "common"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/vodsetting/Storage;

    .line 9
    invoke-virtual {v4, v1, v2, v3}, Lcom/bytedance/vodsetting/Storage;->putLong(Ljava/lang/String;J)V

    .line 10
    const-string v1, "max_fetch_times"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    .line 11
    invoke-virtual {v4, v1, v3}, Lcom/bytedance/vodsetting/Storage;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$300(Lcom/bytedance/vodsetting/SettingsManager;)Lcom/bytedance/vodsetting/Fetcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bytedance/vodsetting/Fetcher;->setMaxFetchTimes(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 13
    :cond_2
    const-string v1, "fetch_interval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 14
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/vodsetting/Storage;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v3, v2, :cond_3

    .line 15
    invoke-virtual {v4, v1, v3}, Lcom/bytedance/vodsetting/Storage;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$300(Lcom/bytedance/vodsetting/SettingsManager;)Lcom/bytedance/vodsetting/Fetcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/vodsetting/Fetcher;->setFetchInterval(I)Lcom/bytedance/vodsetting/Fetcher;

    .line 17
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    int-to-long v1, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/vodsetting/SettingsManager;->access$500(Lcom/bytedance/vodsetting/SettingsManager;J)V

    .line 18
    :cond_3
    const-string v0, "local_cache_expire"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-lez v3, :cond_4

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v1, v7

    add-long/2addr v5, v1

    .line 20
    invoke-virtual {v4, v0, v5, v6}, Lcom/bytedance/vodsetting/Storage;->putLong(Ljava/lang/String;J)V

    .line 21
    :cond_4
    const-string v0, "use_local_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 22
    invoke-virtual {v4, v0, p1}, Lcom/bytedance/vodsetting/Storage;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_5

    move p1, p2

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$400(Lcom/bytedance/vodsetting/SettingsManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {v1}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/vodsetting/Storage;

    invoke-virtual {v0}, Lcom/bytedance/vodsetting/Storage;->removeAllCache()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 25
    :cond_5
    const-string p1, "custom_settings"

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz p4, :cond_6

    .line 26
    const-string p3, "all"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 27
    iget-object p2, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p2, p4, p5, p1}, Lcom/bytedance/vodsetting/SettingsManager;->access$600(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 28
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {p3}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    move-result-object p3

    array-length p3, p3

    if-ge p2, p3, :cond_7

    .line 29
    iget-object p3, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 30
    invoke-static {p3}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    move-result-object p4

    aget-object p4, p4, p2

    iget-object p4, p4, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$MyFetcherListener;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    invoke-static {v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    invoke-static {p3, p4, p5, v0}, Lcom/bytedance/vodsetting/SettingsManager;->access$600(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method
