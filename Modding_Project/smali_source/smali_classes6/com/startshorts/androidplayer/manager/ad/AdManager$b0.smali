.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->m0(Ljava/lang/ref/WeakReference;JLjava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "showVideoMediaAd failed -> "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "AdManager"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 27
    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->e:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_5

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x2

    .line 44
    const-string v2, "ad_instream_play_timeout"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {p2, v2, v0, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 v0, 0x1

    .line 52
    if-ne p2, v0, :cond_5

    .line 53
    .line 54
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 55
    .line 56
    new-instance v6, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->c:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-static {v0}, Ljk/a;->a(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object v0, v3

    .line 77
    :goto_0
    const-string/jumbo v1, "type"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "ad_placement"

    .line 84
    .line 85
    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Lca/d;->c()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-object p2, v3

    .line 96
    :goto_1
    const-string v0, "ad_unit_id"

    .line 97
    .line 98
    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Lca/d;->j()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    move-object p2, v3

    .line 109
    :goto_2
    const-string v0, "ad_unit_name"

    .line 110
    .line 111
    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    invoke-virtual {p2}, Lca/c;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    move-object p2, v3

    .line 128
    :goto_3
    const-string v0, "ad_mediation_name"

    .line 129
    .line 130
    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    invoke-static {p1}, Ljk/a;->b(Lca/d;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_4
    const-string p1, "ad_platform"

    .line 140
    .line 141
    invoke-virtual {v6, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    const/4 v9, 0x4

    .line 147
    const/4 v10, 0x0

    .line 148
    const-string v5, "ad_instream_play_timeout"

    .line 149
    .line 150
    const-wide/16 v7, 0x0

    .line 151
    .line 152
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return-void
.end method

.method public b(Lca/d;)Z
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public c(Lca/d;)V
    .locals 3

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->n(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 25
    .line 26
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Lca/d;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->k(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 41
    .line 42
    .line 43
    return-void
.end method
