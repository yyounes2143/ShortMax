.class public final Lcom/bytedance/bdtracker/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/bytedance/applog/IDataObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic k:[Lkotlin/reflect/KProperty;


# instance fields
.field public a:Z

.field public final b:Lms/i;

.field public c:Lcom/bytedance/bdtracker/e0;

.field public d:Lcom/bytedance/bdtracker/h;

.field public e:I

.field public f:Lcom/bytedance/bdtracker/q;

.field public g:I

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lcom/bytedance/bdtracker/j;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "mHandler"

    .line 10
    .line 11
    const-string v3, "getMHandler()Landroid/os/Handler;"

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
    sput-object v1, Lcom/bytedance/bdtracker/j;->k:[Lkotlin/reflect/KProperty;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 10
    .param p1    # Lcom/bytedance/bdtracker/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "engine"

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
    new-instance v0, Lcom/bytedance/bdtracker/j$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/j$a;-><init>(Lcom/bytedance/bdtracker/j;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/bytedance/bdtracker/j;->b:Lms/i;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    iput v0, p0, Lcom/bytedance/bdtracker/j;->g:I

    .line 25
    .line 26
    const-string v0, "utm_medium"

    .line 27
    .line 28
    const-string v1, "utm_content"

    .line 29
    .line 30
    const-string v2, "utm_campaign"

    .line 31
    .line 32
    const-string v3, "utm_source"

    .line 33
    .line 34
    const-string v4, "utm_term"

    .line 35
    .line 36
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/bytedance/bdtracker/j;->i:Ljava/util/List;

    .line 45
    .line 46
    const-string v8, "reengagement_time"

    .line 47
    .line 48
    const-string v9, "is_retargeting"

    .line 49
    .line 50
    const-string v1, "tr_shareuser"

    .line 51
    .line 52
    const-string v2, "tr_admaster"

    .line 53
    .line 54
    const-string v3, "tr_param1"

    .line 55
    .line 56
    const-string v4, "tr_param2"

    .line 57
    .line 58
    const-string v5, "tr_param3"

    .line 59
    .line 60
    const-string v6, "tr_param4"

    .line 61
    .line 62
    const-string v7, "reengagement_window"

    .line 63
    .line 64
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/bytedance/bdtracker/j;->j:Ljava/util/List;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 75
    .line 76
    const-string v1, "ALINK_CACHE_SP"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/bytedance/bdtracker/h;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    check-cast v2, Landroid/app/Application;

    .line 91
    .line 92
    const-string v3, "spName"

    .line 93
    .line 94
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v0}, Lcom/bytedance/bdtracker/h;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 101
    .line 102
    new-instance v0, Lcom/bytedance/bdtracker/q;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    .line 106
    const-string v1, "engine.appLog"

    .line 107
    .line 108
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/q;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/bytedance/bdtracker/j;->f:Lcom/bytedance/bdtracker/q;

    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    .line 118
    .line 119
    const-string v0, "null cannot be cast to non-null type android.app.Application"

    .line 120
    .line 121
    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/j;->b:Lms/i;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/bdtracker/j;->k:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Landroid/os/Handler;

    .line 13
    .line 14
    return-object v0
.end method

.method public final b()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    .line 5
    const-string v1, "mEngine.appLog"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    return-object v0
.end method

.method public final c()V
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 12
    .line 13
    const-string v3, "deep_link"

    .line 14
    .line 15
    const-class v4, Lcom/bytedance/bdtracker/k;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/bytedance/bdtracker/p;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/bytedance/bdtracker/k;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/k;->a()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v2, v3

    .line 32
    :goto_0
    if-eqz v2, :cond_5

    .line 33
    .line 34
    iget-object v4, p0, Lcom/bytedance/bdtracker/j;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/bytedance/bdtracker/j;->j:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    const-string v6, "is_retargeting"

    .line 79
    .line 80
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 105
    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    const-string v3, "tracer_data"

    .line 109
    .line 110
    invoke-virtual {v2, v3, v0}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 144
    .line 145
    const-string v1, "tr_web_ssid"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 163
    .line 164
    const-string v2, "$tr_web_ssid"

    .line 165
    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/bdtracker/d;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 21
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v3, v1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    const-string v4, "$invoke"

    .line 16
    .line 17
    const-string v5, "$link_type"

    .line 18
    .line 19
    const-string v6, "mEngine.uriConfig"

    .line 20
    .line 21
    const-string v7, "google_aid"

    .line 22
    .line 23
    const-string v8, "id"

    .line 24
    .line 25
    const-class v9, Lorg/json/JSONObject;

    .line 26
    .line 27
    const-string v10, "oaid"

    .line 28
    .line 29
    const-string v11, "os_version"

    .line 30
    .line 31
    const-string v12, "device_model"

    .line 32
    .line 33
    const-string v13, "android"

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const-class v14, Ljava/lang/String;

    .line 37
    .line 38
    const-string v15, "mEngine.appLog"

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto/16 :goto_c

    .line 43
    .line 44
    :cond_1
    move-object/from16 v17, v4

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v2, :cond_11

    .line 51
    .line 52
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 55
    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iget v3, v0, Lcom/bytedance/bdtracker/j;->e:I

    .line 66
    .line 67
    iget v4, v0, Lcom/bytedance/bdtracker/j;->g:I

    .line 68
    .line 69
    if-ge v3, v4, :cond_4

    .line 70
    .line 71
    add-int/2addr v3, v2

    .line 72
    iput v3, v0, Lcom/bytedance/bdtracker/j;->e:I

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/j;->b()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget v4, v0, Lcom/bytedance/bdtracker/j;->e:I

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v5, "Retry do deep link delay for the {} times..."

    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    invoke-interface {v3, v6, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/j;->a()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget v4, v1, Landroid/os/Message;->what:I

    .line 99
    .line 100
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-wide/16 v4, 0x1f4

    .line 107
    .line 108
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    move v1, v2

    .line 112
    goto/16 :goto_17

    .line 113
    .line 114
    :cond_4
    const/4 v6, 0x3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/j;->b()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/4 v3, 0x0

    .line 120
    new-array v3, v3, [Ljava/lang/Object;

    .line 121
    .line 122
    const-string v4, "Retried max times to do deep link until AppLog ready"

    .line 123
    .line 124
    invoke-interface {v1, v6, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    if-eqz v1, :cond_10

    .line 131
    .line 132
    check-cast v1, Lcom/bytedance/bdtracker/l;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/l;->d()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_f

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_6

    .line 145
    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_6
    iput-object v13, v1, Lcom/bytedance/bdtracker/l;->l:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 151
    .line 152
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 153
    .line 154
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/l;->a(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 163
    .line 164
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 165
    .line 166
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/l;->b(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 177
    .line 178
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 179
    .line 180
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/l;->c(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 191
    .line 192
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 193
    .line 194
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getUserUniqueID()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/l;->d(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 205
    .line 206
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 207
    .line 208
    if-eqz v4, :cond_7

    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->g()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    goto :goto_3

    .line 215
    :cond_7
    const/4 v4, 0x0

    .line 216
    :goto_3
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->h:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 219
    .line 220
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 221
    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->j()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    const/4 v4, 0x0

    .line 230
    :goto_4
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->i:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 233
    .line 234
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 235
    .line 236
    if-eqz v4, :cond_9

    .line 237
    .line 238
    const/4 v13, 0x0

    .line 239
    invoke-virtual {v4, v12, v13, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    move-object/from16 v16, v4

    .line 244
    .line 245
    check-cast v16, Ljava/lang/String;

    .line 246
    .line 247
    move-object/from16 v4, v16

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_9
    const/4 v13, 0x0

    .line 251
    move-object v4, v13

    .line 252
    :goto_5
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->n:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 255
    .line 256
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 257
    .line 258
    if-eqz v4, :cond_a

    .line 259
    .line 260
    invoke-virtual {v4, v11, v13, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    move-object/from16 v16, v4

    .line 265
    .line 266
    check-cast v16, Ljava/lang/String;

    .line 267
    .line 268
    move-object/from16 v4, v16

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_a
    move-object v4, v13

    .line 272
    :goto_6
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->m:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 275
    .line 276
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 277
    .line 278
    if-eqz v4, :cond_b

    .line 279
    .line 280
    invoke-virtual {v4, v10, v13, v9}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lorg/json/JSONObject;

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_b
    const/4 v4, 0x0

    .line 288
    :goto_7
    if-eqz v4, :cond_c

    .line 289
    .line 290
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    goto :goto_8

    .line 295
    :cond_c
    const/4 v4, 0x0

    .line 296
    :goto_8
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->j:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 299
    .line 300
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 301
    .line 302
    if-eqz v4, :cond_d

    .line 303
    .line 304
    const/4 v8, 0x0

    .line 305
    invoke-virtual {v4, v7, v8, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    check-cast v4, Ljava/lang/String;

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_d
    const/4 v4, 0x0

    .line 313
    :goto_9
    iput-object v4, v1, Lcom/bytedance/bdtracker/l;->k:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 316
    .line 317
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    if-eqz v4, :cond_e

    .line 329
    .line 330
    iget-object v6, v0, Lcom/bytedance/bdtracker/j;->f:Lcom/bytedance/bdtracker/q;

    .line 331
    .line 332
    invoke-virtual {v6, v4, v1}, Lcom/bytedance/bdtracker/q;->a(Ljava/lang/String;Lcom/bytedance/bdtracker/l;)Lcom/bytedance/bdtracker/m;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    goto :goto_a

    .line 337
    :cond_e
    const/4 v1, 0x0

    .line 338
    :goto_a
    if-eqz v1, :cond_f

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/m;->a()Lcom/bytedance/bdtracker/p;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Lcom/bytedance/bdtracker/k;

    .line 345
    .line 346
    if-eqz v1, :cond_f

    .line 347
    .line 348
    iput-object v3, v1, Lcom/bytedance/bdtracker/k;->s:Ljava/lang/String;

    .line 349
    .line 350
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 351
    .line 352
    const-string v4, "deep_link"

    .line 353
    .line 354
    const-wide v6, 0x9a7ec800L

    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v4, v1, v6, v7}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;Lcom/bytedance/bdtracker/p;J)V

    .line 360
    .line 361
    .line 362
    new-instance v3, Lorg/json/JSONObject;

    .line 363
    .line 364
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v4, "direct"

    .line 368
    .line 369
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    .line 371
    .line 372
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    .line 373
    .line 374
    const-string v5, "$deeplink_url"

    .line 375
    .line 376
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    .line 378
    .line 379
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 380
    .line 381
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 382
    .line 383
    new-instance v5, Lcom/bytedance/bdtracker/b4;

    .line 384
    .line 385
    move-object/from16 v6, v17

    .line 386
    .line 387
    invoke-direct {v5, v6, v3}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v5}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/j;->c()V

    .line 394
    .line 395
    .line 396
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 397
    .line 398
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 399
    .line 400
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 404
    .line 405
    if-eqz v3, :cond_f

    .line 406
    .line 407
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p;->b()Ljava/util/Map;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const/4 v4, 0x0

    .line 412
    invoke-interface {v3, v1, v4}, Lcom/bytedance/applog/alink/IALinkListener;->onALinkData(Ljava/util/Map;Ljava/lang/Exception;)V

    .line 413
    .line 414
    .line 415
    :cond_f
    :goto_b
    return v2

    .line 416
    :cond_10
    new-instance v1, Lkotlin/TypeCastException;

    .line 417
    .line 418
    const-string v2, "null cannot be cast to non-null type com.bytedance.applog.alink.model.ALinkQueryParam"

    .line 419
    .line 420
    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v1

    .line 424
    :cond_11
    move-object/from16 v4, v17

    .line 425
    .line 426
    :goto_c
    if-nez v3, :cond_12

    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-nez v3, :cond_3

    .line 435
    .line 436
    iget-boolean v3, v0, Lcom/bytedance/bdtracker/j;->a:Z

    .line 437
    .line 438
    if-eqz v3, :cond_13

    .line 439
    .line 440
    sget-object v3, Lcom/bytedance/bdtracker/r;->a:Lcom/bytedance/bdtracker/r;

    .line 441
    .line 442
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v3, v2}, Lcom/bytedance/bdtracker/r;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    goto :goto_d

    .line 453
    :cond_13
    new-instance v2, Lorg/json/JSONObject;

    .line 454
    .line 455
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .line 457
    .line 458
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/j;->b()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    move-object/from16 v18, v4

    .line 463
    .line 464
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    move-object/from16 v19, v5

    .line 469
    .line 470
    const-string v5, "Start to do defer deeplink with data:{}..."

    .line 471
    .line 472
    move-object/from16 v20, v11

    .line 473
    .line 474
    const/4 v11, 0x3

    .line 475
    invoke-interface {v3, v11, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    sget-object v3, Lcom/bytedance/bdtracker/p;->a:Lcom/bytedance/bdtracker/p$a;

    .line 479
    .line 480
    if-eqz v2, :cond_14

    .line 481
    .line 482
    goto :goto_e

    .line 483
    :cond_14
    new-instance v2, Lorg/json/JSONObject;

    .line 484
    .line 485
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 486
    .line 487
    .line 488
    :goto_e
    const-class v4, Lcom/bytedance/bdtracker/l;

    .line 489
    .line 490
    invoke-virtual {v3, v2, v4}, Lcom/bytedance/bdtracker/p$a;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/bytedance/bdtracker/p;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    check-cast v2, Lcom/bytedance/bdtracker/l;

    .line 495
    .line 496
    if-eqz v2, :cond_1f

    .line 497
    .line 498
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    .line 500
    if-eqz v1, :cond_22

    .line 501
    .line 502
    check-cast v1, Ljava/lang/Boolean;

    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 509
    .line 510
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 511
    .line 512
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/l;->a(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 521
    .line 522
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 523
    .line 524
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/l;->b(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 535
    .line 536
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 537
    .line 538
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/l;->c(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 549
    .line 550
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 551
    .line 552
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getUserUniqueID()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/l;->d(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/l;->c()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    if-eqz v3, :cond_17

    .line 567
    .line 568
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-nez v3, :cond_15

    .line 573
    .line 574
    goto :goto_10

    .line 575
    :cond_15
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 576
    .line 577
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 578
    .line 579
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/l;->c()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    if-eqz v4, :cond_16

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_16
    const-string v4, ""

    .line 587
    .line 588
    :goto_f
    invoke-virtual {v3, v4}, Lcom/bytedance/bdtracker/d;->setExternalAbVersion(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_17
    :goto_10
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/l;->e()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    if-eqz v3, :cond_18

    .line 596
    .line 597
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-nez v3, :cond_19

    .line 602
    .line 603
    :cond_18
    move/from16 p1, v1

    .line 604
    .line 605
    move-object v11, v2

    .line 606
    goto :goto_11

    .line 607
    :cond_19
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 608
    .line 609
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/l;->e()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    const-string v5, "tr_web_ssid"

    .line 614
    .line 615
    move/from16 p1, v1

    .line 616
    .line 617
    move-object v11, v2

    .line 618
    const-wide v1, 0x757b12c00L

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v5, v4, v1, v2}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 624
    .line 625
    .line 626
    :goto_11
    iget-object v1, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 627
    .line 628
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    if-eqz v1, :cond_1c

    .line 640
    .line 641
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->f:Lcom/bytedance/bdtracker/q;

    .line 642
    .line 643
    new-instance v3, Lcom/bytedance/bdtracker/o;

    .line 644
    .line 645
    invoke-direct {v3}, Lcom/bytedance/bdtracker/o;-><init>()V

    .line 646
    .line 647
    .line 648
    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 649
    .line 650
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 651
    .line 652
    if-eqz v4, :cond_1b

    .line 653
    .line 654
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->b()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    iput-object v5, v3, Lcom/bytedance/bdtracker/o;->b:Ljava/lang/String;

    .line 659
    .line 660
    iput-object v13, v3, Lcom/bytedance/bdtracker/o;->f:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->f()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    iput-object v5, v3, Lcom/bytedance/bdtracker/o;->e:Ljava/lang/String;

    .line 667
    .line 668
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->g()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    iput-object v5, v3, Lcom/bytedance/bdtracker/o;->l:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->j()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    iput-object v5, v3, Lcom/bytedance/bdtracker/o;->m:Ljava/lang/String;

    .line 679
    .line 680
    const/4 v5, 0x0

    .line 681
    invoke-virtual {v4, v10, v5, v9}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v6

    .line 685
    check-cast v6, Lorg/json/JSONObject;

    .line 686
    .line 687
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->c()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v9

    .line 691
    iput-object v9, v3, Lcom/bytedance/bdtracker/o;->d:Ljava/lang/String;

    .line 692
    .line 693
    if-eqz v6, :cond_1a

    .line 694
    .line 695
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v16

    .line 699
    move-object/from16 v6, v16

    .line 700
    .line 701
    goto :goto_12

    .line 702
    :cond_1a
    move-object v6, v5

    .line 703
    :goto_12
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->n:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v4, v7, v5, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    check-cast v6, Ljava/lang/String;

    .line 710
    .line 711
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->o:Ljava/lang/String;

    .line 712
    .line 713
    const-string v6, "user_agent"

    .line 714
    .line 715
    invoke-virtual {v4, v6, v5, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    check-cast v6, Ljava/lang/String;

    .line 720
    .line 721
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->q:Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v4, v12, v5, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    check-cast v6, Ljava/lang/String;

    .line 728
    .line 729
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->r:Ljava/lang/String;

    .line 730
    .line 731
    move-object/from16 v6, v20

    .line 732
    .line 733
    invoke-virtual {v4, v6, v5, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    check-cast v6, Ljava/lang/String;

    .line 738
    .line 739
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->s:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->o()Z

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    iput-boolean v6, v3, Lcom/bytedance/bdtracker/o;->h:Z

    .line 746
    .line 747
    move/from16 v6, p1

    .line 748
    .line 749
    iput-boolean v6, v3, Lcom/bytedance/bdtracker/o;->i:Z

    .line 750
    .line 751
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/r1;->n()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    iput-object v6, v3, Lcom/bytedance/bdtracker/o;->j:Ljava/lang/String;

    .line 756
    .line 757
    const-string v6, "channel"

    .line 758
    .line 759
    invoke-virtual {v4, v6, v5, v14}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    check-cast v4, Ljava/lang/String;

    .line 764
    .line 765
    iput-object v4, v3, Lcom/bytedance/bdtracker/o;->k:Ljava/lang/String;

    .line 766
    .line 767
    :cond_1b
    invoke-virtual {v2, v1, v3, v11}, Lcom/bytedance/bdtracker/q;->a(Ljava/lang/String;Lcom/bytedance/bdtracker/o;Lcom/bytedance/bdtracker/l;)Lcom/bytedance/bdtracker/m;

    .line 768
    .line 769
    .line 770
    move-result-object v13

    .line 771
    goto :goto_13

    .line 772
    :cond_1c
    const/4 v13, 0x0

    .line 773
    :goto_13
    if-eqz v13, :cond_1d

    .line 774
    .line 775
    invoke-virtual {v13}, Lcom/bytedance/bdtracker/m;->a()Lcom/bytedance/bdtracker/p;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    check-cast v1, Lcom/bytedance/bdtracker/n;

    .line 780
    .line 781
    goto :goto_14

    .line 782
    :cond_1d
    const/4 v1, 0x0

    .line 783
    :goto_14
    if-nez v1, :cond_20

    .line 784
    .line 785
    sget-object v1, Lcom/bytedance/bdtracker/i;->a:Lcom/bytedance/bdtracker/i;

    .line 786
    .line 787
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 788
    .line 789
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 790
    .line 791
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 795
    .line 796
    if-eqz v2, :cond_1f

    .line 797
    .line 798
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 799
    .line 800
    if-eqz v13, :cond_1e

    .line 801
    .line 802
    iget-object v4, v13, Lcom/bytedance/bdtracker/m;->a:Ljava/lang/String;

    .line 803
    .line 804
    goto :goto_15

    .line 805
    :cond_1e
    const/4 v4, 0x0

    .line 806
    :goto_15
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-interface {v2, v3}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionFailedCallback(Ljava/lang/Exception;)V

    .line 814
    .line 815
    .line 816
    :cond_1f
    :goto_16
    const/4 v1, 0x1

    .line 817
    goto :goto_17

    .line 818
    :cond_20
    iget-boolean v2, v1, Lcom/bytedance/bdtracker/n;->G:Z

    .line 819
    .line 820
    if-eqz v2, :cond_21

    .line 821
    .line 822
    const/4 v2, 0x0

    .line 823
    iput-boolean v2, v1, Lcom/bytedance/bdtracker/n;->G:Z

    .line 824
    .line 825
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 826
    .line 827
    const-string v3, "deferred_deep_link"

    .line 828
    .line 829
    const-wide/16 v4, -0x1

    .line 830
    .line 831
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;Lcom/bytedance/bdtracker/p;J)V

    .line 832
    .line 833
    .line 834
    new-instance v2, Lorg/json/JSONObject;

    .line 835
    .line 836
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 837
    .line 838
    .line 839
    const-string v3, "deferred"

    .line 840
    .line 841
    move-object/from16 v4, v19

    .line 842
    .line 843
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    .line 845
    .line 846
    iget-object v3, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 847
    .line 848
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 849
    .line 850
    new-instance v4, Lcom/bytedance/bdtracker/b4;

    .line 851
    .line 852
    move-object/from16 v5, v18

    .line 853
    .line 854
    invoke-direct {v4, v5, v2}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v3, v4}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    .line 858
    .line 859
    .line 860
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 861
    .line 862
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 863
    .line 864
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 868
    .line 869
    if-eqz v2, :cond_1f

    .line 870
    .line 871
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p;->b()Ljava/util/Map;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    const/4 v3, 0x0

    .line 876
    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionData(Ljava/util/Map;Ljava/lang/Exception;)V

    .line 877
    .line 878
    .line 879
    goto :goto_16

    .line 880
    :cond_21
    iget-object v1, v0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 881
    .line 882
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 883
    .line 884
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 888
    .line 889
    if-eqz v1, :cond_1f

    .line 890
    .line 891
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 892
    .line 893
    const-string v3, "DDL has data but not firstLaunch"

    .line 894
    .line 895
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-interface {v1, v2}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionFailedCallback(Ljava/lang/Exception;)V

    .line 899
    .line 900
    .line 901
    goto :goto_16

    .line 902
    :cond_22
    new-instance v1, Lkotlin/TypeCastException;

    .line 903
    .line 904
    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    .line 905
    .line 906
    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    throw v1

    .line 910
    :goto_17
    return v1
.end method

.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "vids"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "extVids"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "did"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "iid"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "ssid"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "abConfig"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "newDid"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "oldIid"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "newIid"

    .line 12
    .line 13
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "oldSsid"

    .line 17
    .line 18
    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "newSsid"

    .line 22
    .line 23
    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/j;->c()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 30
    .line 31
    const-string p2, "app_cache"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p3, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p1, p3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 50
    :goto_1
    xor-int/lit8 p4, p1, 0x1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p5, p0, Lcom/bytedance/bdtracker/j;->d:Lcom/bytedance/bdtracker/h;

    .line 55
    .line 56
    const-wide/16 p6, -0x1

    .line 57
    .line 58
    invoke-virtual {p5, p2, p2, p6, p7}, Lcom/bytedance/bdtracker/h;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    :cond_2
    if-nez p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->h()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/j;->a()Landroid/os/Handler;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/bytedance/bdtracker/j;->c:Lcom/bytedance/bdtracker/e0;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lcom/bytedance/bdtracker/d;->removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
