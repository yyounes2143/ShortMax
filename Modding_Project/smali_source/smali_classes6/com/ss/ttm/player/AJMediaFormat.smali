.class public Lcom/ss/ttm/player/AJMediaFormat;
.super Ljava/lang/Object;
.source "AJMediaFormat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# instance fields
.field public channelCount:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public colorFormat:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public colorTrans:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public height:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public sampleRate:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public sliceHeight:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public stride:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field

.field public width:I
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->width:I

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->height:I

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->sampleRate:I

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->channelCount:I

    .line 9
    .line 10
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->colorFormat:I

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->colorTrans:I

    .line 13
    .line 14
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->sliceHeight:I

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttm/player/AJMediaFormat;->stride:I

    .line 17
    .line 18
    return-void
.end method
