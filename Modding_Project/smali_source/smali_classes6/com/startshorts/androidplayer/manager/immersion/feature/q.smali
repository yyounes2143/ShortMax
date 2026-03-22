.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/q;
.super Ljava/lang/Object;
.source "RecommendShortsFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/q$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/q;->a:Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;

    .line 8
    .line 9
    return-void
.end method

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
    .locals 4
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
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/q$b;->$EnumSwitchMapping$0:[I

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string v2, "immersion_params"

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p1, v0

    .line 36
    :goto_0
    instance-of v2, p1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 42
    .line 43
    :cond_1
    if-nez v0, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/immersion/feature/q;->a:Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/q$a;->a(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_8

    .line 53
    .line 54
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->v()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "existSkuInfo("

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getSkuInfos()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/util/Collection;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v3, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    :goto_1
    move v3, v1

    .line 92
    :goto_2
    xor-int/2addr v3, v1

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 v3, 0x29

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "RecommendShortsFeature"

    .line 106
    .line 107
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getSkuInfos()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/util/Collection;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    sget-object p1, Lud/b;->a:Lud/b;

    .line 126
    .line 127
    const-wide/16 v2, -0x1

    .line 128
    .line 129
    invoke-virtual {p1, v2, v3}, Lud/b;->s4(J)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    :goto_3
    sget-object p1, Lud/b;->a:Lud/b;

    .line 134
    .line 135
    const-wide/16 v2, 0x0

    .line 136
    .line 137
    invoke-virtual {p1, v2, v3}, Lud/b;->s4(J)V

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/dialog/home/h;->a:Lcom/startshorts/androidplayer/manager/dialog/home/h$a;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/h$a;->b(Z)V

    .line 143
    .line 144
    .line 145
    :cond_8
    return-void
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
