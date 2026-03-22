.class final Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CommonScarEventReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
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
    c = "com.unity3d.ads.core.domain.scar.CommonScarEventReceiver$sendEvent$1"
    f = "CommonScarEventReceiver.kt"
    l = {
        0x23,
        0x29,
        0x34,
        0x42,
        0x49
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonScarEventReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonScarEventReceiver.kt\ncom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $eventId:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $params:[Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;


# direct methods
.method constructor <init>(Ljava/lang/Enum;[Ljava/lang/Object;Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;-><init>(Ljava/lang/Enum;[Ljava/lang/Object;Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
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
    iget v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    const-string v9, "null cannot be cast to non-null type kotlin.String"

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    if-eq v2, v7, :cond_2

    .line 20
    .line 21
    if-eq v2, v6, :cond_2

    .line 22
    .line 23
    if-eq v2, v5, :cond_2

    .line 24
    .line 25
    if-eq v2, v4, :cond_1

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 52
    .line 53
    sget-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->VERSION:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 54
    .line 55
    if-ne v2, v10, :cond_5

    .line 56
    .line 57
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 60
    .line 61
    aget-object v2, v2, v8

    .line 62
    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->access$get_versionFlow$p(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;)Lkt/d;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "0.0.0"

    .line 70
    .line 71
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v2, 0x0

    .line 79
    :goto_1
    iput v7, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 80
    .line 81
    invoke-interface {v3, v2, v0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-ne v2, v1, :cond_9

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_5
    sget-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 89
    .line 90
    if-ne v2, v10, :cond_6

    .line 91
    .line 92
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->access$get_gmaEventFlow$p(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;)Lkt/d;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-instance v4, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 101
    .line 102
    aget-object v2, v2, v8

    .line 103
    .line 104
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object v11, v2

    .line 108
    check-cast v11, Ljava/lang/String;

    .line 109
    .line 110
    const/16 v15, 0x76

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    move-object v7, v4

    .line 120
    move-object v8, v10

    .line 121
    move-object v10, v2

    .line 122
    invoke-direct/range {v7 .. v16}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    iput v6, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 126
    .line 127
    invoke-interface {v3, v4, v0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-ne v2, v1, :cond_9

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_6
    sget-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 135
    .line 136
    if-ne v2, v10, :cond_7

    .line 137
    .line 138
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->access$get_gmaEventFlow$p(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;)Lkt/d;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-instance v4, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 147
    .line 148
    aget-object v8, v2, v8

    .line 149
    .line 150
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move-object v11, v8

    .line 154
    check-cast v11, Ljava/lang/String;

    .line 155
    .line 156
    aget-object v7, v2, v7

    .line 157
    .line 158
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v12, v7

    .line 162
    check-cast v12, Ljava/lang/String;

    .line 163
    .line 164
    aget-object v6, v2, v6

    .line 165
    .line 166
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v13, v6

    .line 170
    check-cast v13, Ljava/lang/String;

    .line 171
    .line 172
    aget-object v2, v2, v5

    .line 173
    .line 174
    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    .line 175
    .line 176
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    check-cast v2, Ljava/lang/Integer;

    .line 180
    .line 181
    const/4 v14, 0x6

    .line 182
    const/4 v15, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    move-object v6, v4

    .line 186
    move-object v7, v10

    .line 187
    move-object v10, v11

    .line 188
    move-object v11, v12

    .line 189
    move-object v12, v13

    .line 190
    move-object v13, v2

    .line 191
    invoke-direct/range {v6 .. v15}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    .line 193
    .line 194
    iput v5, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 195
    .line 196
    invoke-interface {v3, v4, v0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-ne v2, v1, :cond_9

    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_7
    instance-of v2, v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 204
    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 208
    .line 209
    invoke-static {v2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->access$get_gmaEventFlow$p(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;)Lkt/d;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    new-instance v5, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 214
    .line 215
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 216
    .line 217
    move-object v11, v6

    .line 218
    check-cast v11, Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 219
    .line 220
    const/16 v18, 0x7e

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v13, 0x0

    .line 226
    const/4 v14, 0x0

    .line 227
    const/4 v15, 0x0

    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    move-object v10, v5

    .line 233
    invoke-direct/range {v10 .. v19}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    .line 235
    .line 236
    iput v4, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 237
    .line 238
    invoke-interface {v2, v5, v0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-ne v2, v1, :cond_8

    .line 243
    .line 244
    return-object v1

    .line 245
    :cond_8
    :goto_2
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 246
    .line 247
    instance-of v2, v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 248
    .line 249
    if-eqz v2, :cond_9

    .line 250
    .line 251
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->this$0:Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;

    .line 252
    .line 253
    invoke-static {v2}, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;->access$get_gmaEventFlow$p(Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver;)Lkt/d;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    new-instance v4, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 258
    .line 259
    sget-object v11, Lcom/unity3d/scar/adapter/common/GMAEvent;->BANNER:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 260
    .line 261
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$eventId:Ljava/lang/Enum;

    .line 262
    .line 263
    move-object v12, v5

    .line 264
    check-cast v12, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 265
    .line 266
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->$params:[Ljava/lang/Object;

    .line 267
    .line 268
    aget-object v5, v5, v8

    .line 269
    .line 270
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move-object v13, v5

    .line 274
    check-cast v13, Ljava/lang/String;

    .line 275
    .line 276
    const/16 v18, 0x78

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/4 v14, 0x0

    .line 281
    const/4 v15, 0x0

    .line 282
    const/16 v16, 0x0

    .line 283
    .line 284
    const/16 v17, 0x0

    .line 285
    .line 286
    move-object v10, v4

    .line 287
    invoke-direct/range {v10 .. v19}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    .line 289
    .line 290
    iput v3, v0, Lcom/unity3d/ads/core/domain/scar/CommonScarEventReceiver$sendEvent$1;->label:I

    .line 291
    .line 292
    invoke-interface {v2, v4, v0}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    if-ne v2, v1, :cond_9

    .line 297
    .line 298
    return-object v1

    .line 299
    :cond_9
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object v1
.end method
