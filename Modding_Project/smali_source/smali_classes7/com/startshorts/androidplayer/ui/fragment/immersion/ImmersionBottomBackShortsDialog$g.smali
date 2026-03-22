.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;
.super Ljava/lang/Object;
.source "ImmersionBottomBackShortsDialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;->c(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->u0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->W(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getShortPlayId()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->j(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 3

    .line 1
    const-string v0, "shortPlayContentInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;

    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/r;

    .line 15
    .line 16
    invoke-direct {v2, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
