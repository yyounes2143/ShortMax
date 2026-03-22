.class public final enum Lcom/facebook/fresco/ui/common/ImageLoadStatus;
.super Ljava/lang/Enum;
.source "ImageLoadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;,
        Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final Companion:Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field public static final enum UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

.field private static final VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 7

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 6
    .line 7
    sget-object v3, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 8
    .line 9
    sget-object v4, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 10
    .line 11
    sget-object v5, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 12
    .line 13
    sget-object v6, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "UNKNOWN"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->UNKNOWN:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 13
    .line 14
    const-string v1, "REQUESTED"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 21
    .line 22
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 23
    .line 24
    const-string v1, "INTERMEDIATE_AVAILABLE"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 31
    .line 32
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 33
    .line 34
    const-string v1, "SUCCESS"

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 41
    .line 42
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 43
    .line 44
    const-string v1, "ERROR"

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    const/4 v3, 0x5

    .line 48
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 52
    .line 53
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 54
    .line 55
    const-string v1, "EMPTY_EVENT"

    .line 56
    .line 57
    const/4 v2, 0x7

    .line 58
    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 62
    .line 63
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    const/16 v2, 0x8

    .line 67
    .line 68
    const-string v3, "RELEASED"

    .line 69
    .line 70
    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 74
    .line 75
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$ENTRIES:Lss/a;

    .line 86
    .line 87
    new-instance v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {v0, v1}, Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->Companion:Lcom/facebook/fresco/ui/common/ImageLoadStatus$Companion;

    .line 94
    .line 95
    invoke-static {}, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 100
    .line 101
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
    iput p3, p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getVALUES$cp()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

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
            "Lcom/facebook/fresco/ui/common/ImageLoadStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/ui/common/ImageLoadStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->$VALUES:[Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const-string v0, "unknown"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "released"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "error"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "intermediate_available"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const-string v0, "success"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const-string v0, "requested"

    .line 40
    .line 41
    :goto_0
    return-object v0
.end method
