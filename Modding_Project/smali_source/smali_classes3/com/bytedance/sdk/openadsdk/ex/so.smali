.class public Lcom/bytedance/sdk/openadsdk/ex/so;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Pfn:Z = false

.field private static ZYk:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ex:Ljava/lang/reflect/Method;

.field private static oJ:Ljava/lang/reflect/Method;

.field private static tB:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/so;->ZYk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static ZYk()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ex/so;->Pfn:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x23

    .line 8
    .line 9
    if-lt v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/so;->tB()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-class v2, Landroid/app/ActivityManager;

    .line 19
    .line 20
    const-string v3, "getHistoricalProcessStartReasons"

    .line 21
    .line 22
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lcom/bytedance/sdk/openadsdk/ex/so;->oJ:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    const-string v2, "android.app.ApplicationStartInfo"

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sput-object v2, Lcom/bytedance/sdk/openadsdk/ex/so;->ZYk:Ljava/lang/Class;

    .line 41
    .line 42
    const-string v3, "getReason"

    .line 43
    .line 44
    new-array v4, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sput-object v2, Lcom/bytedance/sdk/openadsdk/ex/so;->ex:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    const/16 v2, 0x24

    .line 53
    .line 54
    if-lt v0, v2, :cond_0

    .line 55
    .line 56
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/so;->ZYk:Ljava/lang/Class;

    .line 57
    .line 58
    const-string v2, "getStartComponent"

    .line 59
    .line 60
    new-array v3, v1, [Ljava/lang/Class;

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/bytedance/sdk/openadsdk/ex/so;->tB:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/ex/so;->Pfn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method public static oJ()Lorg/json/JSONObject;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/so;->tB()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/so;->ZYk()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-class v4, Landroid/app/ActivityManager;

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/app/ActivityManager;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    sget-object v4, Lcom/bytedance/sdk/openadsdk/ex/so;->oJ:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/List;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/16 v4, 0x24

    .line 69
    .line 70
    if-lt v0, v4, :cond_0

    .line 71
    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/so;->tB:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    new-array v4, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const-string v4, "start_component"

    .line 91
    .line 92
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    move-object v2, v3

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 100
    .line 101
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/so;->ex:Ljava/lang/reflect/Method;

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    new-array v4, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v2, "start_reason"

    .line 118
    .line 119
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    :cond_1
    move-object v2, v3

    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_2
    return-object v2
.end method

.method private static tB()Z
    .locals 3

    .line 1
    const-string v0, "s_i_e"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    return v1
.end method
