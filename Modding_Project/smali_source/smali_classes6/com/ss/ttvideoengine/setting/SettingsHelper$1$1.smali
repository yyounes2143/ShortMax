.class Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->start(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/ttvideoengine/setting/SettingsHelper$1;

.field final synthetic val$client:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field final synthetic val$listener:Lcom/bytedance/vodsetting/NetInterface$CompletionListener;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/setting/SettingsHelper$1;Lcom/ss/ttvideoengine/net/TTVNetClient;Lcom/bytedance/vodsetting/NetInterface$CompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->this$1:Lcom/ss/ttvideoengine/setting/SettingsHelper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->val$client:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->val$listener:Lcom/bytedance/vodsetting/NetInterface$CompletionListener;

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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setting result "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VodSettings"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->this$1:Lcom/ss/ttvideoengine/setting/SettingsHelper$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1;->this$0:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->access$400(Lcom/ss/ttvideoengine/setting/SettingsHelper;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->val$client:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->val$listener:Lcom/bytedance/vodsetting/NetInterface$CompletionListener;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/Error;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, " fail. info: "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {v1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vodsetting/NetInterface$CompletionListener;->onCompletion(Lorg/json/JSONObject;Ljava/lang/Error;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object p2, p0, Lcom/ss/ttvideoengine/setting/SettingsHelper$1$1;->val$listener:Lcom/bytedance/vodsetting/NetInterface$CompletionListener;

    .line 71
    .line 72
    invoke-interface {p2, p1, v0}, Lcom/bytedance/vodsetting/NetInterface$CompletionListener;->onCompletion(Lorg/json/JSONObject;Ljava/lang/Error;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method
