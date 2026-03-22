.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/m;
.super Ljava/lang/Object;
.source "MyCollectionFragment2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1f

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_delete_success:I

    .line 14
    .line 15
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$layout;->layout_toast_del:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroid/widget/Toast;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const/16 p0, 0x11

    .line 46
    .line 47
    invoke-virtual {v1, p0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
