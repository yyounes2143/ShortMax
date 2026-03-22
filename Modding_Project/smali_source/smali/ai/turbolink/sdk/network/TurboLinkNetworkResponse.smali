.class public final Lai/turbolink/sdk/network/TurboLinkNetworkResponse;
.super Ljava/lang/Object;
.source "TurboLinkNetworkResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private requestID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responseCode:I

.field private final responseData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "responseData"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->requestID:Ljava/lang/String;

    .line 12
    .line 13
    iput p1, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->responseCode:I

    .line 14
    .line 15
    iput-object p2, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->responseData:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getRequestID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->requestID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->responseCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getResponseData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->responseData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setRequestId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "requestId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/network/TurboLinkNetworkResponse;->requestID:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
