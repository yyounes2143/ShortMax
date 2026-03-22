.class final Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InitializeStateConfigWithLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;->doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/unity3d/services/core/configuration/Configuration;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader$doWork$2"
    f = "InitializeStateConfigWithLoader.kt"
    l = {
        0x3a,
        0x65,
        0x6d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInitializeStateConfigWithLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateConfigWithLoader.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n24#2:151\n14#2,2:152\n16#2,10:162\n26#2:173\n16#3,4:154\n16#3,4:158\n1#4:172\n*S KotlinDebug\n*F\n+ 1 InitializeStateConfigWithLoader.kt\ncom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2\n*L\n34#1:151\n34#1:152,2\n34#1:162,10\n34#1:173\n44#1:154,4\n53#1:158,4\n34#1:172\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $params:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;",
            "Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;-><init>(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/unity3d/services/core/configuration/Configuration;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const-class v0, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    iget v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->label:I

    .line 12
    .line 13
    const/4 v11, 0x3

    .line 14
    const/4 v12, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    if-eq v2, v12, :cond_1

    .line 21
    .line 22
    if-ne v2, v11, :cond_0

    .line 23
    .line 24
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    iget-object v1, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_b

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$4:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$3:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    .line 61
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$2:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v3, v0

    .line 64
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v4, v0

    .line 69
    check-cast v4, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

    .line 70
    .line 71
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    move-object v5, v0

    .line 74
    check-cast v5, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    .line 75
    .line 76
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object/from16 v0, p1

    .line 80
    .line 81
    check-cast v0, Lkotlin/Result;

    .line 82
    .line 83
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :catchall_1
    move-exception v0

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_2
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$4:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v1, v0

    .line 95
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$3:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v2, v0

    .line 100
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 101
    .line 102
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$2:Ljava/lang/Object;

    .line 103
    .line 104
    move-object v3, v0

    .line 105
    check-cast v3, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

    .line 106
    .line 107
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    move-object v4, v0

    .line 110
    check-cast v4, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    .line 111
    .line 112
    iget-object v0, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lgt/g0;

    .line 115
    .line 116
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :catchall_2
    move-exception v0

    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Lgt/g0;

    .line 130
    .line 131
    iget-object v14, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;

    .line 132
    .line 133
    iget-object v15, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;

    .line 134
    .line 135
    :try_start_3
    sget-object v4, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 136
    .line 137
    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    new-instance v5, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;

    .line 142
    .line 143
    invoke-static {v14}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;->access$getSdkMetricsSender$p(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;)Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-direct {v5, v6}, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;-><init>(Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)V

    .line 148
    .line 149
    .line 150
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 151
    .line 152
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v6, Lcom/unity3d/services/core/configuration/ConfigurationLoader;

    .line 156
    .line 157
    new-instance v7, Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;

    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    sget-object v12, Lcom/unity3d/services/core/configuration/InitRequestType;->TOKEN:Lcom/unity3d/services/core/configuration/InitRequestType;

    .line 164
    .line 165
    invoke-virtual {v5, v12}, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;->getDeviceInfoData(Lcom/unity3d/services/core/configuration/InitRequestType;)Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    invoke-direct {v7, v11, v12}, Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v14}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;->access$getSdkMetricsSender$p(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;)Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-interface {v14}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    invoke-interface {v12}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-interface {v12, v1, v3}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 193
    .line 194
    invoke-direct {v6, v7, v11, v3}, Lcom/unity3d/services/core/configuration/ConfigurationLoader;-><init>(Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;Lcom/unity3d/services/core/network/core/HttpClient;)V

    .line 195
    .line 196
    .line 197
    iput-object v6, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    .line 199
    new-instance v3, Lcom/unity3d/services/core/configuration/PrivacyConfigurationLoader;

    .line 200
    .line 201
    check-cast v6, Lcom/unity3d/services/core/configuration/IConfigurationLoader;

    .line 202
    .line 203
    new-instance v7, Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;

    .line 204
    .line 205
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    sget-object v12, Lcom/unity3d/services/core/configuration/InitRequestType;->PRIVACY:Lcom/unity3d/services/core/configuration/InitRequestType;

    .line 210
    .line 211
    invoke-virtual {v5, v12}, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;->getDeviceInfoData(Lcom/unity3d/services/core/configuration/InitRequestType;)Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-direct {v7, v11, v5}, Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;-><init>(Lcom/unity3d/services/core/configuration/Configuration;Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v14}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-interface {v5}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v5, v1, v0}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 235
    .line 236
    invoke-direct {v3, v6, v7, v4, v0}, Lcom/unity3d/services/core/configuration/PrivacyConfigurationLoader;-><init>(Lcom/unity3d/services/core/configuration/IConfigurationLoader;Lcom/unity3d/services/core/configuration/ConfigurationRequestFactory;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;Lcom/unity3d/services/core/network/core/HttpClient;)V

    .line 237
    .line 238
    .line 239
    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    .line 241
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 242
    .line 243
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v0, Lcom/unity3d/services/core/configuration/Configuration;

    .line 247
    .line 248
    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/Configuration;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    .line 253
    :try_start_4
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getMaxRetries()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getRetryScalingFactor()D

    .line 266
    .line 267
    .line 268
    move-result-wide v4

    .line 269
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Configuration;->getRetryDelay()J

    .line 274
    .line 275
    .line 276
    move-result-wide v0

    .line 277
    new-instance v6, Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 278
    .line 279
    sget-object v7, Lcom/unity3d/services/core/configuration/ErrorState;->NetworkConfigRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 280
    .line 281
    new-instance v12, Ljava/lang/Exception;

    .line 282
    .line 283
    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 287
    .line 288
    .line 289
    move-result-object v13

    .line 290
    invoke-direct {v6, v7, v12, v13}, Lcom/unity3d/services/core/domain/task/InitializationException;-><init>(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 291
    .line 292
    .line 293
    new-instance v7, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1;

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    invoke-direct {v7, v14, v8, v11, v12}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2$1$configResult$1$1;-><init>(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 297
    .line 298
    .line 299
    iput-object v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 300
    .line 301
    iput-object v14, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 302
    .line 303
    iput-object v15, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$2:Ljava/lang/Object;

    .line 304
    .line 305
    iput-object v8, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$3:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v11, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$4:Ljava/lang/Object;

    .line 308
    .line 309
    const/4 v2, 0x1

    .line 310
    iput v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->label:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 311
    .line 312
    move-wide v1, v0

    .line 313
    move-object v12, v8

    .line 314
    move-object/from16 v8, p0

    .line 315
    .line 316
    :try_start_5
    invoke-static/range {v1 .. v8}, Lcom/unity3d/services/core/extensions/TaskExtensionsKt;->withRetry(JIDLjava/lang/Exception;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 320
    if-ne v0, v10, :cond_4

    .line 321
    .line 322
    return-object v10

    .line 323
    :cond_4
    move-object v1, v11

    .line 324
    move-object v2, v12

    .line 325
    move-object v4, v14

    .line 326
    move-object v3, v15

    .line 327
    :goto_0
    :try_start_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 328
    .line 329
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 333
    :goto_1
    move-object v5, v4

    .line 334
    move-object v4, v3

    .line 335
    move-object v3, v2

    .line 336
    goto :goto_4

    .line 337
    :catchall_3
    move-exception v0

    .line 338
    :goto_2
    move-object v1, v11

    .line 339
    move-object v2, v12

    .line 340
    move-object v4, v14

    .line 341
    move-object v3, v15

    .line 342
    goto :goto_3

    .line 343
    :catchall_4
    move-exception v0

    .line 344
    move-object v12, v8

    .line 345
    goto :goto_2

    .line 346
    :goto_3
    :try_start_7
    sget-object v5, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 347
    .line 348
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    goto :goto_1

    .line 357
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_9

    .line 362
    .line 363
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    instance-of v2, v0, Lcom/unity3d/services/core/extensions/AbortRetryException;
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 368
    .line 369
    if-nez v2, :cond_8

    .line 370
    .line 371
    :try_start_8
    invoke-static {v5}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;->access$getInitializeStateNetworkError$p(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;)Lcom/unity3d/services/core/domain/task/InitializeStateNetworkError;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    new-instance v2, Lcom/unity3d/services/core/domain/task/InitializeStateNetworkError$Params;

    .line 376
    .line 377
    invoke-virtual {v4}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-direct {v2, v6}, Lcom/unity3d/services/core/domain/task/InitializeStateNetworkError$Params;-><init>(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 382
    .line 383
    .line 384
    iput-object v5, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v4, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v3, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$2:Ljava/lang/Object;

    .line 389
    .line 390
    iput-object v1, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$3:Ljava/lang/Object;

    .line 391
    .line 392
    iput-object v1, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$4:Ljava/lang/Object;

    .line 393
    .line 394
    const/4 v6, 0x2

    .line 395
    iput v6, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->label:I

    .line 396
    .line 397
    invoke-virtual {v0, v2, v9}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 401
    if-ne v0, v10, :cond_5

    .line 402
    .line 403
    return-object v10

    .line 404
    :cond_5
    move-object v2, v1

    .line 405
    :goto_5
    :try_start_9
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 413
    :goto_6
    move-object v8, v2

    .line 414
    move-object v6, v4

    .line 415
    goto :goto_8

    .line 416
    :catchall_5
    move-exception v0

    .line 417
    move-object v2, v1

    .line 418
    :goto_7
    :try_start_a
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 419
    .line 420
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    goto :goto_6

    .line 429
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_7

    .line 434
    .line 435
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-interface {v0}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->onRetryConfig()V

    .line 440
    .line 441
    .line 442
    invoke-static {v5}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;->access$getDispatchers$p(Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;)Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lgt/c0;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    new-instance v11, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2$1$1;

    .line 451
    .line 452
    const/4 v7, 0x0

    .line 453
    move-object v2, v11

    .line 454
    move-object v4, v8

    .line 455
    invoke-direct/range {v2 .. v7}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;Lrs/c;)V

    .line 456
    .line 457
    .line 458
    iput-object v8, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$0:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v1, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$1:Ljava/lang/Object;

    .line 461
    .line 462
    const/4 v2, 0x0

    .line 463
    iput-object v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$2:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$3:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->L$4:Ljava/lang/Object;

    .line 468
    .line 469
    const/4 v2, 0x3

    .line 470
    iput v2, v9, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$doWork$2;->label:I

    .line 471
    .line 472
    invoke-static {v0, v11, v9}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-ne v0, v10, :cond_6

    .line 477
    .line 478
    return-object v10

    .line 479
    :cond_6
    move-object v0, v1

    .line 480
    move-object v1, v8

    .line 481
    :goto_9
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v2, Lcom/unity3d/services/core/configuration/Configuration;

    .line 484
    .line 485
    move-object/from16 v16, v1

    .line 486
    .line 487
    move-object v1, v0

    .line 488
    move-object/from16 v0, v16

    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_7
    new-instance v0, Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 492
    .line 493
    sget-object v1, Lcom/unity3d/services/core/configuration/ErrorState;->NetworkConfigRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 494
    .line 495
    new-instance v2, Ljava/lang/Exception;

    .line 496
    .line 497
    const-string v3, "No connected events within the timeout!"

    .line 498
    .line 499
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/services/core/domain/task/InitializationException;-><init>(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :cond_8
    new-instance v1, Lcom/unity3d/services/core/domain/task/InitializationException;

    .line 511
    .line 512
    sget-object v2, Lcom/unity3d/services/core/configuration/ErrorState;->NetworkConfigRequest:Lcom/unity3d/services/core/configuration/ErrorState;

    .line 513
    .line 514
    check-cast v0, Ljava/lang/Exception;

    .line 515
    .line 516
    invoke-virtual {v4}, Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-direct {v1, v2, v0, v3}, Lcom/unity3d/services/core/domain/task/InitializationException;-><init>(Lcom/unity3d/services/core/configuration/ErrorState;Ljava/lang/Exception;Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 521
    .line 522
    .line 523
    throw v1

    .line 524
    :cond_9
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 525
    .line 526
    move-object v2, v0

    .line 527
    check-cast v2, Lcom/unity3d/services/core/configuration/Configuration;

    .line 528
    .line 529
    move-object v0, v1

    .line 530
    :goto_a
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 531
    .line 532
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v0, Lcom/unity3d/services/core/configuration/Configuration;

    .line 535
    .line 536
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 540
    goto :goto_c

    .line 541
    :goto_b
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 542
    .line 543
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    :goto_c
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-eqz v1, :cond_a

    .line 556
    .line 557
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    goto :goto_d

    .line 562
    :cond_a
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    if-eqz v1, :cond_b

    .line 567
    .line 568
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    :cond_b
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    return-object v0

    .line 581
    :goto_e
    throw v0
.end method
