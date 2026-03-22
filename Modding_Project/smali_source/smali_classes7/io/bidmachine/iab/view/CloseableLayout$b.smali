.class Lio/bidmachine/iab/view/CloseableLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/view/CloseableLayout;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/view/CloseableLayout;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/view/CloseableLayout;->g(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$b;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/iab/view/CloseableLayout;->g(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lio/bidmachine/iab/view/CloseableLayout$a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
