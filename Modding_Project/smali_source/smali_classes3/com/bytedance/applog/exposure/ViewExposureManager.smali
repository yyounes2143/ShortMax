.class public final Lcom/bytedance/applog/exposure/ViewExposureManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/exposure/ViewExposureManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/applog/exposure/ViewExposureManager$a;

.field public static final synthetic g:[Lkotlin/reflect/KProperty;

.field public static final h:Lcom/bytedance/applog/exposure/ViewExposureConfig;


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/bytedance/bdtracker/r0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Lcom/bytedance/bdtracker/u0;

.field public d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

.field public final e:Lms/i;

.field public final f:Lcom/bytedance/bdtracker/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "task"

    .line 10
    .line 11
    const-string v3, "getTask()Lcom/bytedance/applog/exposure/task/ViewExposureTask;"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 25
    .line 26
    sput-object v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:[Lkotlin/reflect/KProperty;

    .line 27
    .line 28
    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureManager$a;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Lcom/bytedance/applog/exposure/ViewExposureManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->Companion:Lcom/bytedance/applog/exposure/ViewExposureManager$a;

    .line 35
    .line 36
    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-direct {v0, v2, v1, v3, v1}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 2
    .param p1    # Lcom/bytedance/bdtracker/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appLog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 10
    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/bdtracker/u0;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/bytedance/bdtracker/u0;-><init>(Landroid/app/Application;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lcom/bytedance/bdtracker/u0;

    .line 28
    .line 29
    sget-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->h:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 32
    .line 33
    new-instance v0, Lcom/bytedance/applog/exposure/ViewExposureManager$b;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/bytedance/applog/exposure/ViewExposureManager$b;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lms/i;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v0, 0x1

    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->b:Z

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lcom/bytedance/bdtracker/u0;

    .line 63
    .line 64
    new-instance v1, Lcom/bytedance/bdtracker/s0;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/s0;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/u0;->b(Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lcom/bytedance/bdtracker/u0;

    .line 73
    .line 74
    new-instance v1, Lcom/bytedance/bdtracker/t0;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/t0;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/u0;->a(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->b:Z

    .line 83
    .line 84
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    .line 86
    .line 87
    const-string v0, "null cannot be cast to non-null type android.app.Application"

    .line 88
    .line 89
    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public static final synthetic access$getTask$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lcom/bytedance/bdtracker/z0;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lms/i;

    .line 2
    .line 3
    sget-object v0, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:[Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/bytedance/bdtracker/z0;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getEventName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    const-string v3, "$bav2b_exposure"

    .line 18
    .line 19
    :goto_0
    const/4 v4, 0x1

    .line 20
    :try_start_1
    invoke-static {p1, v4}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/view/View;Z)Lcom/bytedance/bdtracker/w3;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v4, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    const-string v5, "page_key"

    .line 30
    .line 31
    :try_start_2
    iget-object v6, p1, Lcom/bytedance/bdtracker/w3;->v:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    const-string v5, "page_title"

    .line 37
    .line 38
    :try_start_3
    iget-object v6, p1, Lcom/bytedance/bdtracker/w3;->w:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    .line 43
    const-string v5, "element_path"

    .line 44
    .line 45
    :try_start_4
    iget-object v6, p1, Lcom/bytedance/bdtracker/w3;->x:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    .line 49
    .line 50
    const-string v5, "element_width"

    .line 51
    .line 52
    :try_start_5
    iget v6, p1, Lcom/bytedance/bdtracker/w3;->C:I

    .line 53
    .line 54
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    .line 56
    .line 57
    const-string v5, "element_height"

    .line 58
    .line 59
    :try_start_6
    iget v6, p1, Lcom/bytedance/bdtracker/w3;->D:I

    .line 60
    .line 61
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 62
    .line 63
    .line 64
    const-string v5, "element_id"

    .line 65
    .line 66
    :try_start_7
    iget-object v6, p1, Lcom/bytedance/bdtracker/w3;->y:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 69
    .line 70
    .line 71
    const-string v5, "element_type"

    .line 72
    .line 73
    :try_start_8
    iget-object v6, p1, Lcom/bytedance/bdtracker/w3;->z:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    iget-object v5, p1, Lcom/bytedance/bdtracker/w3;->B:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const-string v5, "positions"

    .line 90
    .line 91
    :try_start_9
    new-instance v6, Lorg/json/JSONArray;

    .line 92
    .line 93
    iget-object v7, p1, Lcom/bytedance/bdtracker/w3;->B:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    :goto_1
    iget-object v5, p1, Lcom/bytedance/bdtracker/w3;->A:Ljava/util/ArrayList;

    .line 105
    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string v5, "texts"

    .line 116
    .line 117
    :try_start_a
    new-instance v6, Lorg/json/JSONArray;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/bytedance/bdtracker/w3;->A:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getProperties()Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-static {p1, v4}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_3
    :try_start_b
    iget-object p2, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 140
    .line 141
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 142
    .line 143
    const-string v5, "JSON handle failed"

    .line 144
    .line 145
    :try_start_c
    new-array v6, v2, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-interface {p2, v1, v5, p1, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 151
    .line 152
    invoke-virtual {p1, v3, v4, v2}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :goto_5
    iget-object p2, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 157
    .line 158
    new-array v0, v2, [Ljava/lang/Object;

    .line 159
    .line 160
    const-string v2, "Run task failed"

    .line 161
    .line 162
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_6
    return-void
.end method

.method public final checkViewExposureFromActivity$agent_liteGlobalRelease(Landroid/app/Activity;)V
    .locals 13
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/WeakHashMap;

    .line 17
    .line 18
    if-eqz p1, :cond_7

    .line 19
    .line 20
    const-string v3, "activitiesMap[activity] ?: return@runSafely"

    .line 21
    .line 22
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_7

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/view/View;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/bytedance/bdtracker/r0;

    .line 56
    .line 57
    iget-object v5, v3, Lcom/bytedance/bdtracker/r0;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 58
    .line 59
    iget-boolean v6, v3, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 60
    .line 61
    const-string v7, "view"

    .line 62
    .line 63
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const/4 v8, 0x0

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_1
    move-object v7, v8

    .line 82
    :goto_1
    const-string v9, "$this$isVisibleInViewport"

    .line 83
    .line 84
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->e(Landroid/view/View;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    const/4 v10, 0x1

    .line 92
    if-eqz v9, :cond_3

    .line 93
    .line 94
    new-instance v9, Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v9}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_3

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    mul-int/2addr v9, v11

    .line 114
    int-to-float v9, v9

    .line 115
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    mul-int/2addr v12, v11

    .line 124
    int-to-float v11, v12

    .line 125
    if-eqz v7, :cond_2

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    const/4 v7, 0x0

    .line 133
    :goto_2
    mul-float/2addr v11, v7

    .line 134
    cmpl-float v7, v9, v11

    .line 135
    .line 136
    if-ltz v7, :cond_3

    .line 137
    .line 138
    move v7, v10

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    move v7, v2

    .line 141
    :goto_3
    if-eq v6, v7, :cond_0

    .line 142
    .line 143
    iget-boolean v6, v3, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 144
    .line 145
    if-nez v6, :cond_4

    .line 146
    .line 147
    invoke-virtual {p0, v4, v5}, Lcom/bytedance/applog/exposure/ViewExposureManager;->a(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    move v10, v2

    .line 152
    :goto_4
    iput-boolean v10, v3, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_5

    .line 159
    .line 160
    invoke-virtual {v6}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    :cond_5
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_6

    .line 171
    .line 172
    iget-boolean v6, v3, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 173
    .line 174
    invoke-static {v4, v6}, Lcom/bytedance/bdtracker/l0$b;->b(Landroid/view/View;Z)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object v6, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 178
    .line 179
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 180
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v8, "[ViewExposure] visible change to "

    .line 187
    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/r0;->b:Z

    .line 192
    .line 193
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v3, ", config="

    .line 197
    .line 198
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, " view="

    .line 209
    .line 210
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    new-array v4, v2, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-interface {v6, v1, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :goto_5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 228
    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    .line 230
    .line 231
    const-string v3, "Run task failed"

    .line 232
    .line 233
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    return-void
.end method

.method public final disposeViewExposure(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const-string v3, "ActivityUtil.findActivit\u2026view) ?: return@runSafely"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/WeakHashMap;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/bytedance/bdtracker/r0;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const-string v3, "activitiesMap[activity]?\u2026view) ?: return@runSafely"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v2, Lcom/bytedance/bdtracker/r0;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v2, 0x7

    .line 84
    const-string v3, "Run task failed"

    .line 85
    .line 86
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_3
    return-void
.end method

.method public final getActivitiesMap$agent_liteGlobalRelease()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/bytedance/bdtracker/r0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppLog()Lcom/bytedance/bdtracker/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lcom/bytedance/bdtracker/u0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/u0;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    return-object v0
.end method

.method public final observeViewExposure(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->observeViewExposure(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V

    return-void
.end method

.method public final observeViewExposure(Landroid/view/View;Lcom/bytedance/applog/exposure/ViewExposureData;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/exposure/ViewExposureData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    const/4 v1, 0x7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isExposureEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    .line 3
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "[ViewExposure] observe failed: The view context is not Activity."

    .line 5
    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lcom/bytedance/bdtracker/d5;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "[ViewExposure] observe failed: The view is ignored."

    .line 7
    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v5, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/WeakHashMap;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iget-object v6, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->a:Ljava/util/WeakHashMap;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getConfig()Lcom/bytedance/applog/exposure/ViewExposureConfig;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v3

    :goto_1
    const-string v8, "$this$copyWith"

    .line 8
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/bytedance/applog/exposure/ViewExposureConfig;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getAreaRatio()Ljava/lang/Float;

    move-result-object v9

    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v7

    :goto_3
    invoke-direct {v8, v9, v7}, Lcom/bytedance/applog/exposure/ViewExposureConfig;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;)V

    .line 9
    new-instance v6, Lcom/bytedance/applog/exposure/ViewExposureData;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getEventName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v3

    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/bytedance/applog/exposure/ViewExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object v3

    :cond_9
    invoke-direct {v6, v7, v3, v8}, Lcom/bytedance/applog/exposure/ViewExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/exposure/ViewExposureConfig;)V

    new-instance v3, Lcom/bytedance/bdtracker/r0;

    const/4 v7, 0x2

    invoke-direct {v3, v6, v2, v7}, Lcom/bytedance/bdtracker/r0;-><init>(Lcom/bytedance/applog/exposure/ViewExposureData;ZI)V

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/bytedance/applog/exposure/ViewExposureConfig;->getVisualDiagnosis()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "$this$enableViewExposureDebugMode"

    .line 10
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, Lcom/bytedance/bdtracker/o0;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/bytedance/bdtracker/o0;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    new-instance v3, Lcom/bytedance/bdtracker/o0;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/bytedance/bdtracker/o0;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_b
    invoke-virtual {p0, v4}, Lcom/bytedance/applog/exposure/ViewExposureManager;->checkViewExposureFromActivity$agent_liteGlobalRelease(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->c:Lcom/bytedance/bdtracker/u0;

    invoke-virtual {v3, p1}, Lcom/bytedance/bdtracker/u0;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ViewExposure] observe successful, data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", view="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, p1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->f:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "[ViewExposure] observe failed: InitConfig.exposureEnabled is not true."

    .line 15
    :try_start_3
    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 16
    :goto_6
    iget-object p2, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Run task failed"

    invoke-interface {p2, v1, v2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public final updateExposureCheckStrategy(Lcom/bytedance/bdtracker/q0;)V
    .locals 3
    .param p1    # Lcom/bytedance/bdtracker/q0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->e:Lms/i;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/applog/exposure/ViewExposureManager;->g:[Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bytedance/bdtracker/z0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/z0;->a(Lcom/bytedance/bdtracker/q0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateViewExposureConfig(Lcom/bytedance/applog/exposure/ViewExposureConfig;)V
    .locals 1
    .param p1    # Lcom/bytedance/applog/exposure/ViewExposureConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewExposureConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager;->d:Lcom/bytedance/applog/exposure/ViewExposureConfig;

    .line 7
    .line 8
    return-void
.end method
