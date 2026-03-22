.class public final synthetic Lub/z4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/l9;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/l9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/z4;->a:Lcom/inmobi/media/l9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lub/z4;->a:Lcom/inmobi/media/l9;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/media/l9;->b(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
