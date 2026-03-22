.class public final Lcom/unity3d/ads/adplayer/WebViewAdPlayer;
.super Ljava/lang/Object;
.source "WebViewAdPlayer.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/AdPlayer;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWebViewAdPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,277:1\n49#2,4:278\n20#3:282\n22#3:286\n47#3:287\n49#3:291\n20#3:292\n22#3:296\n47#3:297\n49#3:301\n20#3:302\n22#3:306\n47#3:307\n49#3:311\n20#3:312\n22#3:316\n47#3:317\n49#3:321\n20#3:322\n22#3:326\n47#3:327\n49#3:331\n50#4:283\n55#4:285\n50#4:288\n55#4:290\n50#4:293\n55#4:295\n50#4:298\n55#4:300\n50#4:303\n55#4:305\n50#4:308\n55#4:310\n50#4:313\n55#4:315\n50#4:318\n55#4:320\n50#4:323\n55#4:325\n50#4:328\n55#4:330\n106#5:284\n106#5:289\n106#5:294\n106#5:299\n106#5:304\n106#5:309\n106#5:314\n106#5:319\n106#5:324\n106#5:329\n515#6:332\n500#6,6:333\n*S KotlinDebug\n*F\n+ 1 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n75#1:278,4\n82#1:282\n82#1:286\n83#1:287\n83#1:291\n92#1:292\n92#1:296\n93#1:297\n93#1:301\n102#1:302\n102#1:306\n103#1:307\n103#1:311\n135#1:312\n135#1:316\n136#1:317\n136#1:321\n152#1:322\n152#1:326\n153#1:327\n153#1:331\n82#1:283\n82#1:285\n83#1:288\n83#1:290\n92#1:293\n92#1:295\n93#1:298\n93#1:300\n102#1:303\n102#1:305\n103#1:308\n103#1:310\n135#1:313\n135#1:315\n136#1:318\n136#1:320\n152#1:323\n152#1:325\n153#1:328\n153#1:330\n82#1:284\n83#1:289\n92#1:294\n93#1:299\n102#1:304\n103#1:309\n135#1:314\n136#1:319\n152#1:324\n153#1:329\n184#1:332\n184#1:333,6\n*E\n"
    }
.end annotation


