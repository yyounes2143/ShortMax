.class Lio/bidmachine/iab/mraid/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/e;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/mraid/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/e$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/e$c;-><init>(Lio/bidmachine/iab/mraid/e;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "MraidInterstitial"

    .line 5
    .line 6
    const-string v1, "ViewListener - onShown"

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/e;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onPlayVideo (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/f;->k(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public c(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onCalendarEvent (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/f;->j(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public d(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onCalendarEvent (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/f;->c(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/PrivacySheetParams;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "MraidInterstitial"

    .line 10
    .line 11
    const-string v1, "ViewListener - onOpenPrivacySheet (%s)"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 17
    .line 18
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 25
    .line 26
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 31
    .line 32
    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/f;->a(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public f(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "MraidInterstitial"

    .line 5
    .line 6
    const-string v1, "ViewListener - onLoaded"

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/e;->j()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public g(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onExpired (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/f;->e(Lio/bidmachine/iab/mraid/e;Lqm/a;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public h(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onShowFailed (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->h(Lio/bidmachine/iab/mraid/e;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/e;->i(Lqm/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public i(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lsm/d;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onOpenBrowser (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->a(Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/f;->d(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public j(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "MraidInterstitial"

    .line 5
    .line 6
    const-string v1, "ViewListener - onClose"

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 12
    .line 13
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->h(Lio/bidmachine/iab/mraid/e;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/e;->g()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/MraidView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "MraidInterstitial"

    .line 6
    .line 7
    const-string v1, "ViewListener - onLoadFailed (%s)"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 13
    .line 14
    invoke-static {p1}, Lio/bidmachine/iab/mraid/e;->h(Lio/bidmachine/iab/mraid/e;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/iab/mraid/e$c;->a:Lio/bidmachine/iab/mraid/e;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/e;->f(Lqm/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
