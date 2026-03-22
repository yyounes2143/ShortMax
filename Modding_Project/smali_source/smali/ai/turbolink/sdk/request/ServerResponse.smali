.class public final Lai/turbolink/sdk/request/ServerResponse;
.super Ljava/lang/Object;
.source "ServerResponose.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private eventResponse:Lai/turbolink/sdk/request/response/EventResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private responseBody:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final responseStatus:I

.field private final tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "message"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput p2, p0, Lai/turbolink/sdk/request/ServerResponse;->responseStatus:I

    .line 20
    .line 21
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerResponse;->tag:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerResponse;->requestId:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p4, p0, Lai/turbolink/sdk/request/ServerResponse;->message:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerResponse;->eventResponse:Lai/turbolink/sdk/request/response/EventResponse;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lai/turbolink/sdk/request/response/EventResponse;

    .line 6
    .line 7
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerResponse;->responseBody:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {v0, v1}, Lai/turbolink/sdk/request/response/EventResponse;-><init>(Lorg/json/JSONObject;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerResponse;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseBody()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerResponse;->responseBody:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResponseStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/request/ServerResponse;->responseStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final setResponseBody(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "post"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerResponse;->responseBody:Lorg/json/JSONObject;

    .line 7
    .line 8
    new-instance v0, Lai/turbolink/sdk/request/response/EventResponse;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lai/turbolink/sdk/request/response/EventResponse;-><init>(Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lai/turbolink/sdk/request/ServerResponse;->eventResponse:Lai/turbolink/sdk/request/response/EventResponse;

    .line 14
    .line 15
    return-void
.end method