# instance fields
.field private final bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isCompletedManually:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onBroadcastEvents:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onLoadEvent:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "Lcom/unity3d/ads/adplayer/model/LoadEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onOfferwallEvent:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onScarEvent:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/ScarEvent$Show;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onShowEvent:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/ShowEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scopeCancellationHandler:Lgt/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storageEventCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/unity3d/services/core/device/StorageEventInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/adplayer/WebViewBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/adplayer/WebViewContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bridge"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deviceInfoRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "dispatcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sendDiagnosticEvent"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "webViewContainer"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "adPlayerScope"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->dispatcher:Lgt/c0;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 48
    .line 49
    iput-object p6, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 50
    .line 51
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-static {p2}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->isCompletedManually:Lkt/e;

    .line 58
    .line 59
    new-instance p3, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;

    .line 60
    .line 61
    invoke-direct {p3, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)V

    .line 62
    .line 63
    .line 64
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->storageEventCallback:Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    sget-object p5, Lgt/d0;->D8:Lgt/d0$b;

    .line 67
    .line 68
    new-instance p6, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;

    .line 69
    .line 70
    invoke-direct {p6, p5, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lgt/d0$b;Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)V

    .line 71
    .line 72
    .line 73
    iput-object p6, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->scopeCancellationHandler:Lgt/d0;

    .line 74
    .line 75
    invoke-static {p7, p4}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    new-instance p5, Lgt/f0;

    .line 80
    .line 81
    const-string p7, "WebViewAdPlayer"

    .line 82
    .line 83
    invoke-direct {p5, p7}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p4, p5}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-static {p4, p6}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->scope:Lgt/g0;

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    new-instance p5, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$1;

    .line 101
    .line 102
    invoke-direct {p5, p4}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$1;-><init>(Lkt/b;)V

    .line 103
    .line 104
    .line 105
    new-instance p4, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$1;

    .line 106
    .line 107
    invoke-direct {p4, p5}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$1;-><init>(Lkt/b;)V

    .line 108
    .line 109
    .line 110
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onScarEvent:Lkt/b;

    .line 111
    .line 112
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    new-instance p5, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$2;

    .line 117
    .line 118
    invoke-direct {p5, p4}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$2;-><init>(Lkt/b;)V

    .line 119
    .line 120
    .line 121
    new-instance p4, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$2;

    .line 122
    .line 123
    invoke-direct {p4, p5}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$2;-><init>(Lkt/b;)V

    .line 124
    .line 125
    .line 126
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onOfferwallEvent:Lkt/b;

    .line 127
    .line 128
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    new-instance p5, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$3;

    .line 133
    .line 134
    invoke-direct {p5, p4}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$3;-><init>(Lkt/b;)V

    .line 135
    .line 136
    .line 137
    new-instance p4, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3;

    .line 138
    .line 139
    invoke-direct {p4, p5}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3;-><init>(Lkt/b;)V

    .line 140
    .line 141
    .line 142
    new-instance p5, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onShowEvent$3;

    .line 143
    .line 144
    const/4 p6, 0x0

    .line 145
    invoke-direct {p5, p6}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onShowEvent$3;-><init>(Lrs/c;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p4, p2, p5}, Lkotlinx/coroutines/flow/c;->G(Lkt/b;Lkt/b;Lat/n;)Lkt/b;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onShowEvent:Lkt/b;

    .line 153
    .line 154
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    new-instance p4, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$4;

    .line 159
    .line 160
    invoke-direct {p4, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$4;-><init>(Lkt/b;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$4;

    .line 164
    .line 165
    invoke-direct {p2, p4}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$4;-><init>(Lkt/b;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lgt/g0;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    sget-object p5, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    .line 173
    .line 174
    invoke-virtual {p5}, Lkotlinx/coroutines/flow/m$a;->c()Lkotlinx/coroutines/flow/m;

    .line 175
    .line 176
    .line 177
    move-result-object p5

    .line 178
    const/4 p6, 0x1

    .line 179
    invoke-static {p2, p4, p5, p6}, Lkotlinx/coroutines/flow/c;->R(Lkt/b;Lgt/g0;Lkotlinx/coroutines/flow/m;I)Lkt/f;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p2, p6}, Lkotlinx/coroutines/flow/c;->U(Lkt/b;I)Lkt/b;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onLoadEvent:Lkt/b;

    .line 188
    .line 189
    invoke-interface {p1}, Lcom/unity3d/ads/adplayer/WebViewBridge;->getOnInvocation()Lkt/f;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance p2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$5;

    .line 194
    .line 195
    invoke-direct {p2, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$filter$5;-><init>(Lkt/b;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$5;

    .line 199
    .line 200
    invoke-direct {p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$5;-><init>(Lkt/b;)V

    .line 201
    .line 202
    .line 203
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onBroadcastEvents:Lkt/b;

    .line 204
    .line 205
    sget-object p2, Lcom/unity3d/services/core/device/Storage;->Companion:Lcom/unity3d/services/core/device/Storage$Companion;

    .line 206
    .line 207
    invoke-virtual {p2, p3}, Lcom/unity3d/services/core/device/Storage$Companion;->addStorageEventCallback(Lkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    new-instance p2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$1;

    .line 211
    .line 212
    sget-object p3, Lcom/unity3d/ads/adplayer/AdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AdPlayer$Companion;

    .line 213
    .line 214
    invoke-virtual {p3}, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->getBroadcastEventChannel()Lkt/d;

    .line 215
    .line 216
    .line 217
    move-result-object p4

    .line 218
    invoke-direct {p2, p4}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$1;-><init>(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lgt/g0;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Lcom/unity3d/ads/adplayer/AdPlayer$Companion;->getBroadcastEventChannel()Lkt/d;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    new-instance p2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$2;

    .line 237
    .line 238
    invoke-direct {p2, p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$2;-><init>(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lgt/g0;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public static final synthetic access$getBridge$p(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewBridge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStorageEventCallback$p(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->storageEventCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$sendEvent(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/unity3d/ads/adplayer/model/WebViewEvent;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    iget-object v4, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 61
    .line 62
    iget-object v6, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getOnLoadEvent()Lkt/b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v0, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    move-object/from16 v4, p1

    .line 80
    .line 81
    iput-object v4, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    iput v6, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->label:I

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/c;->S(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v1, v3, :cond_4

    .line 90
    .line 91
    return-object v3

    .line 92
    :cond_4
    move-object v6, v0

    .line 93
    :goto_1
    check-cast v1, Lcom/unity3d/ads/adplayer/model/LoadEvent;

    .line 94
    .line 95
    instance-of v7, v1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    iget-object v8, v6, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 100
    .line 101
    const-string v2, "reason"

    .line 102
    .line 103
    const-string v3, "adviewer"

    .line 104
    .line 105
    invoke-static {v2, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v1, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const-string v4, "reason_debug"

    .line 116
    .line 117
    invoke-static {v4, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getErrorCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v4, "reason_code"

    .line 130
    .line 131
    invoke-static {v4, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    filled-new-array {v2, v3, v1}, [Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const/16 v15, 0x3a

    .line 144
    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    const-string v9, "bridge_send_event_failed"

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v14, 0x0

    .line 153
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_5
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/unity3d/ads/adplayer/model/WebViewEvent;

    .line 164
    .line 165
    iget-object v4, v6, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 166
    .line 167
    const/4 v6, 0x0

    .line 168
    iput-object v6, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v6, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->L$1:Ljava/lang/Object;

    .line 171
    .line 172
    iput v5, v2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendEvent$1;->label:I

    .line 173
    .line 174
    invoke-interface {v4, v1, v2}, Lcom/unity3d/ads/adplayer/WebViewBridge;->sendEvent(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lrs/c;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-ne v1, v3, :cond_6

    .line 179
    .line 180
    return-object v3

    .line 181
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    return-object v1
.end method


# virtual methods
.method public destroy(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/AdPlayer$DefaultImpls;->destroy(Lcom/unity3d/ads/adplayer/AdPlayer;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public dispatchShowCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->isCompletedManually:Lkt/e;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getOnLoadEvent()Lkt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Lcom/unity3d/ads/adplayer/model/LoadEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onLoadEvent:Lkt/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnOfferwallEvent()Lkt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/OfferwallShowEvent$Show;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onOfferwallEvent:Lkt/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnScarEvent()Lkt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/ScarEvent$Show;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onScarEvent:Lkt/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnShowEvent()Lkt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/b<",
            "Lcom/unity3d/ads/core/data/model/ShowEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->onShowEvent:Lkt/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScope()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->scope:Lgt/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewContainer()Lcom/unity3d/ads/adplayer/WebViewContainer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->webViewContainer:Lcom/unity3d/ads/adplayer/WebViewContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAllowedPiiChange([BLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onAllowedPiiChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onAllowedPiiChange$2;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public onBroadcastEvent(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onBroadcastEvent$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$onBroadcastEvent$2;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public requestShow(Ljava/util/Map;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/util/Map;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
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
    instance-of v0, p2, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-eq v2, v6, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$5:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lorg/json/JSONObject;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$4:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$3:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Lorg/json/JSONObject;

    .line 70
    .line 71
    iget-object v8, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$2:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v8, Lorg/json/JSONObject;

    .line 74
    .line 75
    iget-object v9, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v9, Ljava/util/Map;

    .line 78
    .line 79
    iget-object v10, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v10, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 82
    .line 83
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$5:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lorg/json/JSONObject;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$4:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v8, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$3:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v8, Lorg/json/JSONObject;

    .line 99
    .line 100
    iget-object v9, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$2:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v9, Lorg/json/JSONObject;

    .line 103
    .line 104
    iget-object v10, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$1:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v10, Ljava/util/Map;

    .line 107
    .line 108
    iget-object v11, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v11, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 111
    .line 112
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object v12, v8

    .line 116
    move-object v8, v2

    .line 117
    move-object v2, v12

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 123
    .line 124
    invoke-interface {p2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v8, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 134
    .line 135
    invoke-interface {v8}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getOrientation()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const-string v9, "orientation"

    .line 140
    .line 141
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    iget-object v8, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 145
    .line 146
    invoke-interface {v8}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getConnectionTypeStr()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    const-string v9, "connectionType"

    .line 151
    .line 152
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    iget-object v8, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 156
    .line 157
    invoke-interface {v8}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getRingerMode()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eq v8, v4, :cond_5

    .line 162
    .line 163
    move v8, v6

    .line 164
    goto :goto_1

    .line 165
    :cond_5
    move v8, v5

    .line 166
    :goto_1
    const-string v9, "isMuted"

    .line 167
    .line 168
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getAndroid()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;->getVolume()D

    .line 176
    .line 177
    .line 178
    move-result-wide v8

    .line 179
    const-string p2, "volume"

    .line 180
    .line 181
    invoke-virtual {v2, p2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 185
    .line 186
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object p1, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$1:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$2:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$3:Ljava/lang/Object;

    .line 193
    .line 194
    const-string v8, "privacy"

    .line 195
    .line 196
    iput-object v8, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$4:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$5:Ljava/lang/Object;

    .line 199
    .line 200
    iput v6, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 201
    .line 202
    invoke-interface {p2, v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getPrivacy(Lrs/c;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    if-ne p2, v1, :cond_6

    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_6
    move-object v11, p0

    .line 210
    move-object v10, p1

    .line 211
    move-object p1, v2

    .line 212
    move-object v9, p1

    .line 213
    :goto_2
    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 214
    .line 215
    invoke-static {p2, v5, v6, v7}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    iget-object p1, v11, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 223
    .line 224
    iput-object v11, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v10, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$1:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v9, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$2:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$3:Ljava/lang/Object;

    .line 231
    .line 232
    const-string p2, "privacyFsm"

    .line 233
    .line 234
    iput-object p2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$4:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v2, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$5:Ljava/lang/Object;

    .line 237
    .line 238
    iput v4, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 239
    .line 240
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getPrivacyFsm(Lrs/c;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-ne p1, v1, :cond_7

    .line 245
    .line 246
    return-object v1

    .line 247
    :cond_7
    move-object v4, v2

    .line 248
    move-object v8, v9

    .line 249
    move-object v9, v10

    .line 250
    move-object v10, v11

    .line 251
    move-object v2, p2

    .line 252
    move-object p2, p1

    .line 253
    move-object p1, v4

    .line 254
    :goto_3
    check-cast p2, Lcom/google/protobuf/ByteString;

    .line 255
    .line 256
    invoke-static {p2, v5, v6, v7}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    iget-object p1, v10, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 264
    .line 265
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAllowedPii()Lkt/e;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    const-string p2, "deviceInfoRepository.all\u2026dPii.value.toByteString()"

    .line 280
    .line 281
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p1, v5, v6, v7}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    const-string p2, "allowedPii"

    .line 289
    .line 290
    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    .line 292
    .line 293
    if-eqz v9, :cond_a

    .line 294
    .line 295
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 296
    .line 297
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_9

    .line 313
    .line 314
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    .line 320
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    const-string v6, "objectId"

    .line 325
    .line 326
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-nez v5, :cond_8

    .line 331
    .line 332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-nez p2, :cond_a

    .line 349
    .line 350
    new-instance p2, Lorg/json/JSONObject;

    .line 351
    .line 352
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 353
    .line 354
    .line 355
    const-string p1, "showOptions"

    .line 356
    .line 357
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    .line 359
    .line 360
    :cond_a
    iget-object p1, v10, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 361
    .line 362
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$0:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$1:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$2:Ljava/lang/Object;

    .line 371
    .line 372
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$3:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$4:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v7, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->L$5:Ljava/lang/Object;

    .line 377
    .line 378
    iput v3, v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$requestShow$1;->label:I

    .line 379
    .line 380
    const-string v2, "webview"

    .line 381
    .line 382
    const-string v3, "show"

    .line 383
    .line 384
    invoke-interface {p1, v2, v3, p2, v0}, Lcom/unity3d/ads/adplayer/WebViewBridge;->request(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-ne p1, v1, :cond_b

    .line 389
    .line 390
    return-object v1

    .line 391
    :cond_b
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 392
    .line 393
    return-object p1
.end method

.method public sendActivityDestroyed(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    sget-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendActivityDestroyed$2;->INSTANCE:Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendActivityDestroyed$2;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public sendFocusChange(ZLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendFocusChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendFocusChange$2;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendGmaEvent(Lcom/unity3d/scar/adapter/common/GMAEvent;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/unity3d/scar/adapter/common/GMAEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/GMAEvent;",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendGmaEvent$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendGmaEvent$2;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendMuteChange(ZLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendMuteChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendMuteChange$2;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendOfferwallEvent(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/ads/offerwall/OfferwallEvent;",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendOfferwallEvent$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendOfferwallEvent$2;-><init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendPrivacyFsmChange([BLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendPrivacyFsmChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendPrivacyFsmChange$2;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendScarBannerEvent(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;-><init>(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendUserConsentChange([BLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendUserConsentChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendUserConsentChange$2;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendVisibilityChange(ZLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVisibilityChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVisibilityChange$2;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public sendVolumeChange(DLrs/c;)Ljava/lang/Object;
    .locals 1
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
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
    new-instance v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;-><init>(D)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p3}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendEvent(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public show(Lcom/unity3d/ads/adplayer/ShowOptions;)V
    .locals 0
    .param p1    # Lcom/unity3d/ads/adplayer/ShowOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/AdPlayer$DefaultImpls;->show(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/ShowOptions;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
