.class abstract Lio/bidmachine/iab/mraid/MraidAdView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidAdView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$f;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method

.method public static synthetic l(Lio/bidmachine/iab/mraid/MraidAdView$f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$f;->n(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/iab/mraid/MraidAdView$f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$f;->o(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->n(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->f(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "MraidAdView"

    .line 5
    .line 6
    const-string v2, "Callback - onLoaded"

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->u(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(Lqm/a;)V
    .locals 3
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onError: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->j(Lio/bidmachine/iab/mraid/MraidAdView;Lqm/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Callback - onPlayVideo: %s"

    .line 6
    .line 7
    const-string v2, "MraidAdView"

    .line 8
    .line 9
    invoke-static {v2, v1, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 20
    .line 21
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 26
    .line 27
    const-string v3, "UTF-8"

    .line 28
    .line 29
    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->j(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-static {v2, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onOpen: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->h(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onStorePicture: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->I(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/w;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/w;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 30
    .line 31
    new-instance v1, Lio/bidmachine/iab/mraid/b;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lio/bidmachine/iab/mraid/b;-><init>(Lio/bidmachine/iab/mraid/MraidAdView$f;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->i(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lyq/d;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onOpenPrivacySheet: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->r(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onCalendarEvent: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->I(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/w;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/w;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 30
    .line 31
    new-instance v1, Lio/bidmachine/iab/mraid/c;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lio/bidmachine/iab/mraid/c;-><init>(Lio/bidmachine/iab/mraid/MraidAdView$f;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->i(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lyq/d;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/m;)V
    .locals 3
    .param p1    # Lio/bidmachine/iab/mraid/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MraidAdView"

    .line 6
    .line 7
    const-string v2, "Callback - onOrientation: %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->P()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->b(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidViewState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 37
    .line 38
    invoke-interface {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->a(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/m;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onClose()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "MraidAdView"

    .line 5
    .line 6
    const-string v2, "Callback - onClose"

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$f;->a:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->z(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
