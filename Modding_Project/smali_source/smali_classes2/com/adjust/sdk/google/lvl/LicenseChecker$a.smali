.class Lcom/adjust/sdk/google/lvl/LicenseChecker$a;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/google/lvl/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/google/lvl/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/adjust/sdk/google/lvl/LicenseChecker$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "LVL binder died unexpectedly"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$500(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, -0x6

    .line 22
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "LVL service connected"

    .line 11
    .line 12
    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$102(Lcom/adjust/sdk/google/lvl/LicenseChecker;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-static {p1, p2}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$202(Lcom/adjust/sdk/google/lvl/LicenseChecker;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$302(Lcom/adjust/sdk/google/lvl/LicenseChecker;I)I

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$100(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/adjust/sdk/google/lvl/a;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/adjust/sdk/google/lvl/a;-><init>(Lcom/adjust/sdk/google/lvl/LicenseChecker$a;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v0, "LVL failed to link binder death recipient"

    .line 54
    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, v0, p1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$400(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "LVL service disconnected"

    .line 11
    .line 12
    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$102(Lcom/adjust/sdk/google/lvl/LicenseChecker;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$202(Lcom/adjust/sdk/google/lvl/LicenseChecker;Z)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
