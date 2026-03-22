.class public final enum Lcom/bytedance/sdk/component/oJ/cY;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/oJ/cY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ZYk:Lcom/bytedance/sdk/component/oJ/cY;

.field private static final synthetic ex:[Lcom/bytedance/sdk/component/oJ/cY;

.field public static final enum oJ:Lcom/bytedance/sdk/component/oJ/cY;

.field public static final enum tB:Lcom/bytedance/sdk/component/oJ/cY;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/oJ/cY;

    .line 2
    .line 3
    const-string v1, "PUBLIC"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/oJ/cY;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/sdk/component/oJ/cY;->oJ:Lcom/bytedance/sdk/component/oJ/cY;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/component/oJ/cY;

    .line 12
    .line 13
    const-string v2, "PROTECTED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/oJ/cY;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bytedance/sdk/component/oJ/cY;->ZYk:Lcom/bytedance/sdk/component/oJ/cY;

    .line 20
    .line 21
    new-instance v2, Lcom/bytedance/sdk/component/oJ/cY;

    .line 22
    .line 23
    const-string v3, "PRIVATE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/oJ/cY;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/bytedance/sdk/component/oJ/cY;->tB:Lcom/bytedance/sdk/component/oJ/cY;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/sdk/component/oJ/cY;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/bytedance/sdk/component/oJ/cY;->ex:[Lcom/bytedance/sdk/component/oJ/cY;

    .line 36
    .line 37
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/oJ/cY;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/sdk/component/oJ/cY;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/sdk/component/oJ/cY;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/oJ/cY;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/oJ/cY;->ex:[Lcom/bytedance/sdk/component/oJ/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/oJ/cY;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bytedance/sdk/component/oJ/cY;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/oJ/cY;->tB:Lcom/bytedance/sdk/component/oJ/cY;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string v0, "private"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/oJ/cY;->ZYk:Lcom/bytedance/sdk/component/oJ/cY;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string v0, "protected"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const-string v0, "public"

    .line 16
    .line 17
    return-object v0
.end method
