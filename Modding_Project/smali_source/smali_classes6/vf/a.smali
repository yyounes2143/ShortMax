.class public final Lvf/a;
.super Ljava/lang/Object;
.source "SearchAntiBrushingManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvf/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lvf/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvf/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvf/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvf/a;->b:Lvf/a$a;

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

.method private final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mAntiBrushingState"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;->getRedeemCodeSearchHistorys()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;

    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-direct {v1, p1, v2, v3}, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;-><init>(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final c(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mAntiBrushingState"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;->getRedeemCodeSearchHistorys()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;->getCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move-object v1, v2

    .line 46
    :cond_2
    if-eqz v1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 p1, 0x0

    .line 51
    :goto_0
    return p1
.end method

.method private final e()V
    .locals 5

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    iget-object v1, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "mAntiBrushingState"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lud/b;->G2(Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "saveAntiBrushingState\uff1a"

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v2, v4

    .line 38
    :goto_0
    invoke-static {v2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "SearchAntiBrushingManager"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getDefault(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string/jumbo v0, "toLowerCase(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "tv"

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lvf/a;->c(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    return v4

    .line 53
    :cond_0
    iget-object v0, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "mAntiBrushingState"

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v0, v3

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;->getRedeemCodeSearchHistorys()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v5, 0x5

    .line 72
    if-lt v0, v5, :cond_2

    .line 73
    .line 74
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 75
    .line 76
    sget v0, Lcom/startshorts/androidplayer/R$string;->search_activity_search_frequently_tips:I

    .line 77
    .line 78
    invoke-static {p1, v0, v1, v2, v3}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return v1

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lvf/a;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lvf/a;->e()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return v4
.end method

.method public final d()V
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->w()Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "mAntiBrushingState"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;->getRedeemCodeSearchHistorys()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;

    .line 27
    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/RedeemSearchInfo;->getTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/startshorts/androidplayer/utils/TimeUtil;->o(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v0, v1, v2, v1}, Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lvf/a;->a:Lcom/startshorts/androidplayer/bean/search/AntiBrushingState;

    .line 58
    .line 59
    :cond_2
    return-void
.end method
