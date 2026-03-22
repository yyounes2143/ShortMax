.class public final synthetic Lbl/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbl/a;->a:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 5
    .line 6
    iput p2, p0, Lbl/a;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbl/a;->a:Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;

    .line 2
    .line 3
    iget v1, p0, Lbl/a;->b:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->A(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILjava/lang/String;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
