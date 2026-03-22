.class final Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/jFA/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "oJ"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$oJ;
    }
.end annotation


# static fields
.field private static Pfn:I

.field private static final ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

.field private static ex:I

.field public static oJ:Z

.field private static tB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/Pfn/awB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ:Z

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    sput v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->tB:I

    .line 17
    .line 18
    const/16 v0, 0xf

    .line 19
    .line 20
    sput v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ex:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    sput v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->Pfn:I

    .line 25
    .line 26
    return-void
.end method

.method static synthetic ZYk()Lcom/bytedance/sdk/component/Pfn/awB;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    return-object v0
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;
    .locals 2

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/awB;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/kkU;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    return-object p0
.end method

.method private static ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/Pfn/awB;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/kkU;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    return-object p0
.end method

.method private static ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/Pfn/awB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/awB;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/awB;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/component/Pfn/awB;
    .locals 9

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ()V

    .line 10
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;

    sget v4, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->tB:I

    sget v5, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ex:I

    sget v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->Pfn:I

    int-to-long v6, v2

    new-instance v8, Ljava/io/File;

    const-string v2, "image_p"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;-><init>(IIIJLjava/io/File;)V

    .line 12
    new-instance v2, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;-><init>()V

    .line 13
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ(Z)Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$2;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$2;-><init>()V

    .line 15
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/QSm;)Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$1;-><init>()V

    .line 16
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/oq;)Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$oJ;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ex$1;)V

    .line 17
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/ex;)Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn$oJ;->oJ()Lcom/bytedance/sdk/component/Pfn/ex/tB/Pfn;

    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/component/Pfn/PiB;)Lcom/bytedance/sdk/component/Pfn/awB;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    const/high16 v2, 0x5000000

    .line 21
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0xa00000

    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 23
    new-instance v2, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;

    new-instance v3, Ljava/io/File;

    const-string v4, "image"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getImageCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x2800000

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;-><init>(IJLjava/io/File;)V

    .line 24
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;-><init>()V

    .line 25
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ(Z)Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$4;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$4;-><init>()V

    .line 27
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/QSm;)Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$3;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$3;-><init>()V

    .line 28
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/oq;)Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$oJ;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ex$1;)V

    .line 29
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/ex;)Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/tB/Pfn$oJ;->oJ()Lcom/bytedance/sdk/component/Pfn/tB/Pfn;

    move-result-object v0

    .line 31
    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/Pfn/tB/ZYk;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/component/Pfn/PiB;)Lcom/bytedance/sdk/component/Pfn/awB;

    move-result-object p0

    return-object p0
.end method

.method private static oJ(Lcom/bytedance/sdk/component/Pfn/kkU;)Lcom/bytedance/sdk/component/Pfn/kkU;
    .locals 1

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/XAo;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jFA/Pfn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/jFA/Pfn;-><init>()V

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/RZ;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static oJ()V
    .locals 3

    .line 5
    const-string v0, "image_config"

    const-string v1, "use_new_img"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->oJ:Z

    .line 6
    const-string v1, "bitmap_cache_count"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->tB:I

    .line 7
    const-string v1, "data_cache_count"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ex:I

    .line 8
    const-string v1, "disk_cache_count"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->Pfn:I

    return-void
.end method

.method static synthetic oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/jFA/ex$oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
