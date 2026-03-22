.class Lmp/d$d;
.super Ljava/lang/Object;
.source "NativeAdObject.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmp/d$d;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sub-int/2addr p4, p2

    .line 5
    sub-int/2addr p5, p3

    .line 6
    iget p1, p0, Lmp/d$d;->b:I

    .line 7
    .line 8
    if-ne p4, p1, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lmp/d$d;->c:I

    .line 11
    .line 12
    if-ne p5, p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lmp/d$d;->a:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/View;

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iput p4, p0, Lmp/d$d;->b:I

    .line 27
    .line 28
    iput p5, p0, Lmp/d$d;->c:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    invoke-direct {p2, p4, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    .line 47
    iput p5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
