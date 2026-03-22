.class final Lcom/pandora/ttlicense2/utils/NetWorkUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/utils/NetWorkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const-string v0, "networkInfo"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/net/NetworkInfo;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->access$000(Landroid/net/NetworkInfo;)V

    .line 32
    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->access$100(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_2
    const-class p1, Lcom/pandora/ttlicense2/utils/NetWorkUtils;

    .line 41
    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    invoke-static {}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->access$200()Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-interface {v0, p2}, Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;->onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p2

    .line 57
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p2

    .line 59
    :cond_3
    :goto_0
    return-void
.end method
