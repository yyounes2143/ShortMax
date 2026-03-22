.class public final synthetic Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->b:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->b:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/a;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$loadIcons$1;->i(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Ljava/util/List;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
