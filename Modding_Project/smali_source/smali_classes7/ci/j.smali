.class public final synthetic Lci/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lci/j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lci/j;->a:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    check-cast p3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->Y(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
