.class public Lcom/ss/ttm/player/AJMediaCodecFrame;
.super Ljava/lang/Object;
.source "AJMediaCodecFrame.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public flags:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public index:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public pts:J
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public size:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x10101011

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/ttm/player/AJMediaCodecFrame;->pts:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public clone()Lcom/ss/ttm/player/AJMediaCodecFrame;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttm/player/AJMediaCodecFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/AJMediaCodecFrame;->clone()Lcom/ss/ttm/player/AJMediaCodecFrame;

    move-result-object v0

    return-object v0
.end method
