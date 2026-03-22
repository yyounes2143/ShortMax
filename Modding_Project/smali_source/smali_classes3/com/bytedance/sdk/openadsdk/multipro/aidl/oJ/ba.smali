.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;
.super Lcom/bytedance/sdk/component/ba/oJ/ba$oJ;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ba/oJ/ba$oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static ZYk()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ/ba;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public oJ(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Pfn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public oJ(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Pfn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public oJ(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Pfn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Landroid/net/Uri;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Pfn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public oJ(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/Pfn;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/Pfn;->oJ(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/oJ/oJ;->oJ(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v1
.end method
