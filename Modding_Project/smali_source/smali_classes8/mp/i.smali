.class public Lmp/i;
.super Ljava/lang/Object;
.source "NativeNetworkAdapter.java"

# interfaces
.implements Lmp/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:Lio/bidmachine/ImageData;

.field private f:Lio/bidmachine/ImageData;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lio/bidmachine/LabelData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lio/bidmachine/PrivacySheetData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lmp/i;->d:F

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lmp/i;->j:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public B()V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Lio/bidmachine/PrivacySheetData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->l:Lio/bidmachine/PrivacySheetData;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public c(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->k:Lio/bidmachine/LabelData;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lmp/i;->l:Lio/bidmachine/PrivacySheetData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;->b(Lmp/e;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/i;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->e:Lio/bidmachine/ImageData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->f:Lio/bidmachine/ImageData;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasVideo()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lmp/i;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmp/i;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmp/i;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lmp/i;->h()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lmp/i;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public m()Lio/bidmachine/LabelData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->k:Lio/bidmachine/LabelData;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Landroid/view/ViewGroup;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/ImageView;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lmp/i;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(Lio/bidmachine/LabelData;)Lmp/i;
    .locals 0
    .param p1    # Lio/bidmachine/LabelData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lmp/i;->k:Lio/bidmachine/LabelData;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lio/bidmachine/ImageData;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->e:Lio/bidmachine/ImageData;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Lio/bidmachine/ImageData;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->f:Lio/bidmachine/ImageData;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Z)Lmp/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmp/i;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Lio/bidmachine/PrivacySheetData;)Lmp/i;
    .locals 0
    .param p1    # Lio/bidmachine/PrivacySheetData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lmp/i;->l:Lio/bidmachine/PrivacySheetData;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(F)Lmp/i;
    .locals 0

    .line 1
    iput p1, p0, Lmp/i;->d:F

    .line 2
    .line 3
    return-object p0
.end method

.method public y(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public z(Ljava/lang/String;)Lmp/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/i;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
