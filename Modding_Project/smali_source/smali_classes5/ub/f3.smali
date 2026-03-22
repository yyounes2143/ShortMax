.class public final synthetic Lub/f3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;

.field public final synthetic b:Lcom/inmobi/media/Xb;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/ec;Lcom/inmobi/media/Xb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/f3;->a:Lcom/inmobi/media/ec;

    .line 5
    .line 6
    iput-object p2, p0, Lub/f3;->b:Lcom/inmobi/media/Xb;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lub/f3;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    iget-object v1, p0, Lub/f3;->b:Lcom/inmobi/media/Xb;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/inmobi/media/Xb;->a(Lcom/inmobi/media/ec;Lcom/inmobi/media/Xb;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
