.class Lio/bidmachine/iab/vast/activity/VastView$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltm/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->n(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastAd;Lio/bidmachine/iab/CacheControl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lio/bidmachine/iab/CacheControl;

.field final synthetic c:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;ZLio/bidmachine/iab/CacheControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->b:Lio/bidmachine/iab/CacheControl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/processor/VastAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->a:Z

    .line 4
    .line 5
    invoke-static {v0, p1, p2, v1}, Lio/bidmachine/iab/vast/activity/VastView;->r(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastAd;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 3
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->v0(Lio/bidmachine/iab/vast/activity/VastView;)Ltm/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$r;->b:Lio/bidmachine/iab/CacheControl;

    .line 8
    .line 9
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v2, "Error loading video after showing with %s - %s"

    .line 14
    .line 15
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lqm/a;->i(Ljava/lang/String;)Lqm/a;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->t(Lio/bidmachine/iab/vast/activity/VastView;Ltm/i;Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
