.class Lio/bidmachine/iab/vast/activity/VastView$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->n0(Ltm/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->v0(Lio/bidmachine/iab/vast/activity/VastView;)Ltm/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$s;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 8
    .line 9
    iget-object v2, v2, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 10
    .line 11
    const-string v3, "Close button clicked"

    .line 12
    .line 13
    invoke-static {v3}, Lqm/a;->i(Ljava/lang/String;)Lqm/a;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/iab/vast/activity/VastView;->t(Lio/bidmachine/iab/vast/activity/VastView;Ltm/i;Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
