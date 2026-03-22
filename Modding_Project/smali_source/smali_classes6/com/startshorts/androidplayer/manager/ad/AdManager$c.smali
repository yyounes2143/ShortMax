.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$c;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lda/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->I(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lca/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediationName"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    new-instance v3, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    const-string v0, "ad_unit_id"

    .line 28
    .line 29
    invoke-virtual {v3, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p4, "ad_error_msg"

    .line 33
    .line 34
    invoke-virtual {v3, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p3, "ad_error_code"

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v3, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p2, "ad_platform"

    .line 47
    .line 48
    invoke-static {p1}, Ljk/a;->c(Lca/e;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const-string v2, "ad_not_fill"

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public b(Lca/e;)V
    .locals 8

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljk/a;->a(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v2, "type"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "ad_unit_id"

    .line 28
    .line 29
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "ad_unit_name"

    .line 37
    .line 38
    invoke-virtual {p1}, Lca/e;->h()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "ad_platform"

    .line 46
    .line 47
    invoke-static {p1}, Ljk/a;->c(Lca/e;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    const/4 v7, 0x0

    .line 58
    const-string v2, "ad_request"

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public c(Lca/d;JLjava/lang/String;Z)V
    .locals 15

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "mediationName"

    .line 9
    .line 10
    move-object/from16 v1, p4

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v9, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object/from16 v2, p1

    .line 32
    .line 33
    move-object v4, v9

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    const-string v2, "ad_request"

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    move-object v3, v9

    .line 46
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->k()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "ad_placement"

    .line 68
    .line 69
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->k()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "type"

    .line 77
    .line 78
    .line 79
    const-string v2, "4"

    .line 80
    .line 81
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x4

    .line 85
    const/4 v7, 0x0

    .line 86
    const-string v2, "ad_placement_show"

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 95
    .line 96
    new-instance v10, Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v1, "cost_time"

    .line 102
    .line 103
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v10, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 111
    .line 112
    const/16 v6, 0x8

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    move-object/from16 v2, p1

    .line 118
    .line 119
    move-object v4, v10

    .line 120
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    const/4 v13, 0x4

    .line 126
    const/4 v14, 0x0

    .line 127
    const-string v9, "ad_fill"

    .line 128
    .line 129
    const-wide/16 v11, 0x0

    .line 130
    .line 131
    move-object v8, v0

    .line 132
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
