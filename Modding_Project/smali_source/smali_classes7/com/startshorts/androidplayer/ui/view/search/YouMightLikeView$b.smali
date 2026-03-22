.class public final Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;
.super Ljava/lang/Object;
.source "YouMightLikeView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nYouMightLikeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView$addDataToFlexLayout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1872#2,3:138\n*S KotlinDebug\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView$addDataToFlexLayout$2\n*L\n117#1:138,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;->a:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;->a:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;->a:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayout;->getFlexLines()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/google/android/flexbox/b;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/google/android/flexbox/b;->b()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/android/flexbox/b;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/flexbox/b;->b()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v2, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/google/android/flexbox/b;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/flexbox/b;->b()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;->b:Ljava/util/List;

    .line 70
    .line 71
    check-cast v1, Ljava/lang/Iterable;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    add-int/lit8 v5, v4, 0x1

    .line 88
    .line 89
    if-gez v4, :cond_1

    .line 90
    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 92
    .line 93
    .line 94
    :cond_1
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;

    .line 95
    .line 96
    if-ge v4, v2, :cond_2

    .line 97
    .line 98
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 99
    .line 100
    new-instance v8, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v4, "content"

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;->getHotName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v8, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    const/4 v11, 0x4

    .line 117
    const/4 v12, 0x0

    .line 118
    const-string v7, "search_hot_show"

    .line 119
    .line 120
    const-wide/16 v9, 0x0

    .line 121
    .line 122
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    move v4, v5

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    return-void
.end method
