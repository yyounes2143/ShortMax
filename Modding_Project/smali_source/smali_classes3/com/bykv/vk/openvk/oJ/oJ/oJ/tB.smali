.class public Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Pfn:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ; = null

.field private static ZYk:Landroid/content/Context; = null

.field private static ba:I = 0x1

.field private static ex:Z = false

.field public static oJ:Z = false

.field private static tB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static Pfn()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->oJ:Z

    .line 2
    .line 3
    return v0
.end method

.method public static ZYk()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->tB:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->oJ()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "ttad_dir"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->tB:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :catchall_0
    :cond_1
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->tB:Ljava/lang/String;

    .line 40
    .line 41
    return-object v0
.end method

.method public static ba()I
    .locals 1

    .line 1
    sget v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public static ex()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
    .locals 4

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 6
    .line 7
    const-string v1, "v_config"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    const-wide/16 v2, 0x2710

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 33
    .line 34
    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 35
    .line 36
    return-object v0
.end method

.method public static oJ()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ZYk:Landroid/content/Context;

    return-object v0
.end method

.method public static oJ(I)V
    .locals 0

    .line 6
    sput p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ba:I

    return-void
.end method

.method public static oJ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ZYk:Landroid/content/Context;

    .line 3
    sput-object p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->tB:Ljava/lang/String;

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    return-void
.end method

.method public static oJ(Z)V
    .locals 0

    .line 4
    sput-boolean p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ex:Z

    return-void
.end method

.method public static tB()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ex:Z

    .line 2
    .line 3
    return v0
.end method
