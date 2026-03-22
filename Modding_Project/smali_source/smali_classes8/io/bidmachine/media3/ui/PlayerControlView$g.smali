.class final Lio/bidmachine/media3/ui/PlayerControlView$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field final synthetic f:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->f:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcn/m0;->a:I

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget p1, Lio/bidmachine/media3/ui/v0;->v:I

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    sget p1, Lio/bidmachine/media3/ui/v0;->Q:I

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->d:Landroid/widget/TextView;

    .line 35
    .line 36
    sget p1, Lio/bidmachine/media3/ui/v0;->t:I

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->e:Landroid/widget/ImageView;

    .line 45
    .line 46
    new-instance p1, Lio/bidmachine/media3/ui/n;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lio/bidmachine/media3/ui/n;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$g;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/ui/PlayerControlView$g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$g;->g(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lio/bidmachine/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/media3/ui/PlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/ui/PlayerControlView$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->e:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$g;->f:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->G(Lio/bidmachine/media3/ui/PlayerControlView;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
