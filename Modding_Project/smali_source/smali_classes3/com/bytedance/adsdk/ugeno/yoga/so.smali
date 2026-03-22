.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/so;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/so;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/so;

.field public static final enum ZYk:Lcom/bytedance/adsdk/ugeno/yoga/so;

.field public static final enum oJ:Lcom/bytedance/adsdk/ugeno/yoga/so;

.field public static final enum tB:Lcom/bytedance/adsdk/ugeno/yoga/so;


# instance fields
.field private final ex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/so;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 12
    .line 13
    const-string v1, "EXACTLY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/so;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 20
    .line 21
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 22
    .line 23
    const-string v1, "AT_MOST"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/so;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->tB:Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 30
    .line 31
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/so;->oJ()[Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 36
    .line 37
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
    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/so;->ex:I

    .line 5
    .line 6
    return-void
.end method

.method public static oJ(I)Lcom/bytedance/adsdk/ugeno/yoga/so;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/so;->tB:Lcom/bytedance/adsdk/ugeno/yoga/so;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/so;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/so;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/so;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/so;

    return-object p0
.end method

.method private static synthetic oJ()[Lcom/bytedance/adsdk/ugeno/yoga/so;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/so;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/so;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/so;

    sget-object v2, Lcom/bytedance/adsdk/ugeno/yoga/so;->tB:Lcom/bytedance/adsdk/ugeno/yoga/so;

    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/ugeno/yoga/so;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/so;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/so;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/so;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/so;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/so;

    .line 8
    .line 9
    return-object v0
.end method
