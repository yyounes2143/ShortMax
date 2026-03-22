.class public final Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "Session.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Session$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Session$ContextOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dataBuilder_:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation
.end field

.field private lastSessionDuration_:J

.field private retention_:I

.field private sc_:I

.field private sessionduration_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/sdk/Session$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Session$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;-><init>()V

    return-void
.end method

.method private ensureDataIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getDataFieldBuilder()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 34
    .line 35
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Session$Context$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addData(ILio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 20
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addData(ILio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->d(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addData(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 15
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addData(Lio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->e(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public addDataBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->c(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object v0
.end method

.method public addDataBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/p1;->b(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->build()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Session$Context;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Session$Context;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Session$Context;
    .locals 3

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/sdk/Session$Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/sdk/Session$1;)V

    .line 4
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$402(Lio/bidmachine/protobuf/sdk/Session$Context;J)J

    .line 5
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$502(Lio/bidmachine/protobuf/sdk/Session$Context;I)I

    .line 6
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$602(Lio/bidmachine/protobuf/sdk/Session$Context;I)I

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v1, :cond_1

    .line 8
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 10
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 11
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$702(Lio/bidmachine/protobuf/sdk/Session$Context;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$702(Lio/bidmachine/protobuf/sdk/Session$Context;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_0
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$802(Lio/bidmachine/protobuf/sdk/Session$Context;J)J

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 8
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 9
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v2, :cond_0

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 11
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/explorestack/protobuf/p1;->g()V

    .line 13
    :goto_0
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    return-object p0
.end method

.method public clearData()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public clearLastSessionDuration()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public clearRetention()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSc()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSessionduration()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->clone()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Lio/bidmachine/protobuf/sdk/ContextualData;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData;

    .line 19
    .line 20
    return-object p1
.end method

.method public getDataBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->k(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/ContextualData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->p()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getDataOrBuilder(I)Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->q(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/sdk/ContextualDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Session$Context;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastSessionDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRetention()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSc()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSessionduration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/sdk/Session$Context;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1100()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Session$Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
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

    .line 42
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 43
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Session$Context;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 4

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Session$Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSessionduration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getSc()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getRetention()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 17
    :cond_3
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_5

    .line 18
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 21
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 23
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 29
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 30
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->bitField0_:I

    .line 31
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$900()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->getDataFieldBuilder()Lcom/explorestack/protobuf/p1;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$700(Lio/bidmachine/protobuf/sdk/Session$Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 34
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->getLastSessionDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 36
    :cond_9
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Session$Context;->access$1000(Lio/bidmachine/protobuf/sdk/Session$Context;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public removeData(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->v(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setData(ILio/bidmachine/protobuf/sdk/ContextualData$Builder;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->build()Lio/bidmachine/protobuf/sdk/ContextualData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public setData(ILio/bidmachine/protobuf/sdk/ContextualData;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->dataBuilder_:Lcom/explorestack/protobuf/p1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->ensureDataIsMutable()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/p1;->w(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/p1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->lastSessionDuration_:J

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
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method

.method public setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->retention_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sc_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->sessionduration_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    return-object p1
.end method
