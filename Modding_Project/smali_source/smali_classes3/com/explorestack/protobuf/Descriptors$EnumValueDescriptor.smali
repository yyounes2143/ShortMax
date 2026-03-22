.class public final Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 4
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    .line 5
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 6
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 7
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;)V

    .line 10
    invoke-static {p2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->access$1500(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Descriptors$DescriptorPool;->addEnumValueByNumber(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;I)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->r()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->t(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->u(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p3

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    .line 15
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 17
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;Lcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->j()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->k()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
