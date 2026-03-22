.class public Lcom/ss/ttvideoengine/log/VideoFilterMonitor;
.super Ljava/lang/Object;
.source "VideoFilterMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFilterMonitor"


# instance fields
.field private final mHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFilterOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private isEyeProtectionModeOn(Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "effect_type"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/16 v1, 0x15

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const-string/jumbo v0, "use_effect"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    :cond_1
    return v3

    .line 34
    :cond_2
    const/16 v1, 0x13

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    const-string v0, "int_value"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v2, :cond_3

    .line 45
    .line 46
    move v3, v2

    .line 47
    :cond_3
    return v3
.end method

.method private updateHistory(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "1"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "0"

    .line 12
    .line 13
    :goto_0
    const-string v1, "on"

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v1, "t"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v1, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
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
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->mHistoryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEffect(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "effect_type"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const-string p1, "VideoFilterMonitor"

    .line 14
    .line 15
    const-string v0, "not eye protection filter bundle"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->isEyeProtectionModeOn(Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->mIsFilterOn:Z

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->mIsFilterOn:Z

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->updateHistory(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method
