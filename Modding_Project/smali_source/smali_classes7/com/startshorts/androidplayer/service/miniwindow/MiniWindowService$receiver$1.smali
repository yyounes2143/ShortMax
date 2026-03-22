.class public final Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MiniWindowService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const v0, -0x7ed8ea7f

    .line 22
    .line 23
    .line 24
    if-eq p2, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "SCREEN_OFF -> isPlayComplete("

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ") isPlaying("

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->t()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v0, 0x29

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string v0, "MiniWindowService"

    .line 80
    .line 81
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->t()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->x(Z)V

    .line 105
    .line 106
    .line 107
    nop

    .line 108
    :cond_2
    :goto_0
    return-void
.end method
