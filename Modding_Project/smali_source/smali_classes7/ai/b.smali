.class public final synthetic Lai/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

.field public final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/b;->a:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lai/b;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    iput p3, p0, Lai/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lai/b;->a:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lai/b;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    iget v2, p0, Lai/b;->c:I

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->Y(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
