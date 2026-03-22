.class public final synthetic Lhl/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhl/a;->a:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 5
    .line 6
    iput-boolean p2, p0, Lhl/a;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lhl/a;->c:I

    .line 9
    .line 10
    iput p4, p0, Lhl/a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lhl/a;->a:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 2
    .line 3
    iget-boolean v1, p0, Lhl/a;->b:Z

    .line 4
    .line 5
    iget v2, p0, Lhl/a;->c:I

    .line 6
    .line 7
    iget v3, p0, Lhl/a;->d:I

    .line 8
    .line 9
    check-cast p1, Lkotlin/Result;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILkotlin/Result;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
