.class public final synthetic Lce/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/act/ActResource;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/b;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 5
    .line 6
    iput-object p2, p0, Lce/b;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lce/b;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lce/b;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lce/b;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    iget-object v1, p0, Lce/b;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lce/b;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lce/b;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
