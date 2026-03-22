.class public final enum Lcom/facebook/fresco/ui/common/VisibilityState;
.super Ljava/lang/Enum;
.source "VisibilityState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/VisibilityState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/ui/common/VisibilityState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

.field public static final Companion:Lcom/facebook/fresco/ui/common/VisibilityState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

.field public static final enum UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

.field private static final VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const-string v3, "UNKNOWN"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->UNKNOWN:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 13
    .line 14
    const-string v1, "VISIBLE"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 21
    .line 22
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 23
    .line 24
    const-string v1, "INVISIBLE"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/VisibilityState;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 31
    .line 32
    invoke-static {}, Lcom/facebook/fresco/ui/common/VisibilityState;->$values()[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$ENTRIES:Lss/a;

    .line 43
    .line 44
    new-instance v0, Lcom/facebook/fresco/ui/common/VisibilityState$Companion;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/VisibilityState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->Companion:Lcom/facebook/fresco/ui/common/VisibilityState$Companion;

    .line 51
    .line 52
    invoke-static {}, Lcom/facebook/fresco/ui/common/VisibilityState;->values()[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 57
    .line 58
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
    iput p3, p0, Lcom/facebook/fresco/ui/common/VisibilityState;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/facebook/fresco/ui/common/VisibilityState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/VisibilityState;->$VALUES:[Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/VisibilityState;->value:I

    .line 2
    .line 3
    return v0
.end method
