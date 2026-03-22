.class public final Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "Reader.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/sdk/Reader$RuleOrBuilder;"
    }
.end annotation


# instance fields
.field private generalRuleBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ruleOneofCase_:I

.field private ruleOneof_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 5
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 8
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Reader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getGeneralRuleFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 17
    .line 18
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 44
    .line 45
    return-object v0
.end method

.method private getIosLogRuleFieldBuilder()Lcom/explorestack/protobuf/t1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 17
    .line 18
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

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
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 44
    .line 45
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3600()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->isInitialized()Z

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .locals 3

    .line 3
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/sdk/Reader$1;)V

    .line 4
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    :goto_0
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3802(Lio/bidmachine/protobuf/sdk/Reader$Rule;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$3902(Lio/bidmachine/protobuf/sdk/Reader$Rule;I)I

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public clearGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 9
    .line 10
    if-ne v0, v3, :cond_2

    .line 11
    .line 12
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 21
    .line 22
    if-ne v4, v3, :cond_1

    .line 23
    .line 24
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 25
    .line 26
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

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

.method public clearIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 9
    .line 10
    if-ne v0, v3, :cond_2

    .line 11
    .line 12
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 13
    .line 14
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v4, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 21
    .line 22
    if-ne v4, v3, :cond_1

    .line 23
    .line 24
    iput v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 25
    .line 26
    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

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

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public clearRuleOneof()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->clone()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Reader$Rule;
    .locals 1

    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getGeneralRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getGeneralRuleFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 10
    .line 11
    return-object v0
.end method

.method public getGeneralRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRuleOrBuilder;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getIosLogRuleBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->getIosLogRuleFieldBuilder()Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 10
    .line 11
    return-object v0
.end method

.method public getIosLogRuleOrBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

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
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRuleOrBuilder;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasGeneralRule()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public hasIosLogRule()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

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
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4100()Lcom/explorestack/protobuf/j1;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/Reader$Rule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
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

    .line 20
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 21
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$2;->$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getRuleOneofCase()Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getIosLogRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 14
    :goto_0
    invoke-static {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->access$4000(Lio/bidmachine/protobuf/sdk/Reader$Rule;)Lcom/explorestack/protobuf/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public mergeGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

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
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

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
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 53
    .line 54
    .line 55
    :goto_1
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 56
    .line 57
    return-object p0
.end method

.method public mergeIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;->newBuilder(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->buildPartial()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

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
    iget v2, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

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
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 53
    .line 54
    .line 55
    :goto_1
    iput v1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    .line 56
    .line 57
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public setGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->generalRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public setIosLogRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$IOSLogRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->iosLogRuleBuilder_:Lcom/explorestack/protobuf/t1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneof_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->i(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->ruleOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/j2;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object p1
.end method
