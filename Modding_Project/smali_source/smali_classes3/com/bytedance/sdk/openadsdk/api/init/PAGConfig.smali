.class public final Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/InitConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;
    }
.end annotation


# static fields
.field private static kkU:Ljava/lang/String;


# instance fields
.field private Pfn:I

.field private ZYk:Z

.field private ba:I

.field private cFZ:Z

.field private dLZ:Ljava/lang/String;

.field private ex:I

.field private jFA:Ljava/lang/String;

.field private oJ:Ljava/lang/String;

.field private so:Ljava/lang/String;

.field private tB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ex:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Pfn:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ba:I

    .line 11
    .line 12
    return-void
.end method

.method private ZYk(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 5
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ex:I

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ex(I)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->tB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->oJ(Z)V

    return-void
.end method

.method private ZYk(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->oJ:Ljava/lang/String;

    return-void
.end method

.method private ZYk(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cFZ:Z

    .line 7
    invoke-static {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->oJ(Z)V

    return-void
.end method

.method public static debugLog(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->tB(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->tB(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 31
    .line 32
    .line 33
    sget-object p0, Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;->ex:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/bytedance/sdk/component/cFZ/tB/tB;->oJ(Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->tB()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->ZYk()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/component/utils/QSm;->ZYk()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private ex(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ba:I

    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->tB(I)V

    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ex(Ljava/lang/String;)V

    return-void
.end method

.method private ex(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->dLZ:Ljava/lang/String;

    return-void
.end method

.method public static getGDPRConsent()I
    .locals 2

    .line 1
    const-string v0, "getGdpr"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ZYk()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    if-nez v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    return v0
.end method

.method public static getPAConsent()I
    .locals 1

    .line 1
    const-string v0, "getPAConsent"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->Pfn()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method private oJ(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->tB:I

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->oJ(I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ZYk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ZYk(Z)V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->jFA:Ljava/lang/String;

    return-void
.end method

.method private oJ(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ZYk:Z

    return-void
.end method

.method public static setAppIconId(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static setGDPRConsent(I)V
    .locals 2
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;
        .end annotation
    .end param

    .line 1
    const-string v0, "setGdpr"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-le p0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    move p0, v0

    .line 13
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static setPAConsent(I)V
    .locals 1
    .param p0    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGPAConsentType;
        .end annotation
    .end param

    .line 1
    const-string v0, "setPAConsent"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, -0x2

    .line 21
    invoke-interface {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->kkU:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setUserData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LpP;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private tB(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Pfn:I

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ZYk(I)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method private tB(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->so:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdxId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->dLZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppIconId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->tB:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDebugLog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ZYk:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGdpr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ex:I

    .line 2
    .line 3
    return v0
.end method

.method public getPA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->so:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->kkU:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->so:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getTitleBarTheme()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->cFZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
