.class public final Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RegionAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;,
        Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;,
        Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRegionAdapter2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegionAdapter2.kt\ncom/startshorts/androidplayer/adapter/region/RegionAdapter2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1872#2,2:138\n1863#2,2:140\n1874#2:142\n*S KotlinDebug\n*F\n+ 1 RegionAdapter2.kt\ncom/startshorts/androidplayer/adapter/region/RegionAdapter2\n*L\n34#1:138,2\n48#1:140,2\n34#1:142\n*E\n"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->j:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "char"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method public final e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/region/RegionGroup;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectedCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "selectedName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->k:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->l:Ljava/lang/String;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    move p3, p2

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    add-int/lit8 v1, p3, 0x1

    .line 39
    .line 40
    if-gez p3, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v0, Lcom/startshorts/androidplayer/bean/region/RegionGroup;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/region/RegionGroup;->getFirstCode()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-le v2, v3, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->j:Ljava/util/HashMap;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "#"

    .line 71
    .line 72
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->j:Ljava/util/HashMap;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {v2, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 92
    .line 93
    new-instance v4, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-direct {v4, p2, p3, v5}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/region/Region;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/region/RegionGroup;->getCodeInfoList()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 123
    .line 124
    new-instance v5, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 125
    .line 126
    invoke-direct {v5, v3, p3, v2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/region/Region;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    move p3, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->c()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;->c(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->i:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->d(ILcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inflate(...)"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;-><init>(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;-><init>(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object p2
.end method
