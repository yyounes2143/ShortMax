.class Lcom/ss/ttm/player/AJMediaCodec$2;
.super Ljava/lang/Object;
.source "AJMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AJMediaCodec;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AJMediaCodec;

.field final synthetic val$mediaCodec:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec$2;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttm/player/AJMediaCodec$2;->val$mediaCodec:Landroid/media/MediaCodec;

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
    const-string v0, "JAJMediaCodec"

    .line 2
    .line 3
    const-string/jumbo v1, "start releaseCodec task"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0, v1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$2;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttm/player/AJMediaCodec$2;->val$mediaCodec:Landroid/media/MediaCodec;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$1000(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaCodec;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
