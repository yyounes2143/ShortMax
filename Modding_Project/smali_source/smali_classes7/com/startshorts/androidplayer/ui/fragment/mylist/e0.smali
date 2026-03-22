.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/e0;
.super Ljava/lang/Object;
.source "MyListMixFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e0;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/startshorts/androidplayer/R$string;->str_add_to_mylist:I

    .line 9
    .line 10
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/startshorts/androidplayer/R$layout;->layout_toast_collect_result:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroid/widget/Toast;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    const/16 p0, 0x11

    .line 41
    .line 42
    invoke-virtual {v1, p0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
