.class public Lcom/bytedance/bdtracker/f0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/e0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/f0;->a:Lcom/bytedance/bdtracker/e0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/u3;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/f0;->a:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isScreenOrientationEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/bdtracker/f0;->a:Lcom/bytedance/bdtracker/e0;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/bytedance/applog/util/HardwareUtils;->getScreenOrientation(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-string v2, "$screen_orientation"

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    const-string v1, "landscape"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v1, "portrait"

    .line 42
    .line 43
    :goto_1
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    move-object v4, p1

    .line 49
    goto :goto_3

    .line 50
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/bytedance/bdtracker/f0;->a:Lcom/bytedance/bdtracker/e0;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->B:Lcom/bytedance/bdtracker/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const-string v2, "$longitude"

    .line 59
    .line 60
    :try_start_2
    iget v3, v1, Lcom/bytedance/bdtracker/s;->a:F

    .line 61
    .line 62
    float-to-double v3, v3

    .line 63
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    const-string v2, "$latitude"

    .line 67
    .line 68
    :try_start_3
    iget v3, v1, Lcom/bytedance/bdtracker/s;->b:F

    .line 69
    .line 70
    float-to-double v3, v3

    .line 71
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    .line 74
    const-string v2, "$geo_coordinate_system"

    .line 75
    .line 76
    :try_start_4
    iget-object v1, v1, Lcom/bytedance/bdtracker/s;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_4

    .line 86
    .line 87
    iput-object v0, p1, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :goto_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/f0;->a:Lcom/bytedance/bdtracker/e0;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 93
    .line 94
    iget-object v0, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 95
    .line 96
    const-string p1, "LifeHook"

    .line 97
    .line 98
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 p1, 0x0

    .line 103
    new-array v5, p1, [Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v1, 0x4

    .line 106
    const-string v3, "Do beforeEventSave failed"

    .line 107
    .line 108
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_4
    return-void
.end method
