.class public Lcom/bytedance/sdk/openadsdk/QSm/cFZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;
    }
.end annotation


# static fields
.field private static oJ:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;


# direct methods
.method public static oJ(Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/openadsdk/QSm/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    return-void
.end method

.method public static oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-object p0, Lcom/bytedance/sdk/openadsdk/QSm/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    :cond_1
    return-void
.end method

.method public static oJ()Z
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
