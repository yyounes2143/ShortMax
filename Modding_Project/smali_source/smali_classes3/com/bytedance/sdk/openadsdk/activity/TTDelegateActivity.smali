.class public Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "SourceFile"


# static fields
.field private static final ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ZYk:Landroid/content/Intent;

.field oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/Ln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ex:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    return-void
.end method

.method private Pfn()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 27
    .line 28
    const-string v1, "ext_info"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 35
    .line 36
    const-string v2, "filter_words"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 43
    .line 44
    const-string v3, "creative_info"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    move-object v4, v0

    .line 51
    move-object v5, v1

    .line 52
    move-object v7, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rJ()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/tool/oJ;->oJ(Ljava/util/List;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, ""

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 100
    .line 101
    const-string v1, "closed_listener_key"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 108
    .line 109
    move-object v3, p0

    .line 110
    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method private ex()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;)Lcom/bytedance/sdk/openadsdk/core/Ln;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ(Ljava/lang/String;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    const-string v1, "closed_listener_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    const-string v1, "ext_info"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rJ()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/tool/oJ;->oJ(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filter_words"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mf()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "creative_info"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result p0

    const-string v1, "meta_index"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    if-eqz p2, :cond_3

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ex:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ex:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ex()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->size()I

    :cond_0
    return-void
.end method

.method private oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/tB/tB;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/tool/oJ;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/tB/tB;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    .line 19
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$1;

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ln;->oJ(Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/Ln;->oJ()V

    :cond_1
    return-void
.end method

.method static synthetic tB()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ex:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ex()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Ln;->ZYk()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 17
    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->tB:Lcom/bytedance/sdk/openadsdk/core/Ln;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/tB;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/bytedance/sdk/openadsdk/tB/tB;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->ZYk:Landroid/content/Intent;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Pfn()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
