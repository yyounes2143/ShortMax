.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

.field private f:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/explorestack/protobuf/n0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 10
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 13
    sget-object p1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 14
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/m0;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/m0;-><init>(Lcom/explorestack/protobuf/n0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x10

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 21
    .line 22
    :cond_0
    return-void
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
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->s()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->o()Lcom/explorestack/protobuf/t1;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->p()Lcom/explorestack/protobuf/p1;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private o()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->n()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

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
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method

.method private p()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method

.method private s()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public A(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final B(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

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
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->d(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 26
    .line 27
    and-int/lit8 v3, v3, 0x2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 38
    .line 39
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 40
    .line 41
    and-int/lit8 v3, v3, -0x3

    .line 42
    .line 43
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 44
    .line 45
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->f(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v3}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->f(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    :goto_1
    and-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->g(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->g(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 79
    .line 80
    .line 81
    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 82
    .line 83
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 84
    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 88
    .line 89
    and-int/lit8 v1, v1, 0x8

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 100
    .line 101
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 102
    .line 103
    and-int/lit8 v1, v1, -0x9

    .line 104
    .line 105
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 106
    .line 107
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->i(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->i(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    :goto_3
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 121
    .line 122
    and-int/lit8 v1, v1, 0x10

    .line 123
    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 133
    .line 134
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 135
    .line 136
    and-int/lit8 v1, v1, -0x11

    .line 137
    .line 138
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 139
    .line 140
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 141
    .line 142
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->n(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 149
    .line 150
    .line 151
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 9
    .line 10
    and-int/lit8 v0, v0, -0x2

    .line 11
    .line 12
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 23
    .line 24
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x3

    .line 27
    .line 28
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->b()Lcom/explorestack/protobuf/t1;

    .line 43
    .line 44
    .line 45
    :goto_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 46
    .line 47
    and-int/lit8 v0, v0, -0x5

    .line 48
    .line 49
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 60
    .line 61
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 62
    .line 63
    and-int/lit8 v0, v0, -0x9

    .line 64
    .line 65
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 69
    .line 70
    .line 71
    :goto_2
    sget-object v0, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 74
    .line 75
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 76
    .line 77
    and-int/lit8 v0, v0, -0x11

    .line 78
    .line 79
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 80
    .line 81
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->m()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->m()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->W()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->X()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->r()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->q(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->t()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->n()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    return v0
.end method

.method public m()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->w(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->u(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->w(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->u(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->u(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->u(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->y(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->y(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->y(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public n()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

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
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 19
    .line 20
    return-object v0
.end method

.method public q(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 19
    .line 20
    return-object p1
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

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

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->z(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->z(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->A(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->A(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->B(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->B(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public t()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

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

.method public u(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
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
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->i:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->v(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->v(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public v(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_6

    .line 43
    .line 44
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 57
    .line 58
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 59
    .line 60
    and-int/lit8 v0, v0, -0x3

    .line 61
    .line 62
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->l()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->c:Ljava/util/List;

    .line 111
    .line 112
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 113
    .line 114
    and-int/lit8 v0, v0, -0x3

    .line 115
    .line 116
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 117
    .line 118
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->s()Lcom/explorestack/protobuf/p1;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move-object v0, v1

    .line 128
    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->C()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->s()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->x(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 151
    .line 152
    .line 153
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 154
    .line 155
    if-nez v0, :cond_9

    .line 156
    .line 157
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_c

    .line 166
    .line 167
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 180
    .line 181
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 182
    .line 183
    and-int/lit8 v0, v0, -0x9

    .line 184
    .line 185
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->k()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    .line 199
    .line 200
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_c

    .line 213
    .line 214
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 225
    .line 226
    .line 227
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->g:Ljava/util/List;

    .line 234
    .line 235
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 236
    .line 237
    and-int/lit8 v0, v0, -0x9

    .line 238
    .line 239
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 240
    .line 241
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 242
    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->p()Lcom/explorestack/protobuf/p1;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    :cond_a
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->h:Lcom/explorestack/protobuf/p1;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 259
    .line 260
    .line 261
    :cond_c
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->j(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/n0;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_e

    .line 270
    .line 271
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 272
    .line 273
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_d

    .line 278
    .line 279
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->j(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/n0;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 284
    .line 285
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 286
    .line 287
    and-int/lit8 v0, v0, -0x11

    .line 288
    .line 289
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_d
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->j()V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->i:Lcom/explorestack/protobuf/n0;

    .line 296
    .line 297
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;->j(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/n0;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    .line 303
    .line 304
    :goto_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 305
    .line 306
    .line 307
    :cond_e
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 308
    .line 309
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->y(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 313
    .line 314
    .line 315
    return-object p0
.end method

.method public w(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->v(Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

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

.method public x(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->D(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

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
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;->a:I

    .line 52
    .line 53
    return-object p0
.end method

.method public final y(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public z(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method
