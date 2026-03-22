.class public final Lcom/moloco/sdk/internal/services/bidtoken/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/bidtoken/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/d;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/internal/services/bidtoken/z;
    .locals 16

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    const/16 v5, 0xc

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const-string v1, "ServerBidTokenService"

    .line 7
    .line 8
    const-string v2, "Creating BidTokenService instance"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 16
    .line 17
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/c;

    .line 18
    .line 19
    sget-object v2, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Lcom/moloco/sdk/internal/http/e;->a(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)Lio/ktor/client/HttpClient;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v9, Lcom/moloco/sdk/internal/services/bidtoken/l;

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    const-wide/16 v7, 0xc8

    .line 45
    .line 46
    const-wide/16 v4, 0xaf0

    .line 47
    .line 48
    move-object v3, v9

    .line 49
    invoke-direct/range {v3 .. v8}, Lcom/moloco/sdk/internal/services/bidtoken/l;-><init>(JIJ)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/moloco/sdk/internal/services/bidtoken/j;

    .line 53
    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    const-string v4, "getLanguage(...)"

    .line 63
    .line 64
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 68
    .line 69
    const-string v4, "RELEASE"

    .line 70
    .line 71
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 75
    .line 76
    const-string v5, ""

    .line 77
    .line 78
    if-nez v4, :cond_0

    .line 79
    .line 80
    move-object v13, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move-object v13, v4

    .line 83
    :goto_0
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v4, :cond_1

    .line 86
    .line 87
    move-object v14, v5

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move-object v14, v4

    .line 90
    :goto_1
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    move-object v15, v5

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move-object v15, v4

    .line 97
    :goto_2
    move-object v10, v3

    .line 98
    invoke-direct/range {v10 .. v15}, Lcom/moloco/sdk/internal/services/bidtoken/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v4, "4.0.0"

    .line 102
    .line 103
    invoke-direct {v1, v4, v2, v9, v3}, Lcom/moloco/sdk/internal/services/bidtoken/c;-><init>(Ljava/lang/String;Lio/ktor/client/HttpClient;Lcom/moloco/sdk/internal/services/bidtoken/l;Lcom/moloco/sdk/internal/services/bidtoken/j;)V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static {v3, v2, v3}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v3}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v3, Lcom/moloco/sdk/internal/services/bidtoken/y;->a:Lcom/moloco/sdk/internal/services/bidtoken/y$a;

    .line 129
    .line 130
    new-instance v4, Lcom/moloco/sdk/internal/bidtoken/c;

    .line 131
    .line 132
    invoke-direct {v4}, Lcom/moloco/sdk/internal/bidtoken/c;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v5, Lcom/moloco/sdk/internal/services/k;

    .line 136
    .line 137
    invoke-direct {v5}, Lcom/moloco/sdk/internal/services/k;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/internal/services/bidtoken/y$a;->a(Lcom/moloco/sdk/internal/bidtoken/b;Lcom/moloco/sdk/internal/services/j;)Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/services/bidtoken/z;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/e;Lgt/g0;Lcom/moloco/sdk/internal/services/bidtoken/y;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method public static final synthetic b()Lcom/moloco/sdk/internal/services/bidtoken/z;
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/services/bidtoken/d;->c()Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/internal/services/bidtoken/z;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/d;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 8
    .line 9
    return-object v0
.end method
