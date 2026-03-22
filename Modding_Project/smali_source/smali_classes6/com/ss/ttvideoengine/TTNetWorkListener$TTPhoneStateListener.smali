.class Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "TTNetWorkListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTNetWorkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTPhoneStateListener"
.end annotation


# instance fields
.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetWorkListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/TTNetWorkListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mHandler:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mHandler:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    :cond_0
    :try_start_0
    const-string p2, "phone"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string p1, "TTNetWorkListener"

    .line 33
    .line 34
    const-string p2, "create telephonyManager failed"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private listenCompact(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1f

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "data connection state changed, state: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", networkType: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "TTNetWorkListener"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mHandler:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->access$000(Lcom/ss/ttvideoengine/TTNetWorkListener;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->access$100(Lcom/ss/ttvideoengine/TTNetWorkListener;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mHandler:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->access$000(Lcom/ss/ttvideoengine/TTNetWorkListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    const-string p1, "TTNetWorkListener"

    .line 36
    .line 37
    const-string v1, "failed to get signalStrength"

    .line 38
    .line 39
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->access$200(Lcom/ss/ttvideoengine/TTNetWorkListener;I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "TTNetWorkListener"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string/jumbo v1, "start listen signal strength"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x100

    .line 14
    .line 15
    invoke-direct {p0, p1, p0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->listenCompact(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string v1, "listen signal strength failed"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/16 v0, 0x40

    .line 25
    .line 26
    invoke-direct {p0, p1, p0, v0}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->listenCompact(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p0, v0}, Lcom/ss/ttvideoengine/TTNetWorkListener$TTPhoneStateListener;->listenCompact(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
