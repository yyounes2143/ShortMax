.class final Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InitializeStateComplete.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/domain/task/InitializeStateComplete;->doWork-gIAlu-s(Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.core.domain.task.InitializeStateComplete$doWork$2"
    f = "InitializeStateComplete.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInitializeStateComplete.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,32:1\n24#2:33\n14#2,12:34\n26#2:47\n1#3:46\n*S KotlinDebug\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n*L\n22#1:33\n22#1:34,12\n22#1:47\n22#1:46\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $params:Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;Lcom/unity3d/services/core/domain/task/InitializeStateComplete;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;",
            "Lcom/unity3d/services/core/domain/task/InitializeStateComplete;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

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
    new-instance p1, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;-><init>(Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;Lcom/unity3d/services/core/domain/task/InitializeStateComplete;Lrs/c;)V

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
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->label:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->$params:Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->this$0:Lcom/unity3d/services/core/domain/task/InitializeStateComplete;

    .line 35
    .line 36
    :try_start_1
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "params.config.moduleConfigurationList"

    .line 47
    .line 48
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    array-length v4, v3

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_0
    if-ge v5, v4, :cond_3

    .line 54
    .line 55
    aget-object v6, v3, v5

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7, v6}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/Class;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$Params;->getConfig()Lcom/unity3d/services/core/configuration/Configuration;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-interface {v6, v7}, Lcom/unity3d/services/core/configuration/IModuleConfiguration;->initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/2addr v5, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {v2}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete;->access$getDataStore$p(Lcom/unity3d/services/core/domain/task/InitializeStateComplete;)Landroidx/datastore/core/DataStore;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v2, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2$1$1;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-direct {v2, v3}, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2$1$1;-><init>(Lrs/c;)V

    .line 88
    .line 89
    .line 90
    iput v0, p0, Lcom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2;->label:I

    .line 91
    .line 92
    invoke-interface {p1, v2, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v1, :cond_4

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_6
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :goto_5
    throw p1
.end method
