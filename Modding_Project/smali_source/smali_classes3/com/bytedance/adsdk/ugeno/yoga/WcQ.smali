.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/WcQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

.field public static final enum ZYk:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

.field public static final enum oJ:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

.field public static final enum tB:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;


# instance fields
.field private final ex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 2
    .line 3
    const-string v1, "NO_WRAP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 12
    .line 13
    const-string v1, "WRAP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 20
    .line 21
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 22
    .line 23
    const-string v1, "WRAP_REVERSE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->tB:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 30
    .line 31
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ZYk()[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

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
    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ex:I

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic ZYk()[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 4
    .line 5
    sget-object v2, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->tB:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static oJ(I)Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->tB:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    return-object p0
.end method

.method public static oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "wrap_reverse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "wrap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nowrap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->tB:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ZYk:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    return-object p0

    .line 10
    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->oJ:Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3df6ea75 -> :sswitch_2
        0x37d04a -> :sswitch_1
        0x1d4ddfed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->Pfn:[Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/WcQ;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/WcQ;->ex:I

    return v0
.end method
