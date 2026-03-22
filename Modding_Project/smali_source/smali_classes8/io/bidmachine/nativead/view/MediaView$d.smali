.class Lio/bidmachine/nativead/view/MediaView$d;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Lnp/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lnp/d;Landroid/net/Uri;Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lnp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "MediaView video is loaded"

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 7
    .line 8
    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lmp/g;->j(Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 14
    .line 15
    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->b:Lmp/g;

    .line 16
    .line 17
    invoke-interface {p1, p3}, Lmp/g;->b(Lio/bidmachine/iab/vast/a;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->w(Lio/bidmachine/nativead/view/MediaView;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public b(Lnp/d;)V
    .locals 1
    .param p1    # Lnp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "MediaView video is not loaded"

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->x(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$d;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->y(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
