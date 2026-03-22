.class final Lio/bidmachine/iab/vast/activity/VastView$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a0"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/activity/VastView$m;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$a0;-><init>(Lio/bidmachine/iab/vast/activity/VastView;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/mraid/e;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b(Lio/bidmachine/iab/mraid/e;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 4
    .line 5
    iget-boolean v1, v1, Lio/bidmachine/iab/vast/activity/VastView$B;->j:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->c0(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/mraid/e;->x(Landroid/view/ViewGroup;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public c(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
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
    return-void
.end method

.method public d(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
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
    invoke-interface {p3}, Lsm/d;->c()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 5
    .line 6
    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->q:Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 7
    .line 8
    invoke-static {p1, p3, p2}, Lio/bidmachine/iab/vast/activity/VastView;->G(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->W(Lio/bidmachine/iab/vast/activity/VastView;Lqm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lio/bidmachine/iab/mraid/e;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public g(Lio/bidmachine/iab/mraid/e;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->m1(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->N(Lio/bidmachine/iab/vast/activity/VastView;Lqm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Lio/bidmachine/iab/mraid/e;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$a0;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->N(Lio/bidmachine/iab/vast/activity/VastView;Lqm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;Lsm/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
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
    return-void
.end method

.method public k(Lio/bidmachine/iab/mraid/e;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
