.class public final Lcom/unity3d/ads/core/data/repository/AndroidTransactionEventRepository;
.super Ljava/lang/Object;
.source "AndroidTransactionEventRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final _transactionEvents:Lkt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/d<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transactionEvents:Lkt/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/f<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    invoke-static {v0, v0, v1}, Lkt/g;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkt/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTransactionEventRepository;->_transactionEvents:Lkt/d;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->c(Lkt/d;)Lkt/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTransactionEventRepository;->transactionEvents:Lkt/f;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addTransactionEvent(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "transactionEventRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTransactionEventRepository;->_transactionEvents:Lkt/d;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkt/d;->g(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getTransactionEvents()Lkt/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/f<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTransactionEventRepository;->transactionEvents:Lkt/f;

    .line 2
    .line 3
    return-object v0
.end method
