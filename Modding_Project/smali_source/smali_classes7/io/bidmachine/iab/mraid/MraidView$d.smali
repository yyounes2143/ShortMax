.class Lio/bidmachine/iab/mraid/MraidView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidView;->X()V
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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->D(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->getMraidViewState()Lio/bidmachine/iab/mraid/MraidViewState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->RESIZED:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->a0(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->EXPANDED:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 26
    .line 27
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->b0(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->c0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 40
    .line 41
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->D(Lio/bidmachine/iab/mraid/MraidView;)Lio/bidmachine/iab/mraid/MraidAdView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->w()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$d;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 49
    .line 50
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->Y(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method
