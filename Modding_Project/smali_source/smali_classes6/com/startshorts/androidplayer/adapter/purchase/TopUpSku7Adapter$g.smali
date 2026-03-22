.class final Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "TopUpSku7Adapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->k(ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 13
    .param p2    # Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;->a:Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->L()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, p1, :cond_0

    .line 27
    .line 28
    move p1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;->setSelect(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeNormal7Binding;->a:Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView7;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->I()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v5, p2

    .line 47
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, v0, v5, p2, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 56
    .line 57
    .line 58
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->J()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter$g;->h:Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->G()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const/16 v11, 0x68

    .line 79
    .line 80
    const/4 v12, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    invoke-static/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
