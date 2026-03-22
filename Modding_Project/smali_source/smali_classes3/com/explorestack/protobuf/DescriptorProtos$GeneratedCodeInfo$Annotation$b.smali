.class public final Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/explorestack/protobuf/i0$g;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 8
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/explorestack/protobuf/i0$g;)Lcom/explorestack/protobuf/i0$g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 14
    .line 15
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/explorestack/protobuf/i0$j;->makeImmutable()V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 19
    .line 20
    and-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->d(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Lcom/explorestack/protobuf/i0$g;)Lcom/explorestack/protobuf/i0$g;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v2, v1, 0x2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->f(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v3, v1, 0x4

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->d:I

    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->g(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    .line 48
    .line 49
    .line 50
    or-int/lit8 v2, v2, 0x2

    .line 51
    .line 52
    :cond_2
    and-int/lit8 v1, v1, 0x8

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e:I

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->h(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    .line 59
    .line 60
    .line 61
    or-int/lit8 v2, v2, 0x4

    .line 62
    .line 63
    :cond_3
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/explorestack/protobuf/i0$g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 9
    .line 10
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->d:I

    .line 18
    .line 19
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, -0x10

    .line 22
    .line 23
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 24
    .line 25
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->K()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->L()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
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
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->i:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->m(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->m(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public m(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

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
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/i0$g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/i0$g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 31
    .line 32
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, -0x2

    .line 35
    .line 36
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->j()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->b:Lcom/explorestack/protobuf/i0$g;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->b(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/i0$g;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->y()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 61
    .line 62
    or-int/lit8 v0, v0, 0x2

    .line 63
    .line 64
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 65
    .line 66
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->e(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->c:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->u()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->j()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->p(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->v()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->q()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->q(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->l(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->l(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->l(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->l(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->m(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

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

.method public final o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public p(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 6
    .line 7
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->d:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public q(I)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->a:I

    .line 6
    .line 7
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->e:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$b;

    .line 6
    .line 7
    return-object p1
.end method
