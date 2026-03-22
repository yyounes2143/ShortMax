.class Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;
.super Ljava/lang/Object;
.source "AJProducerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/AJProducerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageReaderListenerWrapper"
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field public listener:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->listener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method
