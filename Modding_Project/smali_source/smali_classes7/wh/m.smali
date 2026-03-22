.class public final synthetic Lwh/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lwh/n;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lwh/n;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwh/m;->a:Lwh/n;

    .line 5
    .line 6
    iput-object p2, p0, Lwh/m;->b:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lwh/m;->a:Lwh/n;

    .line 2
    .line 3
    iget-object v1, p0, Lwh/m;->b:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 4
    .line 5
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lwh/n;->f(Lwh/n;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
