.class public Lcom/bytedance/sdk/openadsdk/core/act/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZYk:I = -0x1

.field private static ex:Ljava/lang/Boolean; = null

.field private static oJ:I = -0x1

.field private static volatile tB:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static ZYk(Landroid/content/Context;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public static ZYk(I)V
    .locals 0

    .line 2
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/oJ;->ZYk:I

    return-void
.end method

.method public static oJ()I
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/act/oJ;->ex:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static oJ(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static oJ(I)V
    .locals 0

    .line 4
    sput p0, Lcom/bytedance/sdk/openadsdk/core/act/oJ;->oJ:I

    return-void
.end method
