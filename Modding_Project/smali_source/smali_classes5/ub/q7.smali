.class public final synthetic Lub/q7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/v7;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/v7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/q7;->a:Lcom/inmobi/media/v7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lub/q7;->a:Lcom/inmobi/media/v7;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/media/v7;->a(Lcom/inmobi/media/v7;Landroid/media/MediaPlayer;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
