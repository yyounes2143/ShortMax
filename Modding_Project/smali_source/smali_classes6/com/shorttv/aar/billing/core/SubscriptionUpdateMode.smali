.class public final enum Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;
.super Ljava/lang/Enum;
.source "SubscriptionUpdateMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum CHARGE_FULL_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum CHARGE_PRORATED_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum DEFERRED:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum NULL:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum UNKNOWN_REPLACEMENT_MODE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum WITHOUT_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

.field public static final enum WITH_TIME_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;


# direct methods
.method private static final synthetic $values()[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;
    .locals 7

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->UNKNOWN_REPLACEMENT_MODE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 2
    .line 3
    sget-object v1, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->WITH_TIME_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 4
    .line 5
    sget-object v2, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->CHARGE_PRORATED_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 6
    .line 7
    sget-object v3, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->WITHOUT_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 8
    .line 9
    sget-object v4, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->CHARGE_FULL_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 10
    .line 11
    sget-object v5, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->DEFERRED:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 12
    .line 13
    sget-object v6, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->NULL:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_REPLACEMENT_MODE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->UNKNOWN_REPLACEMENT_MODE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 10
    .line 11
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 12
    .line 13
    const-string v1, "WITH_TIME_PRORATION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->WITH_TIME_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 20
    .line 21
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 22
    .line 23
    const-string v1, "CHARGE_PRORATED_PRICE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->CHARGE_PRORATED_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 30
    .line 31
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 32
    .line 33
    const-string v1, "WITHOUT_PRORATION"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->WITHOUT_PRORATION:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 40
    .line 41
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 42
    .line 43
    const-string v1, "CHARGE_FULL_PRICE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->CHARGE_FULL_PRICE:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 50
    .line 51
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 52
    .line 53
    const-string v1, "DEFERRED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->DEFERRED:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 60
    .line 61
    new-instance v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 62
    .line 63
    const-string v1, "NULL"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->NULL:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 70
    .line 71
    invoke-static {}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->$values()[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->$VALUES:[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->$ENTRIES:Lss/a;

    .line 82
    .line 83
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
            "Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;
    .locals 1

    .line 1
    const-class v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->$VALUES:[Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final covertToGoogleMode()I
    .locals 2

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode$a;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x6

    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    const/4 v0, 0x5

    .line 23
    goto :goto_0

    .line 24
    :pswitch_3
    const/4 v0, 0x3

    .line 25
    goto :goto_0

    .line 26
    :pswitch_4
    const/4 v0, 0x2

    .line 27
    goto :goto_0

    .line 28
    :pswitch_5
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :pswitch_6
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
