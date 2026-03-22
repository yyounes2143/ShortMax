.class public Lcom/bytedance/bdtracker/e5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Ljava/lang/Class;

.field public static d:Ljava/lang/Class;

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WindowHelper"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bytedance/bdtracker/e5;->a:Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/bytedance/bdtracker/e5;->e:Z

    .line 11
    .line 12
    return-void
.end method

.method public static a()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/bytedance/bdtracker/e5;->e:Z

    if-nez v0, :cond_1

    const-string v0, "android.view.WindowManagerGlobal"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "sDefaultWindowManager"

    :try_start_1
    const-string v4, "mViews"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/bytedance/bdtracker/e5;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v3, Lcom/bytedance/bdtracker/e5;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v3, Lcom/bytedance/bdtracker/e5;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/ArrayList;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/bytedance/bdtracker/e5;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    sget-object v4, Lcom/bytedance/bdtracker/e5;->a:Ljava/util/List;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Get window manager views failed"

    invoke-interface {v3, v4, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "com.android.internal.policy.PhoneWindow$DecorView"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/e5;->c:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    const-string v0, "com.android.internal.policy.DecorView"

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/e5;->c:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    sget-object v4, Lcom/bytedance/bdtracker/e5;->a:Ljava/util/List;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Get DecorView failed"

    invoke-interface {v3, v4, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/e5;->d:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    sget-object v4, Lcom/bytedance/bdtracker/e5;->a:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Get popup view failed"

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    sput-boolean v2, Lcom/bytedance/bdtracker/e5;->e:Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/bytedance/bdtracker/e5;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/bdtracker/e5;->a()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/bytedance/bdtracker/e5;->c:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/bytedance/bdtracker/e5;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
