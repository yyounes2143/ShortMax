.class public final enum Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;
.super Ljava/lang/Enum;
.source "AdMediaVideoFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

.field public static final enum POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

.field public static final enum PRE:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;


# instance fields
.field private final scene:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->PRE:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "pre_roll"

    .line 5
    .line 6
    const-string v3, "PRE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->PRE:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "post_roll"

    .line 17
    .line 18
    const-string v3, "POST"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 24
    .line 25
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->$values()[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->$VALUES:[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->$ENTRIES:Lss/a;

    .line 36
    .line 37
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
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->scene:Ljava/lang/String;

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
            "Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;
    .locals 1

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->$VALUES:[Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getScene()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->scene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
