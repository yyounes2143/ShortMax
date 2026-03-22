.class public final enum Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/publisher/MolocoAdError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdCreateError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lss/a;

.field private static final synthetic $VALUES:[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

.field public static final enum SDK_INIT_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

.field public static final enum SDK_INIT_WAS_NOT_COMPLETED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

.field public static final enum UNABLE_TO_CREATE_AD:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorCode:I


# direct methods
.method private static final synthetic $values()[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_WAS_NOT_COMPLETED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->UNABLE_TO_CREATE_AD:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 2
    .line 3
    const-string v1, "Failed to create `ad` object due to SDK initialization failure."

    .line 4
    .line 5
    const/16 v2, 0x3f3

    .line 6
    .line 7
    const-string v3, "SDK_INIT_FAILED"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_FAILED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 16
    .line 17
    const-string v1, "Failed to create `ad` object due to `Moloco.initialize()` not complete."

    .line 18
    .line 19
    const/16 v2, 0x3f4

    .line 20
    .line 21
    const-string v3, "SDK_INIT_WAS_NOT_COMPLETED"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->SDK_INIT_WAS_NOT_COMPLETED:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 28
    .line 29
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 30
    .line 31
    const-string v1, "Failed to create `ad` object due to `Moloco.initialize()` not complete in time"

    .line 32
    .line 33
    const/16 v2, 0x3f5

    .line 34
    .line 35
    const-string v3, "UNABLE_TO_CREATE_AD"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->UNABLE_TO_CREATE_AD:Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 42
    .line 43
    invoke-static {}, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->$values()[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->$VALUES:[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->$ENTRIES:Lss/a;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->description:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->errorCode:I

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->$ENTRIES:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->$VALUES:[Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;->errorCode:I

    .line 2
    .line 3
    return v0
.end method
