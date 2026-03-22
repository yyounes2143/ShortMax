.class public final Lcom/moloco/sdk/internal/publisher/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/publisher/t0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/z$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/moloco/sdk/internal/publisher/z$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:I


# instance fields
.field public final a:Lcom/moloco/sdk/publisher/AdShowListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/internal/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/internal/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/z$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/z;->j:Lcom/moloco/sdk/internal/publisher/z$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/z;->k:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/AdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/AdShowListener;",
            "Lcom/moloco/sdk/internal/services/r;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            ">;",
            "Lcom/moloco/sdk/internal/h0;",
            "Lcom/moloco/sdk/internal/i;",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "appLifecycleTrackerService"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "provideSdkEvents"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "provideBUrlData"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sdkEventUrlTracker"

    .line 22
    .line 23
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "bUrlTracker"

    .line 27
    .line 28
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "adType"

    .line 32
    .line 33
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "metricsRecorder"

    .line 37
    .line 38
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/z;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/z;->b:Lcom/moloco/sdk/internal/services/r;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/z;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/z;->d:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/z;->e:Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    iput-object p6, p0, Lcom/moloco/sdk/internal/publisher/z;->f:Lcom/moloco/sdk/internal/h0;

    .line 55
    .line 56
    iput-object p7, p0, Lcom/moloco/sdk/internal/publisher/z;->g:Lcom/moloco/sdk/internal/i;

    .line 57
    .line 58
    iput-object p8, p0, Lcom/moloco/sdk/internal/publisher/z;->h:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 59
    .line 60
    iput-object p9, p0, Lcom/moloco/sdk/internal/publisher/z;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 61
    .line 62
    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/publisher/z;)Lcom/moloco/sdk/internal/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/z;->g:Lcom/moloco/sdk/internal/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/z;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/z;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/internal/c0;)V
    .locals 7
    .param p1    # Lcom/moloco/sdk/internal/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v2, "onAdShowFailed: "

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
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "InternalAdShowListenerImpl"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->d:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/z;->f:Lcom/moloco/sdk/internal/h0;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/moloco/sdk/internal/h0;->a(Ljava/lang/String;JLcom/moloco/sdk/internal/c0;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 59
    .line 60
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 61
    .line 62
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->B:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/z;->h:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string/jumbo v4, "toLowerCase(...)"

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->a()Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/moloco/sdk/publisher/MolocoAdError;->getErrorType()Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 125
    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/c0;->a()Lcom/moloco/sdk/publisher/MolocoAdError;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowFailed(Lcom/moloco/sdk/publisher/MolocoAdError;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void
.end method

.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

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
    const-string v2, "onAdClicked: "

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
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "InternalAdShowListenerImpl"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->b:Lcom/moloco/sdk/internal/services/r;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/r;->b()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->d:Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/z;->f:Lcom/moloco/sdk/internal/h0;

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    const/4 v6, 0x4

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 67
    .line 68
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 69
    .line 70
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->C:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/z;->h:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string/jumbo v4, "toLowerCase(...)"

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 111
    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 8
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

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
    const-string v2, "onAdHidden: "

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
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "InternalAdShowListenerImpl"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->d:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/z;->f:Lcom/moloco/sdk/internal/h0;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const/4 v6, 0x4

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 12
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

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
    const-string v2, "onAdShowSuccess: "

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
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "InternalAdShowListenerImpl"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->d:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/moloco/sdk/internal/ortb/model/r;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/r;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/z;->f:Lcom/moloco/sdk/internal/h0;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const/4 v6, 0x4

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->e:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v5, v0

    .line 68
    check-cast v5, Lcom/moloco/sdk/internal/publisher/e0;

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    sget-object v0, Lcom/moloco/sdk/internal/scheduling/e;->a:Lcom/moloco/sdk/internal/scheduling/e;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/scheduling/e;->a()Lgt/g0;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v9, Lcom/moloco/sdk/internal/publisher/z$b;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    move-object v1, v9

    .line 86
    move-object v2, p0

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/internal/publisher/z$b;-><init>(Lcom/moloco/sdk/internal/publisher/z;JLcom/moloco/sdk/internal/publisher/e0;Lrs/c;)V

    .line 88
    .line 89
    .line 90
    const/4 v10, 0x3

    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    move-object v6, v0

    .line 95
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 99
    .line 100
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 101
    .line 102
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->A:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/z;->h:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string/jumbo v4, "toLowerCase(...)"

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z;->a:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 143
    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    invoke-interface {v0, p1}, Lcom/moloco/sdk/publisher/AdShowListener;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method
