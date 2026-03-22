.class public final Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementDataOrBuilder;"
    }
.end annotation


# instance fields
.field private clickrate_:F

.field private completionrate_:F

.field private impdepth_:I

.field private lastadomain_:Ljava/lang/Object;

.field private lastbundle_:Ljava/lang/Object;

.field private lastclick_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 4
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->impdepth_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$402(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;I)I

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$502(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$602(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clickrate_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$702(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;F)F

    .line 8
    iget-boolean v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastclick_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$802(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;Z)Z

    .line 9
    iget v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->completionrate_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$902(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;F)F

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->impdepth_:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clickrate_:F

    .line 10
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastclick_:Z

    .line 11
    iput v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->completionrate_:F

    return-object p0
.end method

.method public clearClickrate()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clickrate_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCompletionrate()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->completionrate_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public clearImpdepth()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->impdepth_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLastadomain()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomain()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearLastbundle()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearLastclick()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastclick_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClickrate()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clickrate_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCompletionrate()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->completionrate_:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImpdepth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->impdepth_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastadomain()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastadomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastbundle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastbundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getLastclick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastclick_:Z

    .line 2
    .line 3
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_SessionData_SessionPlacementData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$1100()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
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

    .line 31
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 32
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getImpdepth()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getImpdepth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setImpdepth(I)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastbundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$500(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastadomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$600(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getClickrate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getClickrate()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setClickrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastclick()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getLastclick()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setLastclick(Z)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getCompletionrate()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->getCompletionrate()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setCompletionrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 25
    :cond_6
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$1000(Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public setClickrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->clickrate_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCompletionrate(F)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->completionrate_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public setImpdepth(I)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->impdepth_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastadomain(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setLastadomainBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastadomain_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setLastbundle(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setLastbundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastbundle_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setLastclick(Z)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->lastclick_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$SessionData$SessionPlacementData$Builder;

    return-object p1
.end method
