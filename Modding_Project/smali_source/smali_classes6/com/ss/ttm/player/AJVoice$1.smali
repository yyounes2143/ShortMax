.class Lcom/ss/ttm/player/AJVoice$1;
.super Ljava/lang/Object;
.source "AJVoice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AJVoice;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AJVoice;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AJVoice;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJVoice$1;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttm/player/AJVoice$1;->val$toRelease:Landroid/media/AudioTrack;

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
    const-string/jumbo v1, "start release task"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/AJVoice$1;->this$0:Lcom/ss/ttm/player/AJVoice;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttm/player/AJVoice$1;->val$toRelease:Landroid/media/AudioTrack;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/ss/ttm/player/AJVoice;->releaseTrack(Landroid/media/AudioTrack;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
