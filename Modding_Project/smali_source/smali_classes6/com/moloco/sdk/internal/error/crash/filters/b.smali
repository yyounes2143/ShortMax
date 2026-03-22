.class public final Lcom/moloco/sdk/internal/error/crash/filters/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/error/crash/filters/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMolocoSDKExceptionFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoSDKExceptionFilter.kt\ncom/moloco/sdk/internal/error/crash/filters/MolocoSDKExceptionFilter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,36:1\n13409#2,2:37\n13409#2,2:39\n*S KotlinDebug\n*F\n+ 1 MolocoSDKExceptionFilter.kt\ncom/moloco/sdk/internal/error/crash/filters/MolocoSDKExceptionFilter\n*L\n14#1:37,2\n24#1:39,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MolocoSDKExceptionFilter"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/error/crash/filters/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 19
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "crash"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "getStackTrace(...)"

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    array-length v4, v1

    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x2

    .line 24
    const-string v9, "com.moloco.sdk"

    .line 25
    .line 26
    const-string v10, "getClassName(...)"

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    if-ge v6, v4, :cond_1

    .line 30
    .line 31
    aget-object v12, v1, v6

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v12, v9, v5, v8, v7}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    sget-object v12, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 47
    .line 48
    iget-object v13, v0, Lcom/moloco/sdk/internal/error/crash/filters/b;->a:Ljava/lang/String;

    .line 49
    .line 50
    const/16 v17, 0xc

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    const-string v14, "SDK detected in stacktrace"

    .line 55
    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return v11

    .line 63
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    return v5

    .line 73
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    array-length v2, v1

    .line 81
    move v3, v5

    .line 82
    :goto_1
    if-ge v3, v2, :cond_4

    .line 83
    .line 84
    aget-object v4, v1, v3

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v9, v5, v8, v7}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    sget-object v12, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 100
    .line 101
    iget-object v13, v0, Lcom/moloco/sdk/internal/error/crash/filters/b;->a:Ljava/lang/String;

    .line 102
    .line 103
    const/16 v17, 0xc

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    const-string v14, "SDK detected in stacktrace"

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    invoke-static/range {v12 .. v18}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v11

    .line 116
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    return v5
.end method
