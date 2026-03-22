.class public Lcom/ss/ttm/player/TTSurfaceCallback;
.super Ljava/lang/Object;
.source "TTSurfaceCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSurfaceCallback"


# instance fields
.field private mListener:Lcom/ss/ttm/player/ISurfaceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Lcom/ss/ttm/player/ISurfaceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttm/player/TTSurfaceCallback;->mListener:Lcom/ss/ttm/player/ISurfaceListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    sget-object p2, Lcom/ss/ttm/player/TTSurfaceCallback;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo p3, "surface is changed"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/ss/ttm/player/TTSurfaceCallback;->mListener:Lcom/ss/ttm/player/ISurfaceListener;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/ss/ttm/player/ISurfaceListener;->onSurfaceChanged(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTSurfaceCallback;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "surface is create"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTSurfaceCallback;->mListener:Lcom/ss/ttm/player/ISurfaceListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/ISurfaceListener;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTSurfaceCallback;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "surface is destroyed"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTSurfaceCallback;->mListener:Lcom/ss/ttm/player/ISurfaceListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/ss/ttm/player/ISurfaceListener;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
