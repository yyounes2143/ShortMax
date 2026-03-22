.class Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;
.super Ljava/lang/Object;
.source "OSPlayerClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/OSPlayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapOnInfoListener"
.end annotation


# instance fields
.field private mListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

.field private mWrapper:Lcom/ss/ttm/player/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;->mListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;->mListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2, p3}, Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;->onInfo(Lcom/ss/ttm/player/MediaPlayer;II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
