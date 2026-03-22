.class public final enum Lio/bidmachine/iab/mraid/MraidPlacementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/iab/mraid/MraidPlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public static final enum INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

.field public static final enum INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    const-string v1, "INLINE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 12
    .line 13
    const-string v1, "INTERSTITIAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 20
    .line 21
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidPlacementType;->a()[Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 26
    .line 27
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

.method private static synthetic a()[Lio/bidmachine/iab/mraid/MraidPlacementType;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidPlacementType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/iab/mraid/MraidPlacementType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->$VALUES:[Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/iab/mraid/MraidPlacementType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
