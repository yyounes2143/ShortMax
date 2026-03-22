.class public final Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;
.super Lyd/d;
.source "LibraryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;JJLandroid/util/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->c(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;JJLandroid/util/LongSparseArray;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;JJLandroid/util/LongSparseArray;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "classMap"

    .line 2
    .line 3
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;J)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, p5}, Landroidx/core/util/LongSparseArrayKt;->putAll(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;II)V

    .line 32
    .line 33
    .line 34
    const-string p1, "filter_pop"

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->g0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->getLibClass()Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v1, "getSupportFragmentManager(...)"

    .line 39
    .line 40
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->f0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->e0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 62
    .line 63
    new-instance v10, Lzh/f;

    .line 64
    .line 65
    invoke-direct {v10, v1}, Lzh/f;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v10}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->P(Landroidx/fragment/app/FragmentManager;Lcom/startshorts/androidplayer/bean/library/LibraryClass;JJLandroid/util/LongSparseArray;Lat/n;)V

    .line 69
    .line 70
    .line 71
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 72
    .line 73
    const/16 v16, 0x6

    .line 74
    .line 75
    const/16 v17, 0x0

    .line 76
    .line 77
    const-string v12, "discover_library_pop_click"

    .line 78
    .line 79
    const/4 v13, 0x0

    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
