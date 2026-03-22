.class public final synthetic Lci/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lci/g;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lci/g;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lci/g;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lci/g;->b:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->g0(Ljava/util/List;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
