.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;
.super Ljava/lang/Object;
.source "BindInfoFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/auth/BindInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/auth/BindInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/auth/BindInfo;I)V
    .locals 0

    .line 1
    const-string p3, "v"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->getProviderId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->M0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/auth/a$a;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->getProvider()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-direct {p3, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/a$a;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/auth/a;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
