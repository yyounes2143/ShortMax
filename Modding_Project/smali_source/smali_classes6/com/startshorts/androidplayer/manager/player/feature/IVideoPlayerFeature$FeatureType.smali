.class public final enum Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
.super Ljava/lang/Enum;
.source "IVideoPlayerFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum ABR_STARTUP:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum BASE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum DECRYPT:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum REQUEST_HEADERS:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum SEAMLESS_SWITCH:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

.field public static final enum SUBTITLE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->BASE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SUBTITLE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SEAMLESS_SWITCH:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->ABR_STARTUP:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->REQUEST_HEADERS:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->DECRYPT:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    const-string v1, "BASE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->BASE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 12
    .line 13
    const-string v1, "SUBTITLE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SUBTITLE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 20
    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 22
    .line 23
    const-string v1, "SEAMLESS_SWITCH"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SEAMLESS_SWITCH:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 32
    .line 33
    const-string v1, "ABR_STARTUP"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->ABR_STARTUP:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 42
    .line 43
    const-string v1, "REQUEST_HEADERS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->REQUEST_HEADERS:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 52
    .line 53
    const-string v1, "DECRYPT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->DECRYPT:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 60
    .line 61
    invoke-static {}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->$values()[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->$VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->$ENTRIES:Lss/a;

    .line 72
    .line 73
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
            "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->$VALUES:[Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 8
    .line 9
    return-object v0
.end method
