.class public final Lcom/bytedance/dr/OaidFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createOaidImpl(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi;
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/y4;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/bytedance/dr/impl/b;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/dr/impl/b;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method
