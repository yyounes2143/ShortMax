.class public final Lye/b$b;
.super Ljava/lang/Object;
.source "VideoPreviewManager.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/b;->g(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lye/b;


# direct methods
.method constructor <init>(Lye/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lye/b$b;->a:Lye/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "play: isMute: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    xor-int/lit8 v2, p1, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "VideoPreviewManager"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lye/b$b;->a:Lye/b;

    .line 28
    .line 29
    invoke-static {v0}, Lye/b;->b(Lye/b;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/b$c;

    .line 36
    .line 37
    xor-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$c;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
