.class public final synthetic Lti/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lti/t0;->a:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lti/t0;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lti/t0;->a:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lti/t0;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    check-cast p3, Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->d0(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
