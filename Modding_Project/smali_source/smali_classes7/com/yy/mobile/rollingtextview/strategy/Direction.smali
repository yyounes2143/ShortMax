.class public final enum Lcom/yy/mobile/rollingtextview/strategy/Direction;
.super Ljava/lang/Enum;
.source "CharOrderStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yy/mobile/rollingtextview/strategy/Direction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yy/mobile/rollingtextview/strategy/Direction;

.field public static final enum SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

.field public static final enum SCROLL_LEFT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

.field public static final enum SCROLL_RIGHT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

.field public static final enum SCROLL_UP:Lcom/yy/mobile/rollingtextview/strategy/Direction;


# instance fields
.field private final orientation:I

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/yy/mobile/rollingtextview/strategy/Direction;
    .locals 4

    .line 1
    sget-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_UP:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 2
    .line 3
    sget-object v1, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 4
    .line 5
    sget-object v2, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_LEFT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 6
    .line 7
    sget-object v3, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_RIGHT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 2
    .line 3
    const-string v1, "SCROLL_UP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yy/mobile/rollingtextview/strategy/Direction;-><init>(Ljava/lang/String;III)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_UP:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 12
    .line 13
    new-instance v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 14
    .line 15
    const-string v1, "SCROLL_DOWN"

    .line 16
    .line 17
    invoke-direct {v0, v1, v4, v4, v4}, Lcom/yy/mobile/rollingtextview/strategy/Direction;-><init>(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 21
    .line 22
    new-instance v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 23
    .line 24
    const-string v1, "SCROLL_LEFT"

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v0, v1, v5, v3, v2}, Lcom/yy/mobile/rollingtextview/strategy/Direction;-><init>(Ljava/lang/String;III)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_LEFT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 31
    .line 32
    new-instance v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 33
    .line 34
    const-string v1, "SCROLL_RIGHT"

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/yy/mobile/rollingtextview/strategy/Direction;-><init>(Ljava/lang/String;III)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_RIGHT:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 41
    .line 42
    invoke-static {}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->$values()[Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->$VALUES:[Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->value:I

    .line 5
    .line 6
    iput p4, p0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->orientation:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yy/mobile/rollingtextview/strategy/Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/yy/mobile/rollingtextview/strategy/Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->$VALUES:[Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->orientation:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/strategy/Direction;->value:I

    .line 2
    .line 3
    return v0
.end method
