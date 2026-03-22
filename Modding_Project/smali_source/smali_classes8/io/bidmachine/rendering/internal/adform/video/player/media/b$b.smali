.class Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 2
    .line 3
    int-to-float p2, p2

    .line 4
    int-to-float p3, p3

    .line 5
    div-float/2addr p2, p3

    .line 6
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setVideoAspectRatio(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
