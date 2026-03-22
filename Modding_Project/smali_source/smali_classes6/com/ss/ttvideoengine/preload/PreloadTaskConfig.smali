.class public Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;
.super Ljava/lang/Object;
.source "PreloadTaskConfig.java"


# instance fields
.field public count:I

.field public offset:I

.field public progress:I

.field public size:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;->progress:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;->offset:I

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;->count:I

    .line 12
    .line 13
    iput p2, p0, Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;->size:I

    .line 14
    .line 15
    return-void
.end method
