.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;
.super Ljava/lang/Object;
.source "ImmersionRedeemCodeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/search/RedeemCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "redeemCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->G(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;Lcom/startshorts/androidplayer/bean/search/RedeemCode;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
