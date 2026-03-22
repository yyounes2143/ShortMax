.class public final Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "SearchLabelAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/search/SearchKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;->n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/search/SearchKey;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 0

    .line 1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_search_label:I

    .line 2
    .line 3
    return p1
.end method

.method protected n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/search/SearchKey;III)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/search/SearchKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/search/SearchKey;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/search/SearchKey;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p3, "holder"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$id;->search_label_tv:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchKey;->getKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
