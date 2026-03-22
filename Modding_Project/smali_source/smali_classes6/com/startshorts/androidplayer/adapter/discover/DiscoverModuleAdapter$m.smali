.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$IconTitleMoreViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2303:1\n256#2,2:2304\n1#3:2306\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$IconTitleMoreViewHolder\n*L\n900#1:2304,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 7
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    const-string/jumbo v0, "titleTv"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    const-string/jumbo v0, "titleMoreContainer"

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v5, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;->a:Landroid/widget/ImageView;

    .line 42
    .line 43
    const-string v0, "moreIv"

    .line 44
    .line 45
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 49
    .line 50
    move v2, p1

    .line 51
    move-object v6, p2

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->d0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->getIconRes()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;->b:Landroid/widget/ImageView;

    .line 64
    .line 65
    const-string/jumbo v0, "titleIv"

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v1, v0

    .line 77
    :goto_0
    if-eqz v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 v0, 0x8

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreWithIconBinding;->b:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method
