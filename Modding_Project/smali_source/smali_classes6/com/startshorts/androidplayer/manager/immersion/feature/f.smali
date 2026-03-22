.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/f;
.super Ljava/lang/Object;
.source "ContinueWatchFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/f$a;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_8

    .line 20
    .line 21
    sget-object v0, Lzg/c;->a:Lzg/c;

    .line 22
    .line 23
    invoke-virtual {v0}, Lzg/c;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/f;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string v2, "invalid_shorts_list"

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object p1, v1

    .line 52
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    check-cast p1, Ljava/util/List;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object p1, v1

    .line 62
    :goto_1
    if-nez p1, :cond_4

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    check-cast p1, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_7

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    new-instance p1, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setId(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShortPlayId(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShortPlayCode(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setShortPlayName(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setCoverId(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setEpisodeNum(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getTotalEpisodes()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setTotalEpisodes(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->setUpack(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lud/b;->a:Lud/b;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lud/b;->l2(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    :goto_2
    sget-object p1, Lud/b;->a:Lud/b;

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lud/b;->l2(Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;)V

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_3
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->CONTINUE_WATCH:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
