.class public final enum Lcom/startshorts/androidplayer/manager/act/SkipType;
.super Ljava/lang/Enum;
.source "ActRouteManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/act/SkipType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum NATIVE:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

.field public static final enum SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/act/SkipType;
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->NATIVE:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 16
    .line 17
    sget-object v8, Lcom/startshorts/androidplayer/manager/act/SkipType;->COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 2
    .line 3
    const-string v1, "SHORTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 12
    .line 13
    const-string v1, "H5"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 20
    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 22
    .line 23
    const-string v1, "NATIVE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->NATIVE:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 32
    .line 33
    const-string v1, "H5_BROWSER_OFFICIAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 42
    .line 43
    const-string v1, "H5_BROWSER_THIRD"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 52
    .line 53
    const-string v1, "MARKETING_CAMPAIGN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 60
    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 62
    .line 63
    const-string v1, "BRAND_AD"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 70
    .line 71
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 72
    .line 73
    const-string v1, "PROGRAMMATIC_AD"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 80
    .line 81
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 82
    .line 83
    const-string v1, "COMBINATION_ACT"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 91
    .line 92
    invoke-static {}, Lcom/startshorts/androidplayer/manager/act/SkipType;->$values()[Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->$VALUES:[Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->$ENTRIES:Lss/a;

    .line 103
    .line 104
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
    iput p3, p0, Lcom/startshorts/androidplayer/manager/act/SkipType;->type:I

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
            "Lcom/startshorts/androidplayer/manager/act/SkipType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/act/SkipType;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/act/SkipType;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->$VALUES:[Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/act/SkipType;->type:I

    .line 2
    .line 3
    return v0
.end method
