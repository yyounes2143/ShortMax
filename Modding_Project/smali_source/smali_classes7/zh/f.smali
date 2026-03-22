.class public final synthetic Lzh/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzh/f;->a:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lzh/f;->a:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    check-cast p2, Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    move-object v5, p3

    .line 16
    check-cast v5, Landroid/util/LongSparseArray;

    .line 17
    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->b(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;JJLandroid/util/LongSparseArray;)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
