.class public final enum Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
.super Ljava/lang/Enum;
.source "ImmersionJobsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JobType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum CHECK_AD_CONTINUE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum CHECK_ENABLE_PLAY_BY_DIALOG_COUNT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum CHECK_UNLOCK_EPISODE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum DOWNGRADE_RESOLUTION_WHEN_CATON:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum HIDE_COLLECT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum SHOW_EPISODE_LIST_DIALOG:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum SUBS_PRO_RENEW:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

.field public static final enum SWITCH_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SHOW_EPISODE_LIST_DIALOG:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_ENABLE_PLAY_BY_DIALOG_COUNT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SWITCH_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->HIDE_COLLECT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_UNLOCK_EPISODE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 14
    .line 15
    sget-object v7, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_AD_CONTINUE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 16
    .line 17
    sget-object v8, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->DOWNGRADE_RESOLUTION_WHEN_CATON:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 18
    .line 19
    sget-object v9, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SUBS_PRO_RENEW:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 2
    .line 3
    const-string v1, "SHOW_EPISODE_LIST_DIALOG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SHOW_EPISODE_LIST_DIALOG:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 12
    .line 13
    const-string v1, "CHECK_ENABLE_PLAY_BY_DIALOG_COUNT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_ENABLE_PLAY_BY_DIALOG_COUNT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 20
    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 22
    .line 23
    const-string v1, "CATON_TOASTER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 32
    .line 33
    const-string v1, "SWITCH_TIMEOUT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SWITCH_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 42
    .line 43
    const-string v1, "HIDE_COLLECT_SHORTS_TIP"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->HIDE_COLLECT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 52
    .line 53
    const-string v1, "NEXT_SHORTS_TIP"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 60
    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 62
    .line 63
    const-string v1, "CHECK_UNLOCK_EPISODE_DIALOG_HIDE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_UNLOCK_EPISODE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 70
    .line 71
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 72
    .line 73
    const-string v1, "CHECK_AD_CONTINUE_DIALOG_HIDE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_AD_CONTINUE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 80
    .line 81
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 82
    .line 83
    const-string v1, "DOWNGRADE_RESOLUTION_WHEN_CATON"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->DOWNGRADE_RESOLUTION_WHEN_CATON:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 91
    .line 92
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 93
    .line 94
    const-string v1, "SUBS_PRO_RENEW"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SUBS_PRO_RENEW:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 102
    .line 103
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->$values()[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->$VALUES:[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 108
    .line 109
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->$ENTRIES:Lss/a;

    .line 114
    .line 115
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
            "Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->$VALUES:[Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 8
    .line 9
    return-object v0
.end method
