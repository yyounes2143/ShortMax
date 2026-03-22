.class public final synthetic Lph/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lph/b;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lph/b;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->K(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
