.class public final Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;
.super Ljava/lang/Object;
.source "TopUpDialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->u1(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lud/a;->p0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->E0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x63

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->E0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    const/16 v15, 0x110

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    move-object/from16 v7, p3

    .line 73
    .line 74
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 83
    .line 84
    .line 85
    move-result-object v20

    .line 86
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v22

    .line 94
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v23

    .line 100
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v24

    .line 106
    const/16 v26, 0x80

    .line 107
    .line 108
    const/16 v27, 0x0

    .line 109
    .line 110
    const/16 v18, 0x1

    .line 111
    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    move-object/from16 v19, p2

    .line 115
    .line 116
    invoke-static/range {v17 .. v27}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public b(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lud/a;->p0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->E0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x63

    .line 21
    .line 22
    if-eq v1, v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const/16 v15, 0x110

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/4 v6, 0x4

    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    move-object/from16 v7, p3

    .line 64
    .line 65
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    sget-object v17, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 74
    .line 75
    .line 76
    move-result-object v20

    .line 77
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 78
    .line 79
    .line 80
    move-result-object v21

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v22

    .line 85
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v23

    .line 91
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v24

    .line 97
    const/16 v26, 0x80

    .line 98
    .line 99
    const/16 v27, 0x0

    .line 100
    .line 101
    const/16 v18, 0x4

    .line 102
    .line 103
    const/16 v25, 0x0

    .line 104
    .line 105
    move-object/from16 v19, p2

    .line 106
    .line 107
    invoke-static/range {v17 .. v27}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method public c(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    sget-object v2, Lud/a;->a:Lud/a;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual {v2, v5}, Lud/a;->p0(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 23
    .line 24
    invoke-static {v1, v4}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 40
    .line 41
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const/16 v11, 0x110

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v2, 0x3

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    move-object/from16 v3, p3

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    move-object v5, v6

    .line 71
    move v6, v10

    .line 72
    move-object v10, v13

    .line 73
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 85
    .line 86
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 87
    .line 88
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 97
    .line 98
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    const/16 v10, 0x80

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v2, 0x3

    .line 122
    const/4 v9, 0x0

    .line 123
    move-object/from16 v3, p2

    .line 124
    .line 125
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h0(Lcom/startshorts/androidplayer/manager/event/EventManager;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method
