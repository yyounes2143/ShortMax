.class Lio/bidmachine/nativead/view/MediaView$h$a;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/nativead/view/MediaView$h;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$h$a;->a:Lio/bidmachine/nativead/view/MediaView$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h$a;->a:Lio/bidmachine/nativead/view/MediaView$h;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 4
    .line 5
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->v(Lio/bidmachine/nativead/view/MediaView;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h$a;->a:Lio/bidmachine/nativead/view/MediaView$h;

    .line 9
    .line 10
    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 11
    .line 12
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->r(Lio/bidmachine/nativead/view/MediaView;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$h$a;->a:Lio/bidmachine/nativead/view/MediaView$h;

    .line 19
    .line 20
    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$h;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->V()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
