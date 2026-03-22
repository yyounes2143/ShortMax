.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;,
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$oJ;
    }
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field protected oJ:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ:I

    .line 23
    .line 24
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v1, 0x1000080

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    .line 56
    .line 57
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 v0, 0x400

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :goto_1
    const-string v0, "TTAD.RFSM"

    .line 83
    .line 84
    const-string v1, "init: "

    .line 85
    .line 86
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private Pfn()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->BTZ(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    return v0
.end method

.method private ZYk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    return-void
.end method

.method private ZYk(I)[F
    .locals 7

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->Pfn()F

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ex()F

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eq v5, v6, :cond_2

    add-float/2addr v0, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    :cond_2
    if-ne v2, v4, :cond_3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    goto :goto_2

    :cond_3
    int-to-float p1, p1

    sub-float/2addr v1, p1

    :goto_2
    const/4 p1, 0x2

    .line 6
    new-array p1, p1, [F

    aput v1, p1, v3

    aput v0, p1, v4

    return-object p1
.end method

.method private ex()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->PiB(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    return v0
.end method

.method public static oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 2

    const/16 v0, 0x1a

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x2

    return p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result p0

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method

.method private static oJ(Landroid/app/Activity;I)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private tB()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->yz:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Landroid/app/Activity;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Landroid/app/Activity;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Landroid/app/Activity;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/app/Activity;)V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/utils/IUZ;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public oJ(Z)V
    .locals 10

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->tB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->tB()V

    .line 9
    :catchall_0
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ex()F

    move-result v0

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->Pfn()F

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ()F

    move-result v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v4

    .line 18
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    if-eq v5, v3, :cond_3

    .line 19
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_2

    .line 20
    :cond_3
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    float-to-int v1, v2

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->NO:I

    float-to-int v0, v0

    .line 22
    iput v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jB:I

    return-void

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/16 v8, 0x14

    const/4 v9, 0x0

    if-eq v4, v3, :cond_6

    .line 24
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    cmpl-float v3, p1, v9

    if-eqz v3, :cond_7

    cmpl-float v3, p1, v6

    if-eqz v3, :cond_7

    sub-float v3, v2, v7

    sub-float/2addr v3, v7

    div-float/2addr v3, p1

    sub-float p1, v0, v3

    div-float/2addr p1, v5

    .line 25
    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, p1

    move v4, v3

    move p1, v8

    goto :goto_3

    .line 26
    :cond_6
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    cmpl-float v3, p1, v9

    if-eqz v3, :cond_7

    cmpl-float v3, p1, v6

    if-eqz v3, :cond_7

    sub-float v3, v0, v7

    sub-float/2addr v3, v7

    mul-float/2addr v3, p1

    sub-float p1, v2, v3

    div-float/2addr p1, v5

    .line 27
    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, v8

    move v4, v3

    move v8, p1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    move p1, v8

    move v3, p1

    move v4, v3

    .line 28
    :goto_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    int-to-float v6, v8

    sub-float/2addr v2, v6

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->NO:I

    int-to-float v2, v3

    sub-float/2addr v0, v2

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 29
    iput v0, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jB:I

    .line 30
    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    if-eqz v0, :cond_8

    return-void

    .line 31
    :cond_8
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 32
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    .line 33
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    .line 34
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    .line 35
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public oJ(I)[F
    .locals 9

    const/4 v0, 0x2

    .line 36
    new-array v1, v0, [F

    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 38
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 39
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result v5

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    aput v5, v1, v7

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    aput v3, v1, v6

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    mul-int/2addr v8, v0

    sub-int/2addr v5, v8

    int-to-float v5, v5

    aput v5, v1, v7

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int/2addr v5, v3

    int-to-float v3, v5

    aput v3, v1, v6

    .line 44
    :goto_0
    aget v3, v1, v7

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v7

    .line 45
    aget v3, v1, v6

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v6

    .line 46
    aget v5, v1, v7

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_1

    cmpg-float v3, v3, v8

    if-gez v3, :cond_2

    .line 47
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ:I

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->ZYk(I)[F

    move-result-object v1

    :cond_2
    const/16 v3, 0x1a

    if-eq v4, v3, :cond_6

    const/16 v3, 0x1b

    if-ne v4, v3, :cond_3

    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eq v2, p1, :cond_6

    if-ne p1, v0, :cond_5

    .line 50
    aget p1, v1, v7

    aget v0, v1, v6

    cmpg-float v2, p1, v0

    if-gez v2, :cond_6

    .line 51
    aput p1, v1, v6

    .line 52
    aput v0, v1, v7

    goto :goto_2

    .line 53
    :cond_5
    aget p1, v1, v7

    aget v0, v1, v6

    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    .line 54
    aput p1, v1, v6

    .line 55
    aput v0, v1, v7

    :cond_6
    :goto_2
    return-object v1
.end method
