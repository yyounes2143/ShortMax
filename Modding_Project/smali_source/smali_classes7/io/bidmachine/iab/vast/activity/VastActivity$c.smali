.class Lio/bidmachine/iab/vast/activity/VastActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltm/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastActivity;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/vast/activity/VastActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/activity/VastActivity$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity$c;-><init>(Lio/bidmachine/iab/vast/activity/VastActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;Z)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->o(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;I)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/a;->F()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-le p1, p2, :cond_0

    .line 7
    .line 8
    move p3, p1

    .line 9
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 10
    .line 11
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->m(Lio/bidmachine/iab/vast/activity/VastActivity;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;Lsm/d;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2, p3, p4}, Ltm/a;->d(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Lsm/d;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public d(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2}, Ltm/a;->a(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2}, Ltm/a;->c(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public f(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$c;->a:Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lio/bidmachine/iab/vast/activity/VastActivity;->n(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
