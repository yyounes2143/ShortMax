.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "TagDrawerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    .line 1
    const-string p2, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    if-eq p2, p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    if-eq p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->a:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->d:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->a:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentTagDrawerListBinding;->d:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
