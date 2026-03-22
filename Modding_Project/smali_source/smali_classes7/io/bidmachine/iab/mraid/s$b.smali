.class Lio/bidmachine/iab/mraid/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidWebView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/s;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/s$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/mraid/s;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/mraid/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/s$b;->a:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s$b;->a:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/s;->e(Lio/bidmachine/iab/mraid/s;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s$b;->a:Lio/bidmachine/iab/mraid/s;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/s;->m(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/s$b;->a:Lio/bidmachine/iab/mraid/s;

    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/iab/mraid/s;->n(Lio/bidmachine/iab/mraid/s;)Lio/bidmachine/iab/mraid/s$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lio/bidmachine/iab/mraid/s$a;->a(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
