.class public final enum Lcom/startshorts/androidplayer/bean/ad/AdScene;
.super Ljava/lang/Enum;
.source "AdScene.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

.field public static final enum REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/bean/ad/AdScene;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 6
    .line 7
    sget-object v3, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "reward"

    .line 5
    .line 6
    const-string v3, "REWARD"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "interstitial"

    .line 17
    .line 18
    const-string v3, "INTERSTITIAL"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 24
    .line 25
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "appOpen"

    .line 29
    .line 30
    const-string v3, "APP_OPEN"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "native"

    .line 41
    .line 42
    const-string v3, "NATIVE"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 48
    .line 49
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "banner"

    .line 53
    .line 54
    const-string v3, "BANNER"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 60
    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "mediaVideo"

    .line 65
    .line 66
    const-string v3, "MEDIA_VIDEO"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/bean/ad/AdScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 72
    .line 73
    invoke-static {}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->$values()[Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->$VALUES:[Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->$ENTRIES:Lss/a;

    .line 84
    .line 85
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
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->value:Ljava/lang/String;

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
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/ad/AdScene;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/bean/ad/AdScene;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->$VALUES:[Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
