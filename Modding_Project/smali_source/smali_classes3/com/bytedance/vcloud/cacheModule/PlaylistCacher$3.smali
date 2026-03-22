.class Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;
.super Ljava/lang/Object;
.source "PlaylistCacher.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$ICacheInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->preLoadNextUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCacheInfo(Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "<"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ">sub m3u8  fileKey:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->playlistUrlInfo:Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo$UrlInfo;->fileKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " cache code "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$500(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;->TryNextEvenIfError_Bool:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$CacheOption;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$600(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget p1, p1, Lcom/bytedance/vcloud/cacheModule/info/PlaylistCacheInfo;->errorCode:I

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$700(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_2

    .line 97
    .line 98
    :cond_1
    iget-object p1, p0, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher$3;->this$0:Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;->access$800(Lcom/bytedance/vcloud/cacheModule/PlaylistCacher;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method
