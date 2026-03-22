.class public final Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultPushManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;->a:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

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
    .locals 2

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
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "onReceive -> mStarted("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;->a:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->j(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ") action("

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x29

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "DefaultPushManager"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;->a:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->j(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;->a:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->k(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method
