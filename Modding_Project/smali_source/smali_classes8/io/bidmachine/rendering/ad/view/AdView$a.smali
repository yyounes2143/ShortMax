.class final Lio/bidmachine/rendering/ad/view/AdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/ad/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/rendering/ad/view/AdView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/ad/view/AdView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->S(Lio/bidmachine/rendering/ad/view/AdView;)V

    :cond_0
    return-void
.end method

.method public a(Lrq/n;)V
    .locals 1
    .param p1    # Lrq/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->J(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->C(Lio/bidmachine/rendering/ad/view/AdView;)V

    :cond_0
    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "privacySheetParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->M(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->D(Lio/bidmachine/rendering/ad/view/AdView;)V

    :cond_0
    return-void
.end method

.method public c(Lfq/q;Lrq/t;)V
    .locals 0
    .param p1    # Lfq/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lio/bidmachine/rendering/ad/view/AdView;->O(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->P(Lio/bidmachine/rendering/ad/view/AdView;)V

    :cond_0
    return-void
.end method

.method public d(Lfq/q;)V
    .locals 1
    .param p1    # Lfq/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->N(Lio/bidmachine/rendering/ad/view/AdView;Lfq/q;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lrq/t;

    const-string v2, "Ad loading timeout after display"

    invoke-direct {v1, v2}, Lrq/t;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/bidmachine/rendering/ad/view/AdView;->H(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->C(Lio/bidmachine/rendering/ad/view/AdView;)V

    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/view/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "placeholderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->E(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V

    :cond_0
    return-void
.end method

.method public f(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/view/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "placeholderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->T(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public g(Lfq/a;Lrq/t;)V
    .locals 1
    .param p1    # Lfq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adController"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p1, p2}, Lio/bidmachine/rendering/ad/view/AdView;->K(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public h(Lfq/a;)V
    .locals 1
    .param p1    # Lfq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adController"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/rendering/ad/view/AdView;->G(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public i(Lfq/a;)V
    .locals 1
    .param p1    # Lfq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adController"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/rendering/ad/view/AdView;->L(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public j(Lfq/a;)V
    .locals 1
    .param p1    # Lfq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adController"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/bidmachine/rendering/ad/view/AdView;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lio/bidmachine/rendering/ad/view/AdView;->I(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView$a;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/rendering/ad/view/AdView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/rendering/ad/view/AdView;->F(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
