.class public final Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$b;
.super Ljava/lang/Object;
.source "ImmersionMiniWindow.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/player/feature/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->m0()Lcom/startshorts/androidplayer/manager/player/feature/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->k:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->w(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
