.class public Lio/bidmachine/iab/mraid/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/MraidView$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic b:Lio/bidmachine/iab/mraid/e;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/e$a;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$a;

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lio/bidmachine/iab/mraid/MraidView$a;-><init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lio/bidmachine/iab/mraid/e;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/iab/mraid/e$a;->b:Lio/bidmachine/iab/mraid/e;

    .line 4
    .line 5
    iget-object v1, v1, Lio/bidmachine/iab/mraid/e;->c:Lio/bidmachine/iab/mraid/p;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$a;->B(Lio/bidmachine/iab/mraid/p;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->b:Lio/bidmachine/iab/mraid/e;

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->c(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, v0, Lio/bidmachine/iab/mraid/e;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$a;->b:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    return-object p1
.end method

.method public b(Z)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->h(Z)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/measurer/MraidAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->t(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->u(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/CacheControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->v(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->w(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(F)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->x(F)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->y(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i(F)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->z(F)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j(Z)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->A(Z)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k(Lio/bidmachine/iab/mraid/f;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->b:Lio/bidmachine/iab/mraid/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/e;->b(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/f;)Lio/bidmachine/iab/mraid/f;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->C(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public m(F)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->D(F)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->E(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->F(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p(Z)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->G(Z)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q(Z)Lio/bidmachine/iab/mraid/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$a;->a:Lio/bidmachine/iab/mraid/MraidView$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$a;->H(Z)Lio/bidmachine/iab/mraid/MraidView$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
