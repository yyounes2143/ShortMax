.class public final Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;
.super Lz2/a;
.source "VideoPreview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->i(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/a<",
        "Ly3/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lz2/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMHasBgLoaded(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lz2/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMControllerListener()Lz2/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lz2/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMHasBgLoaded(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz2/a;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMControllerListener()Lz2/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lz2/a;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;->b:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMHasBgLoaded(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
