.class public final Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "SubsTypeAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->o:Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2$a;

    .line 8
    .line 9
    return-void
.end method

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_normal_2:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro_2:I

    .line 8
    .line 9
    :goto_0
    return p1
.end method

.method protected g(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getData(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    :cond_1
    return v0
.end method

.method protected n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const-string p4, ""

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    sget p3, Lcom/startshorts/androidplayer/R$id;->subs_view:I

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->l:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    move-object v1, p4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v1, p1

    .line 37
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->m:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->n:Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    move-object v2, p2

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    sget p3, Lcom/startshorts/androidplayer/R$id;->subs_view:I

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->l:Ljava/lang/String;

    .line 58
    .line 59
    if-nez p3, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object p4, p3

    .line 63
    :goto_1
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->m:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 64
    .line 65
    const/4 p5, 0x1

    .line 66
    invoke-virtual {p1, p4, p2, p3, p5}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public final o(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->m:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter2;->n:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
