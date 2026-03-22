.class Lio/bidmachine/iab/mraid/MraidAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView;->l(Lio/bidmachine/iab/mraid/s;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lio/bidmachine/iab/mraid/s;

.field final synthetic f:Lio/bidmachine/iab/mraid/MraidAdView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView;IIIILio/bidmachine/iab/mraid/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->f:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->a:I

    .line 4
    .line 5
    iput p3, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->b:I

    .line 6
    .line 7
    iput p4, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->c:I

    .line 8
    .line 9
    iput p5, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->e:Lio/bidmachine/iab/mraid/s;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->a:I

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->b:I

    .line 4
    .line 5
    iget v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->c:I

    .line 6
    .line 7
    iget v3, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lsm/q;->t(IIII)Landroid/graphics/Point;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lio/bidmachine/iab/mraid/MraidAdView$a$a;

    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView$a$a;-><init>(Lio/bidmachine/iab/mraid/MraidAdView$a;Landroid/graphics/Point;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->f:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 19
    .line 20
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 21
    .line 22
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 23
    .line 24
    iget-object v4, p0, Lio/bidmachine/iab/mraid/MraidAdView$a;->e:Lio/bidmachine/iab/mraid/s;

    .line 25
    .line 26
    invoke-static {v2, v3, v0, v4, v1}, Lio/bidmachine/iab/mraid/MraidAdView;->q(Lio/bidmachine/iab/mraid/MraidAdView;IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
