.class final Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MetricSender.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/metrics/MetricSender;->sendMetrics(Ljava/util/List;)V
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
    c = "com.unity3d.services.core.request.metrics.MetricSender$sendMetrics$1"
    f = "MetricSender.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/services/core/request/metrics/Metric;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/request/metrics/MetricSender;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/core/request/metrics/MetricSender;",
            "Ljava/util/List<",
            "Lcom/unity3d/services/core/request/metrics/Metric;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->$metrics:Ljava/util/List;

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
    new-instance p1, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->$metrics:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;-><init>(Lcom/unity3d/services/core/request/metrics/MetricSender;Ljava/util/List;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/unity3d/services/core/request/metrics/MetricsContainer;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$getMetricSampleRate$p(Lcom/unity3d/services/core/request/metrics/MetricSender;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 40
    .line 41
    invoke-static {v5}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$getCommonTags$p(Lcom/unity3d/services/core/request/metrics/MetricSender;)Lcom/unity3d/services/core/request/metrics/MetricCommonTags;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v6, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->$metrics:Ljava/util/List;

    .line 46
    .line 47
    iget-object v7, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 48
    .line 49
    invoke-static {v7}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$getSessionToken$p(Lcom/unity3d/services/core/request/metrics/MetricSender;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-direct {v2, v4, v5, v6, v7}, Lcom/unity3d/services/core/request/metrics/MetricsContainer;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/request/metrics/MetricCommonTags;Ljava/util/List;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/unity3d/services/core/request/metrics/MetricsContainer;->toMap()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    const-string v2, "JSONObject(container.toMap()).toString()"

    .line 70
    .line 71
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/unity3d/services/core/network/model/HttpRequest;

    .line 75
    .line 76
    iget-object v4, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/unity3d/services/core/request/metrics/MetricSender;->getMetricEndPoint()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    const-string v4, ""

    .line 85
    .line 86
    :cond_2
    move-object v6, v4

    .line 87
    sget-object v8, Lcom/unity3d/services/core/network/model/RequestType;->POST:Lcom/unity3d/services/core/network/model/RequestType;

    .line 88
    .line 89
    const v23, 0x1fff2

    .line 90
    .line 91
    .line 92
    const/16 v24, 0x0

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v14, 0x0

    .line 100
    const/4 v15, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v17, 0x0

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v20, 0x0

    .line 110
    .line 111
    const/16 v21, 0x0

    .line 112
    .line 113
    const/16 v22, 0x0

    .line 114
    .line 115
    move-object v5, v2

    .line 116
    invoke-direct/range {v5 .. v24}, Lcom/unity3d/services/core/network/model/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/network/model/RequestType;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/services/core/network/model/BodyType;Ljava/lang/String;Ljava/lang/Integer;IIIIZLcom/unity3d/ads/core/data/model/OperationType;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 120
    .line 121
    invoke-static {v4}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$getHttpClient$p(Lcom/unity3d/services/core/request/metrics/MetricSender;)Lcom/unity3d/services/core/network/core/HttpClient;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iput v3, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->label:I

    .line 126
    .line 127
    invoke-interface {v4, v2, v0}, Lcom/unity3d/services/core/network/core/HttpClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;Lrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-ne v2, v1, :cond_3

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_3
    :goto_0
    check-cast v2, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    div-int/lit8 v1, v1, 0x64

    .line 141
    .line 142
    const/4 v3, 0x2

    .line 143
    const-string v4, "Metric "

    .line 144
    .line 145
    if-ne v1, v3, :cond_4

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->$metrics:Ljava/util/List;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, " sent to "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/unity3d/services/core/request/metrics/MetricSender;->getMetricEndPoint()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v3, v0, Lcom/unity3d/services/core/request/metrics/MetricSender$sendMetrics$1;->$metrics:Ljava/util/List;

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v3, " failed to send with response code: "

    .line 196
    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v1
.end method
