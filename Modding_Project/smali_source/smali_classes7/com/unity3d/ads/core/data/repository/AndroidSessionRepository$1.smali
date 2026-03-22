.class final Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidSessionRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$1"
    f = "AndroidSessionRepository.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;",
            "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

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
    .locals 2
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
    new-instance p1, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;-><init>(Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;->access$getNativeConfigDataSource$p(Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput v2, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->label:I

    .line 36
    .line 37
    invoke-interface {p1, p0}, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;->get(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->getData()Lcom/google/protobuf/ByteString;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;->access$get_sdkConfiguration$p(Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;)Lkt/e;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v1, "parseFrom(data)"

    .line 67
    .line 68
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p1}, Lkt/e;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->$sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    const-string p1, "unknown"

    .line 84
    .line 85
    :cond_3
    const-string v0, "debugReason"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v10, 0x3a

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    const-string v4, "native_initialize_missed_native_parsing"

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-static/range {v3 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository$1;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;->access$isInit$p(Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;)Lkt/e;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1
.end method
