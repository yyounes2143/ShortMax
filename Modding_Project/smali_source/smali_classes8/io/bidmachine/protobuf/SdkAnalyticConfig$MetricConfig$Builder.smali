.class public final Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "SdkAnalyticConfig.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dimensions_:Lcom/explorestack/protobuf/n0;

.field private metrics_:Lcom/explorestack/protobuf/n0;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 6
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 11
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 12
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;-><init>()V

    return-void
.end method

.method private ensureDimensionsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/m0;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/m0;-><init>(Lcom/explorestack/protobuf/n0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/m0;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/m0;-><init>(Lcom/explorestack/protobuf/n0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addAllDimensions(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addAllMetrics(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/explorestack/protobuf/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addDimensions(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public addDimensionsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->b(Lcom/explorestack/protobuf/ByteString;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public addMetrics(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public addMetricsBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->b(Lcom/explorestack/protobuf/ByteString;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .locals 2

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/SdkAnalyticConfig$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$402(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 7
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 8
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$502(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;

    .line 9
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 11
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 12
    :cond_1
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$602(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 8
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    and-int/lit8 v0, v1, -0x4

    .line 10
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDimensions()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public clearMetrics()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x3

    .line 8
    .line 9
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearName()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDimensions(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getDimensionsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getDimensionsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDimensionsList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDimensionsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getDimensionsList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getMetricsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMetricsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMetricsList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetricsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->getMetricsList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

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

.method public getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

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

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$800()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
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

    .line 34
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 35
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$400(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 17
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 19
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$500(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 21
    :cond_3
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 24
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->bitField0_:I

    goto :goto_1

    .line 25
    :cond_4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 26
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$600(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/n0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 28
    :cond_5
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$700(Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public setDimensions(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureDimensionsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->dimensions_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public setMetrics(ILjava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->ensureMetricsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->metrics_:Lcom/explorestack/protobuf/n0;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->name_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticConfig$MetricConfig$Builder;

    return-object p1
.end method
