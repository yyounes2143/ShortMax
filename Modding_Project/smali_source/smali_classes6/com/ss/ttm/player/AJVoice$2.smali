.class Lcom/ss/ttm/player/AJVoice$2;
.super Ljava/lang/Object;
.source "AJVoice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AJVoice;->write([BIIIJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AJVoice;

.field final synthetic val$releaseTrack:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AJVoice;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJVoice$2;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttm/player/AJVoice$2;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "JAJVoice"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "release old track"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice$2;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice$2;->val$releaseTrack:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 16
    .line 17
    .line 18
    const-string v1, "release old track done"

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice$2;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/ss/ttm/player/AJVoice;->access$000(Lcom/ss/ttm/player/AJVoice;)Landroid/os/ConditionVariable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice$2;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/ss/ttm/player/AJVoice;->access$000(Lcom/ss/ttm/player/AJVoice;)Landroid/os/ConditionVariable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice$2;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/ss/ttm/player/AJVoice;->access$000(Lcom/ss/ttm/player/AJVoice;)Landroid/os/ConditionVariable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice$2;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/ss/ttm/player/AJVoice;->access$000(Lcom/ss/ttm/player/AJVoice;)Landroid/os/ConditionVariable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 57
    .line 58
    .line 59
    :cond_1
    throw v0
.end method
