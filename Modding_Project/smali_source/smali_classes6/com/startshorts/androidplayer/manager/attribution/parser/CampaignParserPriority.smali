.class public final enum Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
.super Ljava/lang/Enum;
.source "CampaignParserPriority.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

.field public static final enum UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 16
    .line 17
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    const-string v1, "UPLOAD_CAMPAIGN_INFO_RESULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 13
    .line 14
    const-string v1, "CLIPBOARD"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 23
    .line 24
    const-string v1, "META_INSTALL_REFERRER"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 31
    .line 32
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 33
    .line 34
    const-string v1, "GA_DEEPLINK"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 43
    .line 44
    const-string v1, "FB_DEEPLINK"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->FB_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 51
    .line 52
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 53
    .line 54
    const-string v1, "FB_INSTALL_REFERRER"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->FB_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 61
    .line 62
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 63
    .line 64
    const-string v1, "GP_INSTALL_REFERRER"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 71
    .line 72
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 73
    .line 74
    const-string v1, "AF_CONVERSION_DATA"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 82
    .line 83
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 84
    .line 85
    const-string v1, "AJ_CONVERSION_DATA"

    .line 86
    .line 87
    const/16 v3, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 93
    .line 94
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->$values()[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->$VALUES:[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->$ENTRIES:Lss/a;

    .line 105
    .line 106
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
    iput p3, p0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->value:I

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
            "Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->$VALUES:[Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->value:I

    .line 2
    .line 3
    return v0
.end method
