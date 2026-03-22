.class final Lio/bidmachine/rendering/internal/view/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/view/f;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/view/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/f$b;-><init>(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method


# virtual methods
.method public c(Lfq/q;Lrq/t;)V
    .locals 2
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->d(Lio/bidmachine/rendering/internal/view/f;)Lsq/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v1, "onAdPhaseFailToLoad (%s) - %s"

    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lfq/q;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(Lfq/q;)V
    .locals 3
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/f;->d(Lio/bidmachine/rendering/internal/view/f;)Lsq/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdPhaseLoaded (%s)"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lfq/q;->c(Landroid/view/ViewGroup;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lio/bidmachine/rendering/internal/view/f$c;

    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/view/f$c;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/view/f$a;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lfq/q;->d(Lfq/s;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lio/bidmachine/rendering/internal/view/f$b;->a:Lio/bidmachine/rendering/internal/view/f;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/view/f;->o()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
