.class public final Lcom/startshorts/androidplayer/manager/player/feature/f;
.super Lcom/startshorts/androidplayer/manager/player/feature/b;
.source "SubtitleFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/f$a;,
        Lcom/startshorts/androidplayer/manager/player/feature/f$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubtitleFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubtitleFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/SubtitleFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/manager/player/feature/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Lcom/startshorts/androidplayer/manager/player/feature/f$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/f;->h:Lcom/startshorts/androidplayer/manager/player/feature/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    .locals 6
    .param p1    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/b;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Llf/s;->j()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;->isEnable()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    const-string v1, "SubtitleFeature"

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    const-string p2, "init  -> subtitle not enable"

    .line 33
    .line 34
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/16 v0, 0x216

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x215

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x29d

    .line 50
    .line 51
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;->getSubtitleList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    new-instance p2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->e:I

    .line 66
    .line 67
    iget v2, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->f:I

    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->g:Z

    .line 70
    .line 71
    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/startshorts/androidplayer/manager/player/feature/f;->h(Ljava/util/List;IIZ)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lorg/json/JSONObject;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->d:Lcom/startshorts/androidplayer/manager/player/feature/f$b;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    iget v3, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->e:I

    .line 96
    .line 97
    iget v4, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->f:I

    .line 98
    .line 99
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->g:Z

    .line 100
    .line 101
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/startshorts/androidplayer/manager/player/feature/f$b;->a(IIZZ)V

    .line 102
    .line 103
    .line 104
    :cond_3
    new-instance v2, Lcom/ss/ttvideoengine/SubDesInfoModel;

    .line 105
    .line 106
    invoke-direct {v2, p2}, Lcom/ss/ttvideoengine/SubDesInfoModel;-><init>(Lorg/json/JSONObject;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSubDesInfoModel(Lcom/ss/ttvideoengine/SubDesInfoModelProvider;)V

    .line 110
    .line 111
    .line 112
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "is local subtitle:"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p2, Lcom/startshorts/androidplayer/manager/player/feature/f$c;

    .line 135
    .line 136
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/manager/player/feature/f$c;-><init>(Lcom/startshorts/androidplayer/manager/player/feature/f;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSubInfoCallBack(Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final c()Lcom/startshorts/androidplayer/manager/player/feature/f$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->d:Lcom/startshorts/androidplayer/manager/player/feature/f$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/manager/player/feature/f$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/player/feature/f$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->d:Lcom/startshorts/androidplayer/manager/player/feature/f$b;

    .line 2
    .line 3
    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/util/List;IIZ)Lkotlin/Pair;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/SubtitleFile;",
            ">;IIZ)",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONArray;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 v2, 0x0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/SubtitleFile;

    .line 45
    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    if-lez p3, :cond_1

    .line 49
    .line 50
    if-eqz p4, :cond_1

    .line 51
    .line 52
    sget-object v2, Luh/l1;->a:Luh/l1;

    .line 53
    .line 54
    invoke-virtual {v2, p2, p3, v3}, Luh/l1;->l(IILcom/startshorts/androidplayer/bean/shorts/SubtitleFile;)Lcom/startshorts/androidplayer/bean/shorts/SubtitleFile;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    xor-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    move v6, v3

    .line 65
    move-object v3, v2

    .line 66
    move v2, v6

    .line 67
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    .line 68
    .line 69
    sget-object v5, Llk/b;->a:Llk/b;

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Llk/b;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const-string p1, "list"

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    new-instance p1, Lkotlin/Pair;

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object p1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSubInfoCallBack(Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/f;->d:Lcom/startshorts/androidplayer/manager/player/feature/f$b;

    .line 12
    .line 13
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SUBTITLE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
