.class public final enum Lcom/shorttv/aar/billing/bean/ProductDataType;
.super Ljava/lang/Enum;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shorttv/aar/billing/bean/ProductDataType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/shorttv/aar/billing/bean/ProductDataType;

.field public static final enum GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

.field public static final enum GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

.field public static final enum HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

.field public static final enum XIAOMI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;


# direct methods
.method private static final synthetic $values()[Lcom/shorttv/aar/billing/bean/ProductDataType;
    .locals 4

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 2
    .line 3
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 4
    .line 5
    sget-object v2, Lcom/shorttv/aar/billing/bean/ProductDataType;->XIAOMI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 6
    .line 7
    sget-object v3, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 2
    .line 3
    const-string v1, "GOOGLE_PRODUCT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/bean/ProductDataType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 10
    .line 11
    new-instance v0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 12
    .line 13
    const-string v1, "GOOGLE_SKU"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/bean/ProductDataType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 20
    .line 21
    new-instance v0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 22
    .line 23
    const-string v1, "XIAOMI_SKU"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/bean/ProductDataType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->XIAOMI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 30
    .line 31
    new-instance v0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 32
    .line 33
    const-string v1, "HUAWEI_SKU"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/bean/ProductDataType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 40
    .line 41
    invoke-static {}, Lcom/shorttv/aar/billing/bean/ProductDataType;->$values()[Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->$VALUES:[Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->$ENTRIES:Lss/a;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/shorttv/aar/billing/bean/ProductDataType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shorttv/aar/billing/bean/ProductDataType;
    .locals 1

    .line 1
    const-class v0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/shorttv/aar/billing/bean/ProductDataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->$VALUES:[Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 8
    .line 9
    return-object v0
.end method
