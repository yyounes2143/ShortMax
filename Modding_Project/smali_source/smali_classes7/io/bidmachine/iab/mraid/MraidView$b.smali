.class Lio/bidmachine/iab/mraid/MraidView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsm/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/MraidView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(FJJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p4, v0

    .line 4
    long-to-int p4, p4

    .line 5
    div-long/2addr p2, v0

    .line 6
    long-to-int p2, p2

    .line 7
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 8
    .line 9
    invoke-static {p3}, Lio/bidmachine/iab/mraid/MraidView;->n(Lio/bidmachine/iab/mraid/MraidView;)Lsm/l;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 16
    .line 17
    invoke-static {p3}, Lio/bidmachine/iab/mraid/MraidView;->n(Lio/bidmachine/iab/mraid/MraidView;)Lsm/l;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3, p1, p2, p4}, Lsm/l;->r(FII)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->n(Lio/bidmachine/iab/mraid/MraidView;)Lsm/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->n(Lio/bidmachine/iab/mraid/MraidView;)Lsm/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lsm/i;->l()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 19
    .line 20
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->D(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->R()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->O(Lio/bidmachine/iab/mraid/MraidView;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 39
    .line 40
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->P(Lio/bidmachine/iab/mraid/MraidView;)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$b;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 50
    .line 51
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->V(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
