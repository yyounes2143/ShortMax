.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;
.super Ljava/lang/Object;
.source "AppLanguageFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;->b:Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;I)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment$b;->b:Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 14
    .line 15
    invoke-static {p1, p3, p2}, Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;->u0(Lcom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment;Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;Lcom/startshorts/androidplayer/bean/settings/AppLanguage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
