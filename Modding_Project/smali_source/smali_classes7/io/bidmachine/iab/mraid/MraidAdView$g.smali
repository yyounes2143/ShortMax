.class Lio/bidmachine/iab/mraid/MraidAdView$g;
.super Lio/bidmachine/iab/mraid/MraidAdView$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/mraid/MraidAdView$f;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidAdView$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidAdView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$g;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    .line 5
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->O(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 9
    .line 10
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->V(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidAdView;->D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->K(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/s;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/s;->w()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {p1, v0, v1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->h(Lio/bidmachine/iab/mraid/MraidAdView;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$g;->b:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->A(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
