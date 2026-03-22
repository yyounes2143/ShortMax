.class public final enum Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
.super Ljava/lang/Enum;
.source "TimeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/utils/TimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/utils/TimeUtil$Template;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_AR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_CHINESE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_DE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_EN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_FR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_IN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_IT:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_MS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_RU:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum FULL_TIME_VI:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum MONTH_DAY_YEAR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum MONTH_DAY_YEAR_HH_MM_SS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

.field public static final enum YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;


# instance fields
.field private final template:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_CHINESE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_AR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_EN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_VI:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_DE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_FR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_MS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 16
    .line 17
    sget-object v8, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_RU:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 18
    .line 19
    sget-object v9, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IT:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 20
    .line 21
    sget-object v10, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR_HH_MM_SS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 22
    .line 23
    sget-object v11, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 24
    .line 25
    sget-object v12, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 26
    .line 27
    filled-new-array/range {v0 .. v12}, [Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "yyyy/MM/dd HH:mm:ss"

    .line 5
    .line 6
    const-string v3, "FULL_TIME_CHINESE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_CHINESE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 14
    .line 15
    const-string v1, "FULL_TIME_AR"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "dd/MM/yyyy HH:mm:ss"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_AR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 24
    .line 25
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "MM/d/yyyy hh:mm a"

    .line 29
    .line 30
    const-string v4, "FULL_TIME_EN"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_EN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 38
    .line 39
    const-string v1, "FULL_TIME_IN"

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    const-string v4, "dd/MM/yyyy HH:mm"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 48
    .line 49
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 50
    .line 51
    const-string v1, "FULL_TIME_VI"

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v0, v1, v2, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_VI:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 58
    .line 59
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    const-string v2, "YYYY/MM/dd HH:MM:SS"

    .line 63
    .line 64
    const-string v4, "FULL_TIME_DE"

    .line 65
    .line 66
    invoke-direct {v0, v4, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_DE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 70
    .line 71
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 72
    .line 73
    const-string v1, "FULL_TIME_FR"

    .line 74
    .line 75
    const/4 v2, 0x6

    .line 76
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_FR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 80
    .line 81
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 82
    .line 83
    const-string v1, "FULL_TIME_MS"

    .line 84
    .line 85
    const/4 v2, 0x7

    .line 86
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_MS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 90
    .line 91
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    const-string v2, "dd.MM.yyyy HH:mm:ss"

    .line 96
    .line 97
    const-string v4, "FULL_TIME_RU"

    .line 98
    .line 99
    invoke-direct {v0, v4, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_RU:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 103
    .line 104
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 105
    .line 106
    const-string v1, "FULL_TIME_IT"

    .line 107
    .line 108
    const/16 v2, 0x9

    .line 109
    .line 110
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IT:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 114
    .line 115
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 116
    .line 117
    const/16 v1, 0xa

    .line 118
    .line 119
    const-string v2, "MM/dd/yyyy HH:mm:ss"

    .line 120
    .line 121
    const-string v3, "MONTH_DAY_YEAR_HH_MM_SS"

    .line 122
    .line 123
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR_HH_MM_SS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 127
    .line 128
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 129
    .line 130
    const/16 v1, 0xb

    .line 131
    .line 132
    const-string v2, "MM/dd/yyyy"

    .line 133
    .line 134
    const-string v3, "MONTH_DAY_YEAR"

    .line 135
    .line 136
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 140
    .line 141
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 142
    .line 143
    const/16 v1, 0xc

    .line 144
    .line 145
    const-string v2, "yyyyMMdd"

    .line 146
    .line 147
    const-string v3, "YEAR_MONTH_DAY"

    .line 148
    .line 149
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 153
    .line 154
    invoke-static {}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->$values()[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->$VALUES:[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->$ENTRIES:Lss/a;

    .line 165
    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->template:Ljava/lang/String;

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
            "Lcom/startshorts/androidplayer/utils/TimeUtil$Template;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->$VALUES:[Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->template:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
