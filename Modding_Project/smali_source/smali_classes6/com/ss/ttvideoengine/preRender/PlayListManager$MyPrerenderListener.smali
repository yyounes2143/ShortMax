.class Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;
.super Ljava/lang/Object;
.source "PlayListManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/PreRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/preRender/PlayListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPrerenderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/preRender/PlayListManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreRenderError(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPreRenderError, engine = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", errorType = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", error = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    const-string v0, "PlayListManager"

    .line 35
    .line 36
    invoke-static {v0, p4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p4, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 40
    .line 41
    invoke-static {p4}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$000(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$100(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$200(Lcom/ss/ttvideoengine/preRender/PlayListManager;Lcom/ss/ttvideoengine/source/Source;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object p4, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 74
    .line 75
    invoke-static {p4}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$300(Lcom/ss/ttvideoengine/preRender/PlayListManager;)I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    if-ne p1, p4, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$500(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->stop()V

    .line 88
    .line 89
    .line 90
    :cond_1
    const/4 p1, 0x3

    .line 91
    if-ne p3, p1, :cond_2

    .line 92
    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$400(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/HashMap;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$000(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public onPreRenderPause(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onPreRenderPause, engine = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ", vid = "

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "PlayListManager"

    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public onPreRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onPrerenderStart, engine = "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ", vid = "

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "PlayListManager"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onPreRenderSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onPreRenderSuccess, engine = "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", vid = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "PlayListManager"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$000(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$100(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 60
    .line 61
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$200(Lcom/ss/ttvideoengine/preRender/PlayListManager;Lcom/ss/ttvideoengine/source/Source;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$300(Lcom/ss/ttvideoengine/preRender/PlayListManager;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$400(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$500(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->stop()V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;->this$0:Lcom/ss/ttvideoengine/preRender/PlayListManager;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->access$000(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 106
    .line 107
    .line 108
    return-void
.end method
