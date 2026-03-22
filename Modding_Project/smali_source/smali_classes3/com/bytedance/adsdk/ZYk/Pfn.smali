.class public Lcom/bytedance/adsdk/ZYk/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile BTZ:Lcom/bytedance/adsdk/ZYk/ex/cFZ; = null

.field private static Pfn:[Ljava/lang/String; = null

.field private static ZYk:Z = false

.field private static ba:[J = null

.field private static cFZ:I = 0x0

.field private static volatile dLZ:Lcom/bytedance/adsdk/ZYk/ex/so; = null

.field private static ex:Z = true

.field private static jFA:Lcom/bytedance/adsdk/ZYk/ex/ba; = null

.field private static kkU:Lcom/bytedance/adsdk/ZYk/ex/Pfn; = null

.field public static oJ:Z = false

.field private static so:I = 0x0

.field private static tB:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static ZYk(Ljava/lang/String;)F
    .locals 4

    .line 1
    sget v0, Lcom/bytedance/adsdk/ZYk/Pfn;->so:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lcom/bytedance/adsdk/ZYk/Pfn;->so:I

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/bytedance/adsdk/ZYk/Pfn;->ZYk:Z

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget v0, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    add-int/lit8 v0, v0, -0x1

    .line 5
    sput v0, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 6
    sget-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->Pfn:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p0, Lcom/bytedance/adsdk/ZYk/Pfn;->ba:[J

    sget v2, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbalanced trace call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/bytedance/adsdk/ZYk/Pfn;->Pfn:[Ljava/lang/String;

    sget v2, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t end trace section. There are none."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ZYk(Landroid/content/Context;)Lcom/bytedance/adsdk/ZYk/ex/cFZ;
    .locals 3

    .line 11
    sget-boolean v0, Lcom/bytedance/adsdk/ZYk/Pfn;->tB:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/bytedance/adsdk/ZYk/Pfn;->BTZ:Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    if-nez v0, :cond_3

    .line 14
    const-class v0, Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->BTZ:Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    sget-object v2, Lcom/bytedance/adsdk/ZYk/Pfn;->kkU:Lcom/bytedance/adsdk/ZYk/ex/Pfn;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/bytedance/adsdk/ZYk/Pfn$1;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/ZYk/Pfn$1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ZYk/ex/cFZ;-><init>(Lcom/bytedance/adsdk/ZYk/ex/Pfn;)V

    sput-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->BTZ:Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/adsdk/ZYk/ex/so;
    .locals 3

    .line 8
    sget-object v0, Lcom/bytedance/adsdk/ZYk/Pfn;->dLZ:Lcom/bytedance/adsdk/ZYk/ex/so;

    if-nez v0, :cond_2

    .line 9
    const-class v0, Lcom/bytedance/adsdk/ZYk/ex/so;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->dLZ:Lcom/bytedance/adsdk/ZYk/ex/so;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Lcom/bytedance/adsdk/ZYk/ex/so;

    invoke-static {p0}, Lcom/bytedance/adsdk/ZYk/Pfn;->ZYk(Landroid/content/Context;)Lcom/bytedance/adsdk/ZYk/ex/cFZ;

    move-result-object p0

    sget-object v2, Lcom/bytedance/adsdk/ZYk/Pfn;->jFA:Lcom/bytedance/adsdk/ZYk/ex/ba;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/adsdk/ZYk/ex/ZYk;

    invoke-direct {v2}, Lcom/bytedance/adsdk/ZYk/ex/ZYk;-><init>()V

    :goto_0
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ZYk/ex/so;-><init>(Lcom/bytedance/adsdk/ZYk/ex/cFZ;Lcom/bytedance/adsdk/ZYk/ex/ba;)V

    sput-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->dLZ:Lcom/bytedance/adsdk/ZYk/ex/so;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static oJ(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/bytedance/adsdk/ZYk/Pfn;->ZYk:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 3
    sget p0, Lcom/bytedance/adsdk/ZYk/Pfn;->so:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/ZYk/Pfn;->so:I

    return-void

    .line 4
    :cond_1
    sget-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->Pfn:[Ljava/lang/String;

    aput-object p0, v1, v0

    .line 5
    sget-object v1, Lcom/bytedance/adsdk/ZYk/Pfn;->ba:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 6
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    sget p0, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/ZYk/Pfn;->cFZ:I

    return-void
.end method

.method public static oJ()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/bytedance/adsdk/ZYk/Pfn;->ex:Z

    return v0
.end method
