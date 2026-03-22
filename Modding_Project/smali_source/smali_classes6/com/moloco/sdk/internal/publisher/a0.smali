.class public final Lcom/moloco/sdk/internal/publisher/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/publisher/s0;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/a0$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/moloco/sdk/internal/publisher/a0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I


# instance fields
.field public final a:Lcom/moloco/sdk/publisher/AdLoad$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/acm/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/a0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/a0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/a0;->f:Lcom/moloco/sdk/internal/publisher/a0$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/a0;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/publisher/AdLoad$Listener;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/AdLoad$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sdkEventUrlTracker"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "acmLoadTimerEvent"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adFormatType"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "metricsRecorder"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/a0;->a:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/a0;->b:Lcom/moloco/sdk/internal/h0;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/a0;->c:Lcom/moloco/sdk/acm/e;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/a0;->d:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/a0;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/publisher/MolocoAd;JLcom/moloco/sdk/internal/ortb/model/r;)V
    .locals 10
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v1, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "onAdLoadStarted: "

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", "

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/16 v7, 0xc

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const-string v3, "AdLoadListenerTrackerImpl"

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-eqz p4, :cond_0

    .line 44
    .line 45
    invoke-virtual {p4}, Lcom/moloco/sdk/internal/ortb/model/r;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/a0;->b:Lcom/moloco/sdk/internal/h0;

    .line 52
    .line 53
    const/4 v8, 0x4

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    move-wide v5, p2

    .line 57
    move-object v9, v1

    .line 58
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public b(Lcom/moloco/sdk/publisher/MolocoAd;Lcom/moloco/sdk/internal/ortb/model/r;)V
    .locals 17
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/r;
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
    const-string v2, "molocoAd"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "onAdLoadSuccess: "

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/16 v8, 0xc

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const-string v4, "AdLoadListenerTrackerImpl"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/internal/ortb/model/r;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    if-eqz v11, :cond_0

    .line 46
    .line 47
    iget-object v10, v0, Lcom/moloco/sdk/internal/publisher/a0;->b:Lcom/moloco/sdk/internal/h0;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    const/4 v15, 0x4

    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/a0;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/moloco/sdk/internal/publisher/a0;->c:Lcom/moloco/sdk/acm/e;

    .line 63
    .line 64
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string/jumbo v5, "success"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/a0;->d:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string/jumbo v8, "toLowerCase(...)"

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v5, v6}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/a0;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 109
    .line 110
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 111
    .line 112
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/a;->k:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 113
    .line 114
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v3, v5}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/a0;->d:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/a0;->a:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 146
    .line 147
    if-eqz v2, :cond_1

    .line 148
    .line 149
    invoke-interface {v2, v1}, Lcom/moloco/sdk/publisher/AdLoad$Listener;->onAdLoadSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 150
    .line 151
    .line 152
    :cond_1
    return-void
.end method

.method public c(Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/internal/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "internalError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onAdLoadFailed: "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v6, 0xc

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v2, "AdLoadListenerTrackerImpl"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/r;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/a0;->b:Lcom/moloco/sdk/internal/h0;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-interface {v0, p2, v1, v2, p1}, Lcom/moloco/sdk/internal/h0;->a(Ljava/lang/String;JLcom/moloco/sdk/internal/c0;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p2, p0, Lcom/moloco/sdk/internal/publisher/a0;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/a0;->c:Lcom/moloco/sdk/acm/e;

    .line 55
    .line 56
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "failure"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/a0;->d:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string/jumbo v6, "toLowerCase(...)"

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/moloco/sdk/internal/publisher/a0;->e:Lcom/moloco/sdk/acm/recorder/a;

    .line 118
    .line 119
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 120
    .line 121
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/a;->l:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-direct {v0, v3}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->a()Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/moloco/sdk/publisher/MolocoAdError;->getNetworkName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const-string v4, "network"

    .line 139
    .line 140
    invoke-virtual {v0, v4, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v0, v1, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/a0;->d:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p2, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lcom/moloco/sdk/internal/publisher/a0;->a:Lcom/moloco/sdk/publisher/AdLoad$Listener;

    .line 185
    .line 186
    if-eqz p2, :cond_1

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->a()Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p2, p1}, Lcom/moloco/sdk/publisher/AdLoad$Listener;->onAdLoadFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 193
    .line 194
    .line 195
    :cond_1
    return-void
.end method
