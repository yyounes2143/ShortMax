.class public final synthetic Lwk/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwk/c;->a:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 5
    .line 6
    iput p2, p0, Lwk/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lwk/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lwk/c;->a:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    iget v1, p0, Lwk/c;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lwk/c;->c:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
