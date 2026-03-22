.class public final enum Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
.super Ljava/lang/Enum;
.source "PushPriority.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/push/task/PushPriority;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum CUSTOM_PUSH:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

.field public static final enum SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->CUSTOM_PUSH:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 2
    .line 3
    const-string v1, "CUSTOM_PUSH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->CUSTOM_PUSH:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 12
    .line 13
    const-string v1, "CHECK_IN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 20
    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 22
    .line 23
    const-string v1, "SUBS_BONUS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 32
    .line 33
    const-string v1, "START_RECHARGING"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 42
    .line 43
    const-string v1, "MISS_CHECK_IN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 52
    .line 53
    const-string v1, "BONUS_WILL_EXPIRED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 60
    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 62
    .line 63
    const-string v1, "NEW_SHORTS"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 70
    .line 71
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 72
    .line 73
    const-string v1, "RECOMMEND_SHORTS"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 80
    .line 81
    invoke-static {}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->$values()[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->$VALUES:[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->$ENTRIES:Lss/a;

    .line 92
    .line 93
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
    iput p3, p0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/startshorts/androidplayer/manager/push/task/PushPriority;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->$VALUES:[Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->value:I

    .line 2
    .line 3
    return v0
.end method
