.class final Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "NewSubsTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->k(ILcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/subs/NewSubsTypeAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsTypeProNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->setSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
