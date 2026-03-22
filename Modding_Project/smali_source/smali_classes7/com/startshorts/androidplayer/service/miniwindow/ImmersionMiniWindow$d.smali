.class public final Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;
.super Ljava/lang/Object;
.source "ImmersionMiniWindow.kt"

# interfaces
.implements Ljf/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->A0()V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

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
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->f0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "tryLoadNextEpisodes exception -> "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "ImmersionMiniWindow"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->Z(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
