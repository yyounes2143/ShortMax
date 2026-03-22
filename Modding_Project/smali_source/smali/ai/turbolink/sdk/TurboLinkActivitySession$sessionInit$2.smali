.class final Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TurboLinkActivitySession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/TurboLinkActivitySession;->sessionInit()V
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
    c = "ai.turbolink.sdk.TurboLinkActivitySession$sessionInit$2"
    f = "TurboLinkActivitySession.kt"
    l = {
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

.field final synthetic $_context:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lai/turbolink/sdk/request/ServerRequestSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $turboLink:Lai/turbolink/sdk/TurboLink;

.field label:I

.field final synthetic this$0:Lai/turbolink/sdk/TurboLinkActivitySession;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/TurboLinkActivitySession;Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Lai/turbolink/sdk/TurboLink;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/content/Context;",
            ">;",
            "Lai/turbolink/sdk/TurboLinkActivitySession;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lai/turbolink/sdk/request/ServerRequestSession;",
            ">;",
            "Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;",
            "Lai/turbolink/sdk/TurboLink;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 4
    .line 5
    iput-object p3, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 8
    .line 9
    iput-object p5, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 10
    .line 11
    iget-object v5, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/TurboLinkActivitySession;Lkotlin/jvm/internal/Ref$ObjectRef;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Lai/turbolink/sdk/TurboLink;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lai/turbolink/sdk/TurboLink$RiskManager;->INSTANCE:Lai/turbolink/sdk/TurboLink$RiskManager;

    .line 28
    .line 29
    sget-object v1, Lai/turbolink/sdk/coroutines/VpnInfo;->INSTANCE:Lai/turbolink/sdk/coroutines/VpnInfo;

    .line 30
    .line 31
    iget-object v3, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Lai/turbolink/sdk/coroutines/VpnInfo;->isVpnConnected(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->setVpnStatus(I)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 50
    .line 51
    invoke-virtual {v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getRootPermission()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const/16 v1, 0x64

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v1, 0x0

    .line 61
    :goto_1
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/TurboLink$RiskManager;->setRootScore(I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lai/turbolink/sdk/coroutines/SensorInfo;->INSTANCE:Lai/turbolink/sdk/coroutines/SensorInfo;

    .line 65
    .line 66
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/coroutines/SensorInfo;->initGravity(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lai/turbolink/sdk/coroutines/SensorInfo;->getGravityStatus()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lai/turbolink/sdk/coroutines/SensorInfo;->registerListener()V

    .line 82
    .line 83
    .line 84
    :cond_4
    iput v2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->label:I

    .line 85
    .line 86
    const-wide/16 v1, 0xc8

    .line 87
    .line 88
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v0, :cond_5

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5
    :goto_2
    sget-object p1, Lai/turbolink/sdk/coroutines/SensorInfo;->INSTANCE:Lai/turbolink/sdk/coroutines/SensorInfo;

    .line 96
    .line 97
    invoke-virtual {p1}, Lai/turbolink/sdk/coroutines/SensorInfo;->unRegisterListener()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 101
    .line 102
    invoke-static {p1}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$getEvent$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v0, "auto"

    .line 107
    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    sget-object p1, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 115
    .line 116
    invoke-virtual {p1}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 121
    .line 122
    invoke-virtual {v1}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 135
    .line 136
    invoke-static {v1}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$getEvent$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 147
    .line 148
    invoke-static {v0}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$getEvent$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    iget-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 163
    .line 164
    new-instance v0, Lai/turbolink/sdk/request/event/EventInstall;

    .line 165
    .line 166
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 167
    .line 168
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Landroid/content/Context;

    .line 171
    .line 172
    iget-object v2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 173
    .line 174
    iget-object v3, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 175
    .line 176
    invoke-static {v3}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$isAutoInitialization$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-direct {v0, v1, v2, v3}, Lai/turbolink/sdk/request/event/EventInstall;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    iget-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 187
    .line 188
    new-instance v0, Lai/turbolink/sdk/request/event/EventOpen;

    .line 189
    .line 190
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_context:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 191
    .line 192
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v1, Landroid/content/Context;

    .line 195
    .line 196
    iget-object v2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 197
    .line 198
    iget-object v3, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 199
    .line 200
    invoke-static {v3}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$isAutoInitialization$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-direct {v0, v1, v2, v3}, Lai/turbolink/sdk/request/event/EventOpen;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 205
    .line 206
    .line 207
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    iget-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 211
    .line 212
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 213
    .line 214
    iget-object v1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$_callback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 215
    .line 216
    iget-object v2, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->this$0:Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 217
    .line 218
    invoke-static {v2}, Lai/turbolink/sdk/TurboLinkActivitySession;->access$isAutoInitialization$p(Lai/turbolink/sdk/TurboLinkActivitySession;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v0, v1, v2}, Lai/turbolink/sdk/TurboLink;->getEventInstallOrOpenRequest(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)Lai/turbolink/sdk/request/ServerRequestSession;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 227
    .line 228
    :goto_3
    iget-object p1, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 229
    .line 230
    iget-object v0, p0, Lai/turbolink/sdk/TurboLinkActivitySession$sessionInit$2;->$initRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 231
    .line 232
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Lai/turbolink/sdk/request/ServerRequestSession;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/TurboLink;->initializeSession(Lai/turbolink/sdk/request/ServerRequestSession;)V

    .line 237
    .line 238
    .line 239
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    return-object p1
.end method
