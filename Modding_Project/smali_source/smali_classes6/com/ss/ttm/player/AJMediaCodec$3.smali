.class Lcom/ss/ttm/player/AJMediaCodec$3;
.super Ljava/lang/Object;
.source "AJMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AJMediaCodec;->flush()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AJMediaCodec;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AJMediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec$3;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$3;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$000(Lcom/ss/ttm/player/AJMediaCodec;)Landroid/media/MediaCodec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$3;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 10
    .line 11
    new-instance v1, Lcom/ss/ttm/player/AJMediaCodec$3$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/ss/ttm/player/AJMediaCodec$3$1;-><init>(Lcom/ss/ttm/player/AJMediaCodec$3;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$1100(Lcom/ss/ttm/player/AJMediaCodec;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method
