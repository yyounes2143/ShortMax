.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "PluginProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

.field private f:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;",
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

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->d:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->d:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;-><init>()V

    return-void
.end method

.method private l()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;",
            "Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->access$3300()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->l()Lcom/explorestack/protobuf/t1;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

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
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->d(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v3, v1, 0x2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    or-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->f(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v3, v1, 0x4

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    or-int/lit8 v2, v2, 0x4

    .line 37
    .line 38
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->d:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->h(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v1, v1, 0x8

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->i(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->i(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 64
    .line 65
    .line 66
    :goto_1
    or-int/lit8 v2, v2, 0x8

    .line 67
    .line 68
    :cond_4
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->j(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;I)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->d:Ljava/lang/Object;

    .line 13
    .line 14
    and-int/lit8 v0, v1, -0x8

    .line 15
    .line 16
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->b()Lcom/explorestack/protobuf/t1;

    .line 27
    .line 28
    .line 29
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 30
    .line 31
    and-int/lit8 v0, v0, -0x9

    .line 32
    .line 33
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 34
    .line 35
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->j()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->j()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->c()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->d()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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

.method public j()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->n()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->g()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

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
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
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
    sget-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->h:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    check-cast p2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

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

.method public o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->n()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasName()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->b(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->u()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 40
    .line 41
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->e(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->c:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->hasContent()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 57
    .line 58
    or-int/lit8 v0, v0, 0x4

    .line 59
    .line 60
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 61
    .line 62
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->d:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->t()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->r()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->p(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;->k(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;)Lcom/explorestack/protobuf/j2;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public p(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->g()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;->j(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;->n(Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$GeneratedCodeInfo;

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
    iget p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x8

    .line 50
    .line 51
    iput p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->a:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->s(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;

    .line 6
    .line 7
    return-object p1
.end method
