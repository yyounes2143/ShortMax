.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;
.super Ljava/lang/Object;
.source "SwitchInfoFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;I)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->O0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->P0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
