.class final Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CommonWebViewBridge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->handleInvocation(Ljava/lang/String;)V
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
    c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7"
    f = "CommonWebViewBridge.kt"
    l = {
        0x7f,
        0x81,
        0x82,
        0x83,
        0x84,
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Ljava/lang/String;

.field final synthetic $location:Ljava/lang/String;

.field final synthetic $parameters:Lorg/json/JSONArray;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/unity3d/ads/adplayer/CommonWebViewBridge;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$location:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$parameters:Lorg/json/JSONArray;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$callback:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$location:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$parameters:Lorg/json/JSONArray;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$callback:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :pswitch_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :pswitch_3
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/unity3d/ads/adplayer/Invocation;

    .line 39
    .line 40
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :pswitch_4
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/unity3d/ads/adplayer/Invocation;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_5
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/unity3d/ads/adplayer/Invocation;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$location:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$parameters:Lorg/json/JSONArray;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/unity3d/ads/core/extensions/JSONArrayExtensionsKt;->toTypedArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {p1, v1, v3}, Lcom/unity3d/ads/adplayer/Invocation;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$get_onInvocation$p(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;)Lkt/d;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    iput v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 78
    .line 79
    invoke-interface {v1, p1, p0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-ne v1, v0, :cond_0

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_0
    move-object v1, p1

    .line 87
    :goto_0
    :try_start_2
    new-instance p1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7$1;

    .line 88
    .line 89
    invoke-direct {p1, v1, v2}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7$1;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lrs/c;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v3, 0x2

    .line 95
    iput v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 96
    .line 97
    const-wide/16 v3, 0x1388

    .line 98
    .line 99
    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v0, :cond_1

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    const/4 p1, 0x3

    .line 109
    iput p1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 110
    .line 111
    invoke-virtual {v1, p0}, Lcom/unity3d/ads/adplayer/Invocation;->getResult(Lrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, v0, :cond_2

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_2
    :goto_2
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/model/WebViewEvent;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 123
    .line 124
    check-cast p1, Lcom/unity3d/ads/adplayer/model/WebViewEvent;

    .line 125
    .line 126
    const/4 v3, 0x4

    .line 127
    iput v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 128
    .line 129
    invoke-virtual {v1, p1, p0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->sendEvent(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v0, :cond_6

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$callback:Ljava/lang/String;

    .line 139
    .line 140
    const-string v4, "OK"

    .line 141
    .line 142
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const/4 v5, 0x5

    .line 147
    iput v5, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 148
    .line 149
    invoke-static {v1, v3, v4, p1, p0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$respond(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    if-ne p1, v0, :cond_6

    .line 154
    .line 155
    return-object v0

    .line 156
    :goto_3
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 157
    .line 158
    if-eqz v1, :cond_4

    .line 159
    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v1, "Invocation("

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$location:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ") is not handled"

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    goto :goto_4

    .line 185
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v1, :cond_5

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_4

    .line 200
    :cond_5
    move-object p1, v1

    .line 201
    :goto_4
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->this$0:Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 202
    .line 203
    iget-object v3, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->$callback:Ljava/lang/String;

    .line 204
    .line 205
    const-string v4, "reason"

    .line 206
    .line 207
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    const/4 v2, 0x6

    .line 217
    iput v2, p0, Lcom/unity3d/ads/adplayer/CommonWebViewBridge$handleInvocation$7;->label:I

    .line 218
    .line 219
    const-string v2, "ERROR"

    .line 220
    .line 221
    invoke-static {v1, v3, v2, p1, p0}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;->access$respond(Lcom/unity3d/ads/adplayer/CommonWebViewBridge;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-ne p1, v0, :cond_6

    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_6
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
