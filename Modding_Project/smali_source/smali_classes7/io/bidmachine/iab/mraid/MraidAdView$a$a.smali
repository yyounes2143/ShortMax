.class Lio/bidmachine/iab/mraid/MraidAdView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidAdView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Point;

.field final synthetic b:Lio/bidmachine/iab/mraid/MraidAdView$a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/MraidAdView$a;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView$a$a;->b:Lio/bidmachine/iab/mraid/MraidAdView$a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView$a$a;->a:Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$a$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$a$a$a;-><init>(Lio/bidmachine/iab/mraid/MraidAdView$a$a;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView$a$a;->b:Lio/bidmachine/iab/mraid/MraidAdView$a;

    .line 7
    .line 8
    iget-object v2, v1, Lio/bidmachine/iab/mraid/MraidAdView$a;->f:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 9
    .line 10
    iget-object v3, p0, Lio/bidmachine/iab/mraid/MraidAdView$a$a;->a:Landroid/graphics/Point;

    .line 11
    .line 12
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    iget-object v1, v1, Lio/bidmachine/iab/mraid/MraidAdView$a;->e:Lio/bidmachine/iab/mraid/s;

    .line 17
    .line 18
    invoke-static {v2, v4, v3, v1, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->f(Lio/bidmachine/iab/mraid/MraidAdView;IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
