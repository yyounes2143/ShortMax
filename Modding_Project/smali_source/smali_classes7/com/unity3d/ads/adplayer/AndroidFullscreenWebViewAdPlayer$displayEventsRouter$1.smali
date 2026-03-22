.class final Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidFullscreenWebViewAdPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->displayEventsRouter(Lcom/unity3d/ads/adplayer/DisplayMessage;)Lkotlinx/coroutines/r;
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
    c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1"
    f = "AndroidFullscreenWebViewAdPlayer.kt"
    l = {
        0xc3,
        0xc4,
        0xc5,
        0xc6,
        0xc7,
        0xc9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lcom/unity3d/ads/adplayer/DisplayMessage;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;",
            "Lcom/unity3d/ads/adplayer/DisplayMessage;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

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
    new-instance p1, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lcom/unity3d/ads/adplayer/DisplayMessage;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
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
    iget v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :pswitch_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "eventType"

    .line 51
    .line 52
    invoke-static {v2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 57
    .line 58
    instance-of v3, v2, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    check-cast v2, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;->isVisible()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    instance-of v3, v2, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    check-cast v2, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;->isFocused()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const-string v2, ""

    .line 89
    .line 90
    :goto_0
    const-string v3, "content"

    .line 91
    .line 92
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    filled-new-array {p1, v2}, [Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getAdObject(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const/16 v8, 0x2a

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    const-string v2, "native_show_ad_viewer_fullscreen_activity_event"

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 122
    .line 123
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getWebViewAdPlayer$p(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 134
    .line 135
    check-cast v1, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;->getShowOptions()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v2, 0x1

    .line 142
    iput v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 143
    .line 144
    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->requestShow(Ljava/util/Map;Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v0, :cond_7

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_2
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceRequest;

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    sget-object p1, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;->getDisplayMessages()Lkt/d;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v1, Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/unity3d/ads/adplayer/DisplayMessage;->getOpportunityId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->getWebViewContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->getWebView()Landroid/webkit/WebView;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-direct {v1, v2, v3}, Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 180
    .line 181
    .line 182
    const/4 v2, 0x2

    .line 183
    iput v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 184
    .line 185
    invoke-interface {p1, v1, p0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-ne p1, v0, :cond_7

    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_3
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;

    .line 193
    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getWebViewAdPlayer$p(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 203
    .line 204
    check-cast v1, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;->isVisible()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    const/4 v2, 0x3

    .line 211
    iput v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 212
    .line 213
    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendVisibilityChange(ZLrs/c;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-ne p1, v0, :cond_7

    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;

    .line 221
    .line 222
    if-eqz v1, :cond_5

    .line 223
    .line 224
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getWebViewAdPlayer$p(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->$displayMessage:Lcom/unity3d/ads/adplayer/DisplayMessage;

    .line 231
    .line 232
    check-cast v1, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;->isFocused()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    const/4 v2, 0x4

    .line 239
    iput v2, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 240
    .line 241
    invoke-virtual {p1, v1, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendFocusChange(ZLrs/c;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-ne p1, v0, :cond_7

    .line 246
    .line 247
    return-object v0

    .line 248
    :cond_5
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayDestroyed;

    .line 249
    .line 250
    if-eqz v1, :cond_6

    .line 251
    .line 252
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->access$getWebViewAdPlayer$p(Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const/4 v1, 0x5

    .line 259
    iput v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 260
    .line 261
    invoke-virtual {p1, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendActivityDestroyed(Lrs/c;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-ne p1, v0, :cond_7

    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_6
    instance-of p1, p1, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;

    .line 269
    .line 270
    if-eqz p1, :cond_7

    .line 271
    .line 272
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->this$0:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;

    .line 273
    .line 274
    const/4 v1, 0x6

    .line 275
    iput v1, p0, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1;->label:I

    .line 276
    .line 277
    invoke-virtual {p1, p0}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->destroy(Lrs/c;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    if-ne p1, v0, :cond_7

    .line 282
    .line 283
    return-object v0

    .line 284
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 285
    .line 286
    return-object p1

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
