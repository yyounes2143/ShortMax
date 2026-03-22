.class public final Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "NewSubsTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;->q:Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$a;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public E(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$b;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$b;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 21
    .line 22
    :goto_0
    move-object v4, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v4, v1

    .line 38
    :goto_1
    if-eqz v4, :cond_3

    .line 39
    .line 40
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 41
    .line 42
    const-string/jumbo p1, "subscribe"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->g1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;->p:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;->o:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "coin_popup"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    sget-object p1, Lud/a;->a:Lud/a;

    .line 61
    .line 62
    invoke-virtual {p1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_2
    move-object v6, v1

    .line 67
    const/16 v10, 0x70

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    const-string/jumbo v3, "subscribe"

    .line 71
    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static/range {v2 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;->E(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "NewSubsTypeAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$b;

    .line 9
    .line 10
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_main:I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProMainBinding;

    .line 17
    .line 18
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProMainBinding;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;

    .line 23
    .line 24
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_normal:I

    .line 25
    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;

    .line 31
    .line 32
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object p2
.end method
