.class public final Lcom/startshorts/androidplayer/manager/player/feature/c$b;
.super Lyd/g;
.source "CommonFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/player/feature/c;->f(Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/player/feature/c;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/player/feature/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/c$b;->a:Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lyd/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    const-string/jumbo p2, "surface"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string p3, "CommonFeature"

    .line 10
    .line 11
    const-string v0, "onSurfaceTextureAvailable"

    .line 12
    .line 13
    invoke-virtual {p2, p3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/c$b;->a:Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->m(Landroid/graphics/SurfaceTexture;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "surface"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string v1, "CommonFeature"

    .line 10
    .line 11
    const-string v2, "onSurfaceTextureDestroyed"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lyd/g;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method
