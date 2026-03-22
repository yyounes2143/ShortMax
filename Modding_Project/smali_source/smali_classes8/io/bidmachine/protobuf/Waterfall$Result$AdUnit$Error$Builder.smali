.class public final Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "Waterfall.java"

# interfaces
.implements Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$ErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private code_:I

.field private description_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/Waterfall$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/Waterfall$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5100()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/Waterfall$1;)V

    .line 4
    iget v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->code_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5302(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;I)I

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5402(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clear()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clear()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clear()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clear()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->code_:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCode()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->code_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearDescription()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDescription()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->clone()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->code_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

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

.method public getDescriptionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

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

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5600()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
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

    .line 22
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 23
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDefaultInstance()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setCode(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5400(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 16
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5500(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public setCode(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->code_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->access$5700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->description_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    return-object p1
.end method
