.class public final enum Lcom/adjust/sdk/BackoffStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adjust/sdk/BackoffStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adjust/sdk/BackoffStrategy;

.field public static final enum LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

.field public static final enum NO_WAIT:Lcom/adjust/sdk/BackoffStrategy;

.field public static final enum SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

.field public static final enum TEST_WAIT:Lcom/adjust/sdk/BackoffStrategy;


# instance fields
.field maxRange:D

.field maxWait:J

.field milliSecondMultiplier:J

.field minRange:D

.field minRetries:I


# direct methods
.method private static synthetic $values()[Lcom/adjust/sdk/BackoffStrategy;
    .locals 4

    .line 1
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 2
    .line 3
    sget-object v1, Lcom/adjust/sdk/BackoffStrategy;->SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 4
    .line 5
    sget-object v2, Lcom/adjust/sdk/BackoffStrategy;->TEST_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 6
    .line 7
    sget-object v3, Lcom/adjust/sdk/BackoffStrategy;->NO_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/adjust/sdk/BackoffStrategy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v12, Lcom/adjust/sdk/BackoffStrategy;

    .line 2
    .line 3
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 4
    .line 5
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    const-string v1, "LONG_WAIT"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const-wide/32 v4, 0x1d4c0

    .line 12
    .line 13
    .line 14
    const-wide/32 v6, 0x5265c00

    .line 15
    .line 16
    .line 17
    move-object v0, v12

    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/adjust/sdk/BackoffStrategy;-><init>(Ljava/lang/String;IIJJDD)V

    .line 19
    .line 20
    .line 21
    sput-object v12, Lcom/adjust/sdk/BackoffStrategy;->LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 22
    .line 23
    new-instance v0, Lcom/adjust/sdk/BackoffStrategy;

    .line 24
    .line 25
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    const-string v14, "SHORT_WAIT"

    .line 30
    .line 31
    const/4 v15, 0x1

    .line 32
    const/16 v16, 0x1

    .line 33
    .line 34
    const-wide/16 v17, 0xc8

    .line 35
    .line 36
    const-wide/32 v19, 0x36ee80

    .line 37
    .line 38
    .line 39
    move-object v13, v0

    .line 40
    invoke-direct/range {v13 .. v24}, Lcom/adjust/sdk/BackoffStrategy;-><init>(Ljava/lang/String;IIJJDD)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/adjust/sdk/BackoffStrategy;->SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 44
    .line 45
    new-instance v0, Lcom/adjust/sdk/BackoffStrategy;

    .line 46
    .line 47
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 48
    .line 49
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 50
    .line 51
    const-string v2, "TEST_WAIT"

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    const/4 v4, 0x1

    .line 55
    const-wide/16 v5, 0xc8

    .line 56
    .line 57
    const-wide/16 v7, 0x3e8

    .line 58
    .line 59
    move-object v1, v0

    .line 60
    invoke-direct/range {v1 .. v12}, Lcom/adjust/sdk/BackoffStrategy;-><init>(Ljava/lang/String;IIJJDD)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/adjust/sdk/BackoffStrategy;->TEST_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 64
    .line 65
    new-instance v0, Lcom/adjust/sdk/BackoffStrategy;

    .line 66
    .line 67
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 68
    .line 69
    const-string v14, "NO_WAIT"

    .line 70
    .line 71
    const/4 v15, 0x3

    .line 72
    const/16 v16, 0x64

    .line 73
    .line 74
    const-wide/16 v17, 0x1

    .line 75
    .line 76
    const-wide/16 v19, 0x3e8

    .line 77
    .line 78
    move-object v13, v0

    .line 79
    invoke-direct/range {v13 .. v24}, Lcom/adjust/sdk/BackoffStrategy;-><init>(Ljava/lang/String;IIJJDD)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/adjust/sdk/BackoffStrategy;->NO_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 83
    .line 84
    invoke-static {}, Lcom/adjust/sdk/BackoffStrategy;->$values()[Lcom/adjust/sdk/BackoffStrategy;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lcom/adjust/sdk/BackoffStrategy;->$VALUES:[Lcom/adjust/sdk/BackoffStrategy;

    .line 89
    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJJDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJDD)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    .line 5
    .line 6
    iput-wide p4, p0, Lcom/adjust/sdk/BackoffStrategy;->milliSecondMultiplier:J

    .line 7
    .line 8
    iput-wide p6, p0, Lcom/adjust/sdk/BackoffStrategy;->maxWait:J

    .line 9
    .line 10
    iput-wide p8, p0, Lcom/adjust/sdk/BackoffStrategy;->minRange:D

    .line 11
    .line 12
    iput-wide p10, p0, Lcom/adjust/sdk/BackoffStrategy;->maxRange:D

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .line 1
    const-class v0, Lcom/adjust/sdk/BackoffStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/adjust/sdk/BackoffStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->$VALUES:[Lcom/adjust/sdk/BackoffStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/adjust/sdk/BackoffStrategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/adjust/sdk/BackoffStrategy;

    .line 8
    .line 9
    return-object v0
.end method
