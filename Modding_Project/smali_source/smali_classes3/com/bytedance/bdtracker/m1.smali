.class public Lcom/bytedance/bdtracker/m1;
.super Lcom/bytedance/bdtracker/k1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 2
    .param p1    # Lcom/bytedance/bdtracker/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/k1;-><init>(ZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/bdtracker/m1;->e:Lcom/bytedance/bdtracker/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "business_conversion_id"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/bytedance/bdtracker/m1;->e:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " class, get id error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "getIdAndSetIntoJson"

    :try_start_0
    const-class v1, Lorg/json/JSONObject;

    const-class v2, Landroid/content/Context;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/m1;->e:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 9
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    :try_start_0
    const-string v0, "com.bytedance.applog.convert.ClickIdProvider"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/m1;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/m1;->e:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ClickId find error"

    invoke-interface {v1, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :try_start_1
    const-string v0, "com.bytedance.applog.convert.IPIDProvider"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/m1;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/m1;->e:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "IPID find error"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
