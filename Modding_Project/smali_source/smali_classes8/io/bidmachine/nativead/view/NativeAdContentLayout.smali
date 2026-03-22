.class public Lio/bidmachine/nativead/view/NativeAdContentLayout;
.super Lio/bidmachine/nativead/view/NativeAdContainer;
.source "NativeAdContentLayout.java"


# instance fields
.field protected d:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected e:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected f:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected g:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected h:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected i:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected j:Lio/bidmachine/nativead/view/NativeMediaView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->k:Ljava/util/Set;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->l:I

    .line 6
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->m:I

    .line 7
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->n:I

    .line 8
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->o:I

    .line 9
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->p:I

    .line 10
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->q:I

    .line 11
    iput v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->r:I

    if-nez p2, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v1, Lio/bidmachine/R$styleable;->NativeAdContentLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    :try_start_0
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_titleViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->l:I

    .line 14
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_callToActionViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->m:I

    .line 15
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_ratingViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->n:I

    .line 16
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_descriptionViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->o:I

    .line 17
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_providerViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->p:I

    .line 18
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_iconViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->q:I

    .line 19
    sget p2, Lio/bidmachine/R$styleable;->NativeAdContentLayout_mediaViewId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method private getAllAvailableClickableViews()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->d:Landroid/view/View;

    .line 7
    .line 8
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->e:Landroid/view/View;

    .line 17
    .line 18
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->f:Landroid/view/View;

    .line 27
    .line 28
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->g:Landroid/view/View;

    .line 37
    .line 38
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->h:Landroid/view/View;

    .line 47
    .line 48
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->i:Landroid/view/View;

    .line 57
    .line 58
    new-instance v2, Lio/bidmachine/nativead/view/f;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->j:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 67
    .line 68
    new-instance v2, Lio/bidmachine/nativead/view/g;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lio/bidmachine/nativead/view/g;-><init>(Ljava/util/Set;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;II)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lio/bidmachine/nativead/view/NativeAdContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic bringChildToFront(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->bringChildToFront(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getCallToActionView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickableViews()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->k:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/View;

    .line 29
    .line 30
    new-instance v3, Lio/bidmachine/nativead/view/f;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Lio/bidmachine/nativead/view/f;-><init>(Ljava/util/Set;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method public getDescriptionView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->g:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->i:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaView()Lio/bidmachine/nativead/view/NativeMediaView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->j:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProviderView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->h:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRatingView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->l:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setTitleView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->m:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setCallToActionView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->n:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setRatingView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->o:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setDescriptionView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->p:I

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setProviderView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->q:I

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setIconView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->r:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lio/bidmachine/nativead/view/NativeMediaView;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public bridge synthetic removeAllViews()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/nativead/view/NativeAdContainer;->removeView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->e:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setDescriptionView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->g:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->i:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 0
    .param p1    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->j:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 2
    .line 3
    return-void
.end method

.method public setProviderView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->h:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setRatingView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->f:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/view/NativeAdContentLayout;->d:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method
