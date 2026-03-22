.class public Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;
.super Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ZYk;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ZYk;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 7
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic oJ()Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ZYk$ZYk;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ZYk;->oJ()Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/ZYk$ZYk;

    move-result-object v0

    return-object v0
.end method
