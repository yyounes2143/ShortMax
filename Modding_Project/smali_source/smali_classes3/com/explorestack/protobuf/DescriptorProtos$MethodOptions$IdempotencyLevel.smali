.class public final enum Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdempotencyLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final enum IDEMPOTENCY_UNKNOWN:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final IDEMPOTENCY_UNKNOWN_VALUE:I = 0x0

.field public static final enum IDEMPOTENT:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final IDEMPOTENT_VALUE:I = 0x2

.field public static final enum NO_SIDE_EFFECTS:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field public static final NO_SIDE_EFFECTS_VALUE:I = 0x1

.field private static final VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 2
    .line 3
    const-string v1, "IDEMPOTENCY_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 10
    .line 11
    new-instance v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 12
    .line 13
    const-string v2, "NO_SIDE_EFFECTS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->NO_SIDE_EFFECTS:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 20
    .line 21
    new-instance v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 22
    .line 23
    const-string v3, "IDEMPOTENT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENT:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 36
    .line 37
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel$a;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel$a;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 43
    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->values()[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENT:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->NO_SIDE_EFFECTS:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->IDEMPOTENCY_UNKNOWN:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->$VALUES:[Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 18
    .line 19
    return-object v0
.end method
