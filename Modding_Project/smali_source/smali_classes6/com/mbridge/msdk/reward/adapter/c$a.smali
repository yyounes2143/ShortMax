.class Lcom/mbridge/msdk/reward/adapter/c$a;
.super Landroid/os/Handler;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "_"

    const-string v4, "RewardMVVideoAdapter"

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v5, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Landroid/os/Message;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v5

    .line 2
    :try_start_0
    iget v6, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1e

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1d

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_e

    .line 3
    :pswitch_0
    :try_start_1
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v7

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v11}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v11

    invoke-static {v2, v3, v6, v7, v11}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 4
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 5
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    .line 8
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    if-nez v2, :cond_1f

    .line 10
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v8, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 11
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_e

    .line 12
    :pswitch_1
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 13
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 14
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 15
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v14, v6, 0x1

    .line 16
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v15

    .line 17
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZIZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->t(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v7

    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v11}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v11

    invoke-static {v2, v3, v6, v7, v11}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 19
    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    if-nez v2, :cond_1

    .line 22
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v8, v2, Lcom/mbridge/msdk/reward/adapter/c;->R:Z

    .line 23
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    :cond_1
    return-void

    .line 24
    :cond_2
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v12

    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v13}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v13

    invoke-static {v2, v6, v12, v13, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 25
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 26
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    :cond_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 29
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 30
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 31
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->b(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 32
    :cond_5
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v6, v6, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v6, v6, Lcom/mbridge/msdk/reward/adapter/c;->T:Z

    if-eqz v6, :cond_1f

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 33
    :cond_6
    const-string v2, "errorCode: 3401 errorMessage: resource load timeout"

    const v6, 0xd6d8a

    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    .line 34
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v11, v6, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-eqz v5, :cond_7

    .line 35
    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 36
    :cond_7
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v6

    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v7}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7, v2, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 37
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 38
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->o(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v11

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_9

    .line 39
    :try_start_2
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 40
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsVideoKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    goto/16 :goto_5

    :cond_9
    move v7, v11

    :goto_3
    if-eqz v6, :cond_a

    .line 41
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 42
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    move v7, v8

    :cond_a
    if-eqz v6, :cond_c

    .line 43
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 44
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    move v7, v8

    goto :goto_4

    :cond_b
    if-nez v5, :cond_c

    if-nez v7, :cond_c

    .line 45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v10}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object v9

    if-nez v9, :cond_c

    move v5, v8

    :cond_c
    :goto_4
    if-eqz v6, :cond_8

    .line 46
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cmpt=1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 47
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->containsZipKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto/16 :goto_2

    .line 48
    :cond_d
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v7, :cond_8

    .line 49
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v7

    invoke-static {v7, v6}, Lcom/mbridge/msdk/videocommon/a;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 50
    :goto_5
    :try_start_3
    sget-boolean v7, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 51
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 52
    :pswitch_2
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 53
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v8}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v8

    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v12}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v12

    invoke-static {v3, v6, v8, v12, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v3, 0xd6d82

    .line 54
    :try_start_4
    const-string/jumbo v6, "unknow error in load failed"

    invoke-static {v3, v6}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v6

    .line 55
    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_f

    .line 56
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 57
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    .line 58
    :cond_e
    :goto_6
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    const-string v2, "=====================onVideoLoadFail=====================00000"

    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez v2, :cond_16

    .line 61
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 62
    const-string v2, "errorCode: 3506 errorMessage: data load failed"

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    :goto_7
    move-object v6, v2

    goto/16 :goto_9

    .line 63
    :cond_f
    check-cast v8, Ljava/lang/String;

    .line 64
    iget v2, v2, Landroid/os/Message;->arg1:I

    .line 65
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 66
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 67
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    :cond_10
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    const-string v2, "=====================onVideoLoadFail=====================11111"

    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iget-boolean v2, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-nez v2, :cond_16

    .line 71
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    .line 72
    const-string v2, "errorCode: 3507 errorMessage: data load failed, errorMsg null"

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    goto :goto_7

    .line 73
    :cond_11
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 74
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    :cond_12
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    const v6, 0xd6d95

    if-ne v2, v6, :cond_13

    .line 76
    const-string v2, "errorCode: 3507 errorMessage: data load failed, errorMsg is APP ALREADY INSTALLED"

    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_13
    const-string v6, "errorCode: 3507 errorMessage: data load failed, errorMsg is "

    const v12, 0xd6d83

    if-eq v2, v12, :cond_15

    if-eq v2, v10, :cond_15

    const/4 v13, 0x7

    if-ne v2, v13, :cond_14

    goto :goto_8

    .line 77
    :cond_14
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    goto :goto_7

    .line 78
    :cond_15
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    goto/16 :goto_7

    .line 79
    :cond_16
    :goto_9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    iput-boolean v11, v2, Lcom/mbridge/msdk/reward/adapter/c;->S:Z

    if-eqz v5, :cond_18

    .line 80
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 81
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    if-nez v2, :cond_17

    .line 82
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    goto :goto_a

    .line 83
    :cond_17
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v6

    .line 84
    :cond_18
    :goto_a
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v8}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8, v6, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_e

    .line 85
    :goto_b
    :try_start_6
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 86
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->v(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_19
    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v9}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v9

    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v10}, Lcom/mbridge/msdk/reward/adapter/c;->u(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v10

    invoke-static {v6, v8, v9, v10, v7}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errorCode: 3508 errorMessage: data load failed, exception is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    move-result-object v2

    if-eqz v5, :cond_1a

    .line 90
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 91
    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 92
    :cond_1a
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v3

    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v6}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6, v2, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto/16 :goto_e

    .line 93
    :pswitch_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 94
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v2

    const-string v3, "campaign is ok"

    invoke-interface {v2, v3, v5}, Lcom/mbridge/msdk/reward/adapter/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 95
    :cond_1b
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 96
    iput v9, v2, Landroid/os/Message;->what:I

    if-eqz v5, :cond_1c

    .line 97
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v6, "metrics_data_lrid"

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    :cond_1c
    sget v3, Lcom/mbridge/msdk/foundation/same/a;->L:I

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e

    .line 101
    :pswitch_4
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 102
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v3, v2, v5}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto :goto_e

    .line 103
    :cond_1d
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->d(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/controller/a$j;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 104
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/c;->d(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/controller/a$j;

    move-result-object v2

    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->e(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/mbridge/msdk/reward/controller/a$j;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    goto :goto_e

    .line 105
    :cond_1e
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;)Lcom/mbridge/msdk/reward/adapter/a;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 106
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_1f

    .line 107
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 108
    iget-object v3, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/adapter/c;->c(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/c;->s(Lcom/mbridge/msdk/reward/adapter/c;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/mbridge/msdk/reward/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 109
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/c$a;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    .line 110
    :goto_c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 111
    :goto_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
