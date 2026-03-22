.class public final Lio/bidmachine/protobuf/sdk/Device$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "Device.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/sdk/Device$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private access_:Ljava/lang/Object;

.field private airplane_:Z

.field private apilevel_:I

.field private atts_:I

.field private audioContextBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

.field private batterylevel_:F

.field private batterysaver_:Z

.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private connectionBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

.field private cpuname_:Ljava/lang/Object;

.field private cpuvendor_:Ljava/lang/Object;

.field private darkmode_:Z

.field private devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private freemem_:J

.field private gpuname_:Ljava/lang/Object;

.field private gpuvendor_:Ljava/lang/Object;

.field private headset_:Z

.field private headsetname_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/n0;

.field private jailbreak_:Z

.field private lastbootup_:J

.field private ringmute_:Z

.field private screenbright_:F

.field private time_:J

.field private timezone_:Ljava/lang/Object;

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 17
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 20
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Device$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>()V

    return-void
.end method

.method private ensureInputlanguageIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

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
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/m0;-><init>(Lcom/explorestack/protobuf/n0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getAudioContextFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private getConnectionFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addAllInputlanguage(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/Device$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public addInputlanguage(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public addInputlanguageBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3900(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->build()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Device;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Device;
    .locals 3

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/sdk/Device$1;)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$402(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 8
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 9
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$602(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;

    .line 10
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$702(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 11
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$802(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 12
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$902(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 13
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1002(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 14
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1102(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 15
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1202(Lio/bidmachine/protobuf/sdk/Device;F)F

    .line 16
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1302(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 17
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1402(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 18
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1502(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 19
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1602(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 20
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1702(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$1802(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 22
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$1902(Lio/bidmachine/protobuf/sdk/Device;F)F

    .line 23
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2002(Lio/bidmachine/protobuf/sdk/Device;Z)Z

    .line 24
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$2102(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 25
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2202(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2302(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$2402(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 28
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2502(Lio/bidmachine/protobuf/sdk/Device;I)I

    .line 29
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2702(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2802(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$2902(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3002(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/protobuf/sdk/Device;->access$3102(Lio/bidmachine/protobuf/sdk/Device;J)J

    .line 35
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3202(Lio/bidmachine/protobuf/sdk/Device;I)I

    .line 36
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3302(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3302(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 39
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_2

    .line 40
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3402(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Device;->access$3402(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clear()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 5

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 9
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 11
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    const/4 v3, 0x0

    .line 12
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 13
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 14
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    const/4 v4, 0x0

    .line 15
    iput v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 16
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 17
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 18
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 19
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 21
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 22
    iput v4, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 23
    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 24
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    .line 25
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 27
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    .line 28
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 29
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 34
    iput-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 35
    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 36
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto :goto_0

    .line 38
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 39
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 40
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_1

    .line 41
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto :goto_1

    .line 42
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 43
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    :goto_1
    return-object p0
.end method

.method public clearAccess()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearAirplane()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearApilevel()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAtts()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAudioContext()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearBatterylevel()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBatterysaver()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearCharging()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearConnection()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearCpuname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearCpuvendor()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearDarkmode()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearDevicename()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearDiskspace()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearDnd()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public clearFreemem()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearGpuname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearGpuvendor()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearHeadset()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearHeadsetname()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearInputlanguage()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearJailbreak()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLastbootup()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public clearRingmute()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearScreenbright()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTime()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearTimezone()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearTotaldisk()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearTotalmem()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->clone()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

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

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

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

.method public getAirplane()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getApilevel()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAtts()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAudioContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getAudioContextFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAudioContextOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getBatterylevel()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 2
    .line 3
    return v0
.end method

.method public getBatterysaver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

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

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

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

.method public getCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 19
    .line 20
    return-object v0
.end method

.method public getConnectionBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getConnectionFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getConnectionOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getCpuname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

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

.method public getCpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

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

.method public getCpuvendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

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

.method public getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

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

.method public getDarkmode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

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

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

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

.method public getDiskspace()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFreemem()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGpuname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

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

.method public getGpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

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

.method public getGpuvendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

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

.method public getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

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

.method public getHeadset()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

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

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

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

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

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

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

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

.method public getInputlanguage(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public getInputlanguageCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public getInputlanguageList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLastbootup()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRingmute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getScreenbright()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 2
    .line 3
    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

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

.method public getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

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

.method public getTotaldisk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalmem()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasAudioContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

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

.method public hasConnection()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

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

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/sdk/Device;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/sdk/Device$Builder;

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

.method public mergeAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

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

.method public mergeConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Device;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->access$3600()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
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

    .line 94
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 95
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 6

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$400(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 14
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$600(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$600(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/n0;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 20
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bitField0_:I

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 22
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$600(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/n0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 24
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 26
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 28
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRingmute(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 30
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setCharging(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 32
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setHeadset(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 34
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 36
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setBatterysaver(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 38
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 40
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAirplane(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 42
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setDnd(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 44
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 45
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$1700(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 47
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10

    .line 48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 49
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    .line 50
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 51
    :cond_11
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 52
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 53
    :cond_12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 54
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 55
    :cond_13
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2200(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 58
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 59
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2300(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 61
    :cond_15
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setTotalmem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 63
    :cond_16
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v0

    if-eqz v0, :cond_17

    .line 64
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setAtts(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 65
    :cond_17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 66
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 68
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 69
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2700(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 71
    :cond_19
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 72
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2800(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 74
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 75
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$2900(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 77
    :cond_1b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 78
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3000(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 80
    :cond_1c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 81
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 82
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 84
    :cond_1e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 86
    :cond_1f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 87
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 88
    :cond_20
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3500(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setAccess(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAccessBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4100(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->access_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setAirplane(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->airplane_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setApilevel(I)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->apilevel_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAtts(I)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->atts_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setAudioContext(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContextBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setBatterylevel(F)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterylevel_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBatterysaver(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->batterysaver_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3800(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->bmIfv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCharging(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->charging_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setConnection(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connectionBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    return-object p0
.end method

.method public setCpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setCpunameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4300(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setCpuvendorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4400(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->cpuvendor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDarkmode(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->darkmode_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDevicename(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setDevicenameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4000(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->devicename_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDiskspace(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->diskspace_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDnd(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->dnd_:Z

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setFreemem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->freemem_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGpuname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setGpunameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4500(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setGpuvendor(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setGpuvendorBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4600(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->gpuvendor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setHeadset(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headset_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHeadsetname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setHeadsetnameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4200(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->headsetname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$3700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ifv_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setInputlanguage(ILjava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->ensureInputlanguageIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->inputlanguage_:Lcom/explorestack/protobuf/n0;

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

.method public setJailbreak(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->jailbreak_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLastbootup(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->lastbootup_:J

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
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method

.method public setRingmute(Z)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->ringmute_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setScreenbright(F)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->screenbright_:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTime(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->time_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTimezoneBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Device;->access$4700(Lcom/explorestack/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->timezone_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setTotaldisk(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totaldisk_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTotalmem(J)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device$Builder;->totalmem_:J

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Device$Builder;

    return-object p1
.end method
