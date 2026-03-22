.class Lio/bidmachine/nativead/view/VideoPlayerActivity$b;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/VideoPlayerActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/nativead/view/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$b;->a:Lio/bidmachine/nativead/view/VideoPlayerActivity;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$b;->a:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
