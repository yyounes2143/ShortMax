.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;
.super Lmk/b;
.source "HomeCheckInDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;->a:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lmk/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lmk/b;->a(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;->a:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->o0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lmk/b;->b(ZLjava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;->a:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->o0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
