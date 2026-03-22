.class public Lcom/bytedance/bdtracker/v1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/bdtracker/d;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/bdtracker/v1;->e:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Display"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    const-class v0, Landroid/view/Display;

    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v1, :sswitch_data_0

    const-string v2, "mdpi"

    goto :goto_0

    :sswitch_0
    const-string v2, "xxxhdpi"

    goto :goto_0

    :sswitch_1
    const-string v2, "xxhdpi"

    goto :goto_0

    :sswitch_2
    const-string v2, "xhdpi"

    goto :goto_0

    :sswitch_3
    const-string v2, "hdpi"

    goto :goto_0

    :sswitch_4
    const-string v2, "ldpi"

    :goto_0
    const-string v3, "density_dpi"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "display_density"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move v0, v3

    goto :goto_3

    :cond_0
    const-string v2, "getRawHeight"

    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "getRawWidth"

    :try_start_3
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_2
    :goto_2
    move v1, v3

    goto :goto_4

    :goto_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Get screen pixels failed"

    invoke-interface {v2, v5, v1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_4
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_4
        0xf0 -> :sswitch_3
        0x104 -> :sswitch_2
        0x118 -> :sswitch_2
        0x12c -> :sswitch_2
        0x140 -> :sswitch_2
        0x154 -> :sswitch_1
        0x168 -> :sswitch_1
        0x190 -> :sswitch_1
        0x1a4 -> :sswitch_1
        0x1b8 -> :sswitch_1
        0x1e0 -> :sswitch_1
        0x230 -> :sswitch_0
        0x280 -> :sswitch_0
    .end sparse-switch
.end method
