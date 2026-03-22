.class public final synthetic Lnh/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnh/h;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnh/h;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
