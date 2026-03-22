.class public final synthetic Landroidx/activity/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Ljt/h;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljt/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/m;->a:Ljt/h;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/m;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/m;->a:Ljt/h;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/m;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->j(Ljt/h;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
