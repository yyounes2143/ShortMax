.class public final Lio/bidmachine/protobuf/ResponsePayload$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "ResponsePayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/ResponsePayload$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/c2;",
            ">;"
        }
    .end annotation
.end field

.field private cacheTime_:Lcom/explorestack/protobuf/Timestamp;

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/d;",
            ">;"
        }
    .end annotation
.end field

.field private requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

.field private responseCacheBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>()V

    return-void
.end method

.method private getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/c2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 17
    .line 18
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 44
    .line 45
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 3

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 7
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    .line 10
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    :goto_2
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$702(Lio/bidmachine/protobuf/ResponsePayload;I)I

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 9
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 10
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 13
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    :goto_1
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 15
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCacheTime()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public clearPayloadOneof()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public clearRequestItemSpec()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearResponseCache()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 9
    .line 10
    if-ne v0, v3, :cond_2

    .line 11
    .line 12
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v4, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 21
    .line 22
    if-ne v4, v3, :cond_1

    .line 23
    .line 24
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 25
    .line 26
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->b()Lcom/explorestack/protobuf/t1;

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearResponseCacheUrl()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTime()Lcom/explorestack/protobuf/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    .line 19
    .line 20
    return-object v0
.end method

.method public getCacheTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCacheTimeOrBuilder()Lcom/explorestack/protobuf/c2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/c2;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRequestItemSpecBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRequestItemSpecOrBuilder()Lcom/explorestack/protobuf/adcom/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/adcom/d;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 21
    .line 22
    if-ne v2, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getResponseCacheBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->d()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 10
    .line 11
    return-object v0
.end method

.method public getResponseCacheOrBuilder()Lcom/explorestack/protobuf/openrtb/a;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/explorestack/protobuf/t1;->f()Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/explorestack/protobuf/openrtb/a;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getResponseCacheUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    return-object v0
.end method

.method public getResponseCacheUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
    return-object v0
.end method

.method public hasCacheTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasRequestItemSpec()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasResponseCache()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hasResponseCacheUrl()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/ResponsePayload;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/ResponsePayload;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$900()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 27
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 15
    :cond_2
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    goto :goto_0

    .line 17
    :cond_4
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 18
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$600(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 20
    :goto_0
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$800(Lio/bidmachine/protobuf/ResponsePayload;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 44
    .line 45
    if-ne v2, v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 53
    .line 54
    .line 55
    :goto_1
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 56
    .line 57
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCacheUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setResponseCacheUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method
