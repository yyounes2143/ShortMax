.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroidx/work/WorkManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
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
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;->b(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v3

    .line 15
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 16
    .line 17
    const/16 v5, 0x8

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v1, "MolocoWorkManager"

    .line 21
    .line 22
    const-string v2, "WorkManager not initialized already, performing initialization"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;->c(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;->a:Landroidx/work/WorkManager;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    .locals 1
    .param p1    # Landroidx/work/WorkRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "workRequest"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;->a:Landroidx/work/WorkManager;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "enqueue(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/work/WorkManager;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getInstance(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final c(Landroid/content/Context;)Landroidx/work/WorkManager;
    .locals 16

    .line 1
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "build(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 16
    .line 17
    const-string v3, "MolocoWorkManager"

    .line 18
    .line 19
    const-string v4, "Trying to initialize work manager as one is not already available"

    .line 20
    .line 21
    const/16 v7, 0xc

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    :try_start_1
    invoke-static {v1, v0}, Landroidx/work/WorkManager;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :goto_0
    move-object v5, v0

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 43
    .line 44
    const/16 v7, 0x8

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const-string v3, "MolocoWorkManager"

    .line 48
    .line 49
    const-string v4, "WorkManager initialized already at this point, retrieving instance"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    sget-object v9, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 56
    .line 57
    const/16 v14, 0xc

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    const-string v10, "MolocoWorkManager"

    .line 61
    .line 62
    const-string v11, "Trying to retrieve work manager instance"

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    invoke-static/range {v9 .. v15}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;->b(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    return-object v0

    .line 74
    :catch_2
    move-exception v0

    .line 75
    move-object v1, v0

    .line 76
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 77
    .line 78
    const/16 v7, 0xc

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const-string v3, "MolocoWorkManager"

    .line 82
    .line 83
    const-string v4, "WorkManager instance couldn\'t be re-initialized, cannot provide WorkManager"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v2, "Cannot provide MolocoWorkManager. Failed to re-initialize WorkManager"

    .line 93
    .line 94
    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method
