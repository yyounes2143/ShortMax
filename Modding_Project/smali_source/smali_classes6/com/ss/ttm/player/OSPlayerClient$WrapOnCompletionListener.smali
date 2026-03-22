.class Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;
.super Ljava/lang/Object;
.source "OSPlayerClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/OSPlayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrapOnCompletionListener"
.end annotation


# instance fields
.field private mListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

.field private mWrapper:Lcom/ss/ttm/player/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;->mListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;->mListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/ss/ttm/player/MediaPlayer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
