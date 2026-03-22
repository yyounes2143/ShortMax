.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;
.super Ljava/lang/Object;
.source "ImmersionIntroductionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->T(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->V(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
