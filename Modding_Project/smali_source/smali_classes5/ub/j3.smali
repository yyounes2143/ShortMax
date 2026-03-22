.class public final synthetic Lub/j3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Y3;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Y3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/j3;->a:Lcom/inmobi/media/Y3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lub/j3;->a:Lcom/inmobi/media/Y3;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/inmobi/media/Y3;->b(Lcom/inmobi/media/Y3;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
