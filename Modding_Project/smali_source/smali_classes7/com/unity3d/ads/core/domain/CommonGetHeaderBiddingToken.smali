.class public final Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;
.super Ljava/lang/Object;
.source "CommonGetHeaderBiddingToken.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HB_TOKEN_VERSION:Ljava/lang/String; = "2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final buildHeaderBiddingToken:Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchSignalsAndSendUseCase:Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->Companion:Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buildHeaderBiddingToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fetchSignalsAndSendUseCase"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->buildHeaderBiddingToken:Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->fetchSignalsAndSendUseCase:Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public invoke(ILcom/unity3d/ads/TokenConfiguration;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p2    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->label:I

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
    iput v1, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget p1, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->I$0:I

    .line 59
    .line 60
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Lcom/unity3d/ads/TokenConfiguration;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;

    .line 67
    .line 68
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->buildHeaderBiddingToken:Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 78
    .line 79
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getScarEligibleFormats()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/util/Collection;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    xor-int/2addr v2, v5

    .line 90
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object p2, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    iput p1, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->I$0:I

    .line 95
    .line 96
    iput v5, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->label:I

    .line 97
    .line 98
    invoke-interface {p3, p1, p2, v2, v0}, Lcom/unity3d/ads/core/domain/BuildHeaderBiddingToken;->invoke(ILcom/unity3d/ads/TokenConfiguration;ZLrs/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    if-ne p3, v1, :cond_4

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_4
    move-object v2, p0

    .line 106
    :goto_1
    check-cast p3, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;

    .line 107
    .line 108
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 109
    .line 110
    invoke-interface {v6}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getScarEligibleFormats()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_6

    .line 121
    .line 122
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken;->fetchSignalsAndSendUseCase:Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;

    .line 123
    .line 124
    invoke-virtual {p3}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;->getTokenId()Lcom/google/protobuf/ByteString;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "rawToken.tokenId"

    .line 129
    .line 130
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object p3, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$0:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v3, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    iput v4, v0, Lcom/unity3d/ads/core/domain/CommonGetHeaderBiddingToken$invoke$1;->label:I

    .line 138
    .line 139
    invoke-interface {v2, p1, v6, p2, v0}, Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;->invoke(ILcom/google/protobuf/ByteString;Lcom/unity3d/ads/TokenConfiguration;Lrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-ne p1, v1, :cond_5

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_5
    move-object p1, p3

    .line 147
    :goto_2
    move-object p3, p1

    .line 148
    :cond_6
    invoke-virtual {p3}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string p2, "rawToken.toByteString()"

    .line 153
    .line 154
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 p2, 0x0

    .line 158
    invoke-static {p1, p2, v5, v3}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string p3, "2:"

    .line 168
    .line 169
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1
.end method
