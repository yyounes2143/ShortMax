.class public Lcom/bytedance/sdk/component/utils/awB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZYk:I = 0x4

.field private static oJ:Z = false

.field private static tB:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static ZYk()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/component/utils/awB;->oJ:Z

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/awB;->oJ(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static ex()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/component/utils/awB;->oJ:Z

    .line 2
    .line 3
    return v0
.end method

.method public static oJ(I)V
    .locals 0

    .line 2
    sput p0, Lcom/bytedance/sdk/component/utils/awB;->ZYk:I

    return-void
.end method

.method public static oJ(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/component/utils/awB;->tB:Ljava/lang/String;

    return-void
.end method

.method public static oJ()Z
    .locals 2

    .line 3
    sget v0, Lcom/bytedance/sdk/component/utils/awB;->ZYk:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static tB()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/component/utils/awB;->oJ:Z

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/awB;->oJ(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
