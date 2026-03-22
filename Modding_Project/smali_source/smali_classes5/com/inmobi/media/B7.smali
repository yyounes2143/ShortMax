.class public final Lcom/inmobi/media/B7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/r7;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lcom/inmobi/media/F7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/F7;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "jsCallbackNamespace"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/media/B7;->b:Lcom/inmobi/media/F7;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/B7;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0, v1}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

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
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    const-string p1, "state"

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p2, p0, Lcom/inmobi/media/B7;->b:Lcom/inmobi/media/F7;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/inmobi/media/F7;->b:Lcom/inmobi/media/z5;

    .line 33
    .line 34
    const-string v1, "MraidMediaProcessor"

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Headphone plugged state changed: "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast p2, Lcom/inmobi/media/A5;

    .line 53
    .line 54
    invoke-virtual {p2, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p2, p0, Lcom/inmobi/media/B7;->b:Lcom/inmobi/media/F7;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/inmobi/media/B7;->a:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    if-ne v3, p1, :cond_1

    .line 63
    .line 64
    move v0, v3

    .line 65
    :cond_1
    iget-object p1, p2, Lcom/inmobi/media/F7;->b:Lcom/inmobi/media/z5;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    check-cast p1, Lcom/inmobi/media/A5;

    .line 70
    .line 71
    const-string v3, "fireHeadphonePluggedEvent"

    .line 72
    .line 73
    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p2, Lcom/inmobi/media/F7;->a:Lcom/inmobi/media/ec;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "fireHeadphonePluggedEvent("

    .line 83
    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ");"

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method
