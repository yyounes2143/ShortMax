.class Lio/bidmachine/nativead/view/MediaView$f;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->C()V
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
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->c(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->z(Lio/bidmachine/nativead/view/MediaView;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 13
    .line 14
    sget-object v2, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lio/bidmachine/nativead/view/MediaView;->x(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->V()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v2}, Lio/bidmachine/nativead/view/MediaView;->f(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->y(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$f;->a:Lio/bidmachine/nativead/view/MediaView;

    .line 36
    .line 37
    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->g(Lio/bidmachine/nativead/view/MediaView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
