.class public final Lcom/moloco/sdk/internal/ilrd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ilrd/g$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/moloco/sdk/internal/ilrd/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/moloco/sdk/internal/ilrd/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ilrd/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/g;->c:Lcom/moloco/sdk/internal/ilrd/g$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/ilrd/g;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/g;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->hasIlrdConfig()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getIlrdConfig()Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public final b(Lgt/g0;Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;
    .locals 24

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v22, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 4
    .line 5
    move-object/from16 v0, v22

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getRawImpUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    move-object v2, v3

    .line 12
    const-string v4, "getRawImpUrl(...)"

    .line 13
    .line 14
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getSessionExp()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    sget-object v9, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 30
    .line 31
    invoke-static {v4, v9}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getMaxBatchSize()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getUploadInterval()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v7, v9}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getMaxSessionLen()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-static {v10, v9}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    sget-object v13, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 56
    .line 57
    invoke-virtual {v13}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    sget-object v12, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 62
    .line 63
    invoke-virtual {v12}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    invoke-interface {v12}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    invoke-virtual {v13}, Lcom/moloco/sdk/service_locator/b$h;->d()Lcom/moloco/sdk/internal/services/p;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/moloco/sdk/Init$SDKInitResponse;->getPublisherId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    move-object v14, v15

    .line 80
    move-object/from16 p1, v0

    .line 81
    .line 82
    const-string v0, "getPublisherId(...)"

    .line 83
    .line 84
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p3 .. p3}, Lcom/moloco/sdk/Init$SDKInitResponse;->getAppId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v15, v0

    .line 92
    move-object/from16 v23, v1

    .line 93
    .line 94
    const-string v1, "getAppId(...)"

    .line 95
    .line 96
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/moloco/sdk/service_locator/b$j;->a:Lcom/moloco/sdk/service_locator/b$j;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$j;->b()Lcom/moloco/sdk/internal/services/h0;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    const v20, 0xe000

    .line 106
    .line 107
    .line 108
    const/16 v21, 0x0

    .line 109
    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    const/16 v18, 0x0

    .line 113
    .line 114
    const/16 v19, 0x0

    .line 115
    .line 116
    move-object/from16 v0, p1

    .line 117
    .line 118
    move-object/from16 v1, v23

    .line 119
    .line 120
    invoke-direct/range {v0 .. v21}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;-><init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    .line 122
    .line 123
    return-object v22
.end method

.method public final c()Lcom/moloco/sdk/internal/ilrd/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/g;->b:Lcom/moloco/sdk/internal/ilrd/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Lgt/g0;Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Ljava/util/List;)Lcom/moloco/sdk/internal/ilrd/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;",
            ">;)",
            "Lcom/moloco/sdk/internal/ilrd/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/g;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p2, p3}, Lcom/moloco/sdk/internal/ilrd/e;-><init>(Lgt/g0;Landroid/content/Context;Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/moloco/sdk/internal/ilrd/g;->b:Lcom/moloco/sdk/internal/ilrd/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/e;->h()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final e(Lcom/moloco/sdk/Init$SDKInitResponse;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/moloco/sdk/Init$SDKInitResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/g;->b:Lcom/moloco/sdk/internal/ilrd/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/g;->a(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Exception;

    .line 28
    .line 29
    const-string v0, "No ILRD configuration found"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getSupportedNetworksList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;->getEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 54
    .line 55
    new-instance p1, Ljava/lang/Exception;

    .line 56
    .line 57
    const-string v0, "Publisher has not opted into ILRD collection"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 78
    .line 79
    new-instance p1, Ljava/lang/Exception;

    .line 80
    .line 81
    const-string v0, "No ILRD supported networks available"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_3
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v2}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const/4 v3, 0x1

    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static {v4, v3, v4}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {p0, v2, v0, p1}, Lcom/moloco/sdk/internal/ilrd/g;->b(Lgt/g0;Lcom/moloco/sdk/Init$SDKInitResponse$ILRDConfig;Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2, p1, v1}, Lcom/moloco/sdk/internal/ilrd/g;->d(Lgt/g0;Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Ljava/util/List;)Lcom/moloco/sdk/internal/ilrd/e;

    .line 125
    .line 126
    .line 127
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method
