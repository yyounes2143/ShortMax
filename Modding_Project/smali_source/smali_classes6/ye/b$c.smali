.class public final Lye/b$c;
.super Lz2/a;
.source "VideoPreviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/b;->g(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
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
.field final synthetic b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

.field final synthetic c:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

.field final synthetic d:Lye/b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;Lye/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lye/b$c;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lye/b$c;->c:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 4
    .line 5
    iput-object p3, p0, Lye/b$c;->d:Lye/b;

    .line 6
    .line 7
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lz2/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lye/b$c;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lye/b$c;->c:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_horizontal_image_video_preview_bg:I

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lye/b$c;->d:Lye/b;

    .line 26
    .line 27
    iget-object p2, p0, Lye/b$c;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lye/b;->c(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lye/b$c;->c:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMControllerListener(Lz2/a;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    const-string p2, "VideoPreviewManager"

    .line 41
    .line 42
    const-string v0, "play: doPlay by onFailure"

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lye/b$c;->g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz2/a;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lye/b$c;->d:Lye/b;

    .line 5
    .line 6
    iget-object p2, p0, Lye/b$c;->b:Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lye/b;->c(Lye/b;Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lye/b$c;->c:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setMControllerListener(Lz2/a;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string p2, "VideoPreviewManager"

    .line 20
    .line 21
    const-string p3, "play: doPlay by onFinalImageSet"

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
