.class Lio/bidmachine/iab/mraid/MraidView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/view/CloseableLayout$a;


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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 2
    .line 3
    const-string v1, "Close button clicked"

    .line 4
    .line 5
    invoke-static {v1}, Lqm/a;->i(Ljava/lang/String;)Lqm/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidView;->v(Lio/bidmachine/iab/mraid/MraidView;Lqm/a;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidView$c;->a:Lio/bidmachine/iab/mraid/MraidView;

    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidView;->Y(Lio/bidmachine/iab/mraid/MraidView;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
