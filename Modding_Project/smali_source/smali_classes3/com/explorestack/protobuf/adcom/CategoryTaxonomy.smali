.class public final enum Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
.super Ljava/lang/Enum;
.source "CategoryTaxonomy.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final enum CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0_VALUE:I = 0x3

.field public static final enum CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_CONTENT_1_0_VALUE:I = 0x1

.field public static final enum CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_IAB_CONTENT_2_0_VALUE:I = 0x2

.field public static final enum CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field public static final CATEGORY_TAXONOMY_INVALID_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 2
    .line 3
    const-string v1, "CATEGORY_TAXONOMY_INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 10
    .line 11
    new-instance v1, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 12
    .line 13
    const-string v2, "CATEGORY_TAXONOMY_IAB_CONTENT_1_0"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 20
    .line 21
    new-instance v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 22
    .line 23
    const-string v3, "CATEGORY_TAXONOMY_IAB_CONTENT_2_0"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 30
    .line 31
    new-instance v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 32
    .line 33
    const-string v4, "CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 40
    .line 41
    new-instance v4, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, -0x1

    .line 45
    const-string v7, "UNRECOGNIZED"

    .line 46
    .line 47
    invoke-direct {v4, v7, v5, v6}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 51
    .line 52
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->$VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 57
    .line 58
    new-instance v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy$a;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy$a;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 64
    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->values()[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 70
    .line 71
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
    iput p3, p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_2_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_IAB_CONTENT_1_0:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

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
            "Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->forNumber(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->$VALUES:[Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
