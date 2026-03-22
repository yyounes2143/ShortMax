.class public final Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

.field private d:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private l()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->k()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->l()Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->d(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 42
    .line 43
    .line 44
    :goto_1
    or-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    :cond_2
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->f(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;I)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 9
    .line 10
    and-int/lit8 v0, v0, -0x2

    .line 11
    .line 12
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->b()Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 26
    .line 27
    and-int/lit8 v0, v0, -0x3

    .line 28
    .line 29
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 30
    .line 31
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->j()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->j()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->U()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->V()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->k()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->isInitialized()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public j()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->g()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->k()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

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
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 19
    .line 20
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->p(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->n(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->p(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->n(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->n(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->n(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->r(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->r(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->r(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->f:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    move-object v0, p2

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public o(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->g()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->hasName()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->b(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->j()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->i()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->q(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->r(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public p(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->o(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public q(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->d:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->k()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->u(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->c:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x2

    .line 50
    .line 51
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->a:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final r(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->u(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;->u(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final u(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method
