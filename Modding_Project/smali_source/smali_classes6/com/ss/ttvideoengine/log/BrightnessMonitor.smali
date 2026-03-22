.class public Lcom/ss/ttvideoengine/log/BrightnessMonitor;
.super Ljava/lang/Object;
.source "BrightnessMonitor.java"


# static fields
.field private static final LIST_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BrightnessMonitor"


# instance fields
.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsPlaying:Z

.field private volatile mIsStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/log/BrightnessMonitor$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/log/BrightnessMonitor$1;-><init>(Lcom/ss/ttvideoengine/log/BrightnessMonitor;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/BrightnessMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->addToHistory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addToHistory()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsPlaying:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getNormalizedBrightness(Landroid/content/Context;)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "b"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string/jumbo v2, "t"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v2, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsPlaying:Z

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsStart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsStart:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "screen_brightness"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "BrightnessMonitor"

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->addToHistory()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsStart:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mIsStart:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
