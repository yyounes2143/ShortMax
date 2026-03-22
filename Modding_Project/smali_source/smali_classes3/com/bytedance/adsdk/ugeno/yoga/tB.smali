.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/tB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/tB;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/tB;

.field public static final enum ZYk:Lcom/bytedance/adsdk/ugeno/yoga/tB;

.field public static final enum oJ:Lcom/bytedance/adsdk/ugeno/yoga/tB;

.field public static final enum tB:Lcom/bytedance/adsdk/ugeno/yoga/tB;


# instance fields
.field private final ex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 2
    .line 3
    const-string v1, "INHERIT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/tB;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 12
    .line 13
    const-string v1, "LTR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/tB;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 20
    .line 21
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 22
    .line 23
    const-string v1, "RTL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/tB;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->tB:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 30
    .line 31
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/tB;->ZYk()[Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/tB;

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
    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->ex:I

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic ZYk()[Lcom/bytedance/adsdk/ugeno/yoga/tB;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 4
    .line 5
    sget-object v2, Lcom/bytedance/adsdk/ugeno/yoga/tB;->tB:Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/tB;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/tB;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/tB;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/tB;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/tB;->ex:I

    .line 2
    .line 3
    return v0
.end method
