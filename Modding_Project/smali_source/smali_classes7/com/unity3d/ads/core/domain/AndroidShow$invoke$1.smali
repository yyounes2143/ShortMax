.class final Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidShow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidShow;->invoke(Landroid/app/Activity;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/UnityAdsShowOptions;)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkt/c<",
        "-",
        "Lcom/unity3d/ads/core/data/model/ShowEvent;",
        ">;",
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
    c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1"
    f = "AndroidShow.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidShow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field final synthetic $showOptions:Lcom/unity3d/ads/UnityAdsShowOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidShow;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/AndroidShow;Landroid/app/Activity;Lcom/unity3d/ads/UnityAdsShowOptions;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lcom/unity3d/ads/core/domain/AndroidShow;",
            "Landroid/app/Activity;",
            "Lcom/unity3d/ads/UnityAdsShowOptions;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$showOptions:Lcom/unity3d/ads/UnityAdsShowOptions;

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
    new-instance v6, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$activity:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$showOptions:Lcom/unity3d/ads/UnityAdsShowOptions;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/AndroidShow;Landroid/app/Activity;Lcom/unity3d/ads/UnityAdsShowOptions;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkt/c;
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
            "Lkt/c<",
            "-",
            "Lcom/unity3d/ads/core/data/model/ShowEvent;",
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

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->label:I

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
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->L$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lkt/c;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_5

    .line 45
    .line 46
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 53
    .line 54
    invoke-static {v5}, Lcom/unity3d/ads/core/domain/AndroidShow;->access$getAdRepository$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/data/repository/AdRepository;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5, v4}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    if-eqz v7, :cond_4

    .line 63
    .line 64
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 65
    .line 66
    invoke-static {v5}, Lcom/unity3d/ads/core/domain/AndroidShow;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/AndroidShow;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iget-object v13, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 71
    .line 72
    const/16 v15, 0x2e

    .line 73
    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const-string v9, "native_show_started_ad_viewer"

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v14, 0x0

    .line 82
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-interface {v5}, Lcom/unity3d/ads/adplayer/AdPlayer;->getOnShowEvent()Lkt/b;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v13, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$2;

    .line 96
    .line 97
    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 98
    .line 99
    iget-object v9, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 100
    .line 101
    iget-object v10, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$activity:Landroid/app/Activity;

    .line 102
    .line 103
    iget-object v11, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$showOptions:Lcom/unity3d/ads/UnityAdsShowOptions;

    .line 104
    .line 105
    const/4 v12, 0x0

    .line 106
    move-object v6, v13

    .line 107
    invoke-direct/range {v6 .. v12}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$2;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/AndroidShow;Lcom/unity3d/ads/core/data/model/AdObject;Landroid/app/Activity;Lcom/unity3d/ads/UnityAdsShowOptions;Lrs/c;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v13}, Lkotlinx/coroutines/flow/c;->P(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-instance v6, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$3;

    .line 115
    .line 116
    iget-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 117
    .line 118
    iget-object v8, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    invoke-direct {v6, v7, v8, v4, v9}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$3;-><init>(Lcom/unity3d/ads/core/domain/AndroidShow;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/google/protobuf/ByteString;Lrs/c;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/c;->N(Lkt/b;Lat/n;)Lkt/b;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-instance v5, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$4;

    .line 129
    .line 130
    invoke-direct {v5, v9}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$4;-><init>(Lrs/c;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/c;->Y(Lkt/b;Lat/n;)Lkt/b;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    new-instance v5, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$5;

    .line 138
    .line 139
    iget-object v6, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidShow;

    .line 140
    .line 141
    iget-object v7, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 142
    .line 143
    invoke-direct {v5, v6, v7, v2}, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1$5;-><init>(Lcom/unity3d/ads/core/domain/AndroidShow;Lcom/unity3d/ads/core/data/model/AdObject;Lkt/c;)V

    .line 144
    .line 145
    .line 146
    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidShow$invoke$1;->label:I

    .line 147
    .line 148
    invoke-interface {v4, v5, v0}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-ne v2, v1, :cond_2

    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    const-string v2, "No adPlayer associated with ad"

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 167
    .line 168
    const-string v2, "No ad associated with opportunityId"

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string v2, "No opportunityId"

    .line 177
    .line 178
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1
.end method
