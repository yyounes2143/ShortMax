.class public final Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;
.super Lio/bidmachine/rendering/internal/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lrp/m;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 1

    .line 1
    invoke-static {p0}, Lyq/p;->e(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lrp/m;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lrp/m;->Y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lrp/m;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lrp/a;->a()Lrp/m;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lrp/m;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->e()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, p0}, Lrp/m;->c0(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lrp/a;->a()Lrp/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lrp/m;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Lrp/a;->b(Lrp/m;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->e()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
