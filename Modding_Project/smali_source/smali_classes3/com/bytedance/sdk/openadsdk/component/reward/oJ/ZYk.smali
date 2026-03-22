.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final oJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public static oJ(Landroid/content/Intent;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 4

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    const-string v1, ""

    const-string v2, "TTAD.RFDM"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_3

    .line 4
    :try_start_0
    const-string p2, "multi_process_ad_info"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->dLZ()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Landroid/content/Intent;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->dLZ()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v3

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(Landroid/os/Bundle;)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn()V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 11
    :try_start_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ:Landroid/util/SparseArray;

    const-string p2, "meta_tmp"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/model/cY;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v2, v1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NO()I

    move-result p0

    const/4 p1, 0x7

    invoke-virtual {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(II)V

    :cond_5
    return-object v3
.end method

.method public static oJ(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/oJ;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    const-string v0, "TTAD.RFDM"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 43
    :goto_1
    const-string v0, "orientation_angle"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string p1, "video_is_cached"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->PiB()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 47
    :cond_1
    const-string p2, "multi_process_ad_info"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string p1, "multi_process_listener_key"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn()V

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)I

    move-result p1

    .line 51
    const-string p2, "meta_index"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static oJ(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const-string v1, "video_is_cached"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tB(Z)V

    .line 16
    const-string v0, "multi_process_listener_key"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 17
    const-string v0, "orientation_angle"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    .line 18
    :cond_1
    iput-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->yz:Z

    return-void
.end method

.method public static oJ(Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 19
    :cond_0
    const-string v0, "multi_process_listener_key"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const-string v1, "video_is_cached"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->tB(Z)V

    .line 21
    const-string v0, "is_mute"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 22
    const-string v0, "video_current"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 23
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk(J)V

    .line 24
    :cond_1
    const-string v0, "has_show_skip_btn"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oJ(Z)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 2
    invoke-static {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27
    const-string v1, "meta_tmp"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string v0, "multi_process_listener_key"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "video_is_cached"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->nke()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    const-string v0, "video_current"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 31
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    const-string v0, "has_show_skip_btn"

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 33
    const-string p1, "TTAD.RFDM"

    const-string v0, "onSaveInstanceState: "

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5

    .line 34
    const-string v0, "video_is_cached"

    const-string v1, "multi_process_listener_key"

    if-eqz p2, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    const-string v2, "meta_tmp"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 39
    :goto_1
    const-string p1, "TTAD.RFDM"

    const-string p2, "onSaveInstanceState: "

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
