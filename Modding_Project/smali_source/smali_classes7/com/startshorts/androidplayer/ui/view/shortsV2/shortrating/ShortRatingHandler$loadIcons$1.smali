.class final Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShortRatingHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler$loadIcons$1"
    f = "ShortRatingHandler.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortRatingHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortRatingHandler.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1#2:154\n1863#3,2:155\n*S KotlinDebug\n*F\n+ 1 ShortRatingHandler.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1\n*L\n111#1:155,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;",
            "Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->j:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic i(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->j(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p3, p0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;->a(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->j:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getIcon()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 31
    .line 32
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lkk/f;->m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lkk/f;->o(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getContentDescriptionResponseList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    check-cast p1, Ljava/lang/Iterable;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getIcon()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 88
    .line 89
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Lkk/f;->m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lkk/f;->o(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->j:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->b(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 128
    .line 129
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;->a(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->j:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 138
    .line 139
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;

    .line 140
    .line 141
    invoke-direct {v4, v2, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 142
    .line 143
    .line 144
    const/4 v5, 0x2

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-static/range {v1 .. v6}, Lkk/f;->v(Lkk/f;Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 156
    .line 157
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1
.end method
