.class final Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FontListFontFamilyTypefaceAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->preload(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/PlatformFontLoader;Lrs/c;)Ljava/lang/Object;
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
    c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3"
    f = "FontListFontFamilyTypefaceAdapter.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $asyncLoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontLoader;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;-><init>(Ljava/util/List;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontLoader;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lgt/g0;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$asyncLoads:Ljava/util/List;

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x0

    .line 57
    move v6, v5

    .line 58
    :goto_0
    if-ge v6, v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    move-object v8, v7

    .line 65
    check-cast v8, Landroidx/compose/ui/text/font/Font;

    .line 66
    .line 67
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->this$0:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 80
    .line 81
    iget-object v10, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->$resourceLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 82
    .line 83
    new-instance v11, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    move v13, v5

    .line 97
    :goto_1
    if-ge v13, v12, :cond_4

    .line 98
    .line 99
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 104
    .line 105
    new-instance v6, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-direct {v6, v1, v3, v10, v4}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3$2$1;-><init>(Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Lrs/c;)V

    .line 109
    .line 110
    .line 111
    const/4 v7, 0x3

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    move-object v3, p1

    .line 115
    invoke-static/range {v3 .. v8}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v11, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v13, v13, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    iput v2, p0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$preload$3;->label:I

    .line 126
    .line 127
    invoke-static {v11, p0}, Lkotlinx/coroutines/AwaitKt;->c(Ljava/util/Collection;Lrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-ne p1, v0, :cond_5

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
