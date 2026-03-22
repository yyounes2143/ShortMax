.class public final Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "ActBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/act/ActResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/act/ActBannerAdapter\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,165:1\n46#2:166\n*S KotlinDebug\n*F\n+ 1 ActBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/act/ActBannerAdapter\n*L\n105#1:166\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final r:I

.field private static final s:I


# instance fields
.field private final l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:F

.field private o:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->q:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 16
    .line 17
    invoke-virtual {v1}, Lfk/z;->d()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    sput v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->r:I

    .line 25
    .line 26
    const/high16 v0, 0x42580000    # 54.0f

    .line 27
    .line 28
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->s:I

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->l:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 12
    .line 13
    invoke-virtual {p1}, Lfk/z;->m()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->n:F

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->p:J

    .line 23
    .line 24
    return-void
.end method

.method private final A(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 21
    .line 22
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget p1, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->r:I

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 35
    .line 36
    .line 37
    sget p1, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->s:I

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 44
    .line 45
    .line 46
    iget v3, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->n:F

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 49
    .line 50
    .line 51
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_act_banner_placeholder:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-virtual {v1, p2, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->u(Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->s:I

    .line 2
    .line 3
    return v0
.end method

.method private final p(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->A(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->A(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->ad_container:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    move-object v2, p2

    .line 8
    check-cast v2, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "from("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->m:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "), bindProgrammaticAd"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "ActBannerAdapter"

    .line 46
    .line 47
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->l:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->m:Ljava/lang/String;

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    const-string p2, ""

    .line 59
    .line 60
    :cond_1
    move-object v5, p2

    .line 61
    sget-object v6, Lcom/hades/aar/admanager/core/AdSize;->BANNER:Lcom/hades/aar/admanager/core/AdSize;

    .line 62
    .line 63
    new-instance v7, Ljd/a;

    .line 64
    .line 65
    invoke-direct {v7, p0, p1}, Ljd/a;-><init>(Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v3, 0xfa0

    .line 69
    .line 70
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->i0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;JLjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method private final t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->ad_container:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->p:J

    .line 18
    .line 19
    sub-long v2, v0, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x1f4

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->p:J

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v0, v1}, Lfj/a;->c(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->s(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method private static final u(Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->m:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    move-object v1, v2

    .line 10
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;->a(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->m:Ljava/lang/String;

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v2, p0

    .line 21
    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final v(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->A(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->q(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/act/ActResource;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_act_banner_brand_ad:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_act_banner_programmatic_ad:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_act_banner_shorts:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_act_banner_h5:I

    .line 35
    .line 36
    :goto_0
    return p1
.end method

.method protected g(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRawSkipType()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->w(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected q(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/act/ActResource;III)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRawSkipType()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    sget-object p4, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-ne p3, p4, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->p(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p4, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 28
    .line 29
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    if-eq p3, p4, :cond_2

    .line 34
    .line 35
    sget-object p4, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 36
    .line 37
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-ne p3, p4, :cond_1

    .line 42
    .line 43
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->v(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->r(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public w(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->o:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->o:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->n:F

    .line 2
    .line 3
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
