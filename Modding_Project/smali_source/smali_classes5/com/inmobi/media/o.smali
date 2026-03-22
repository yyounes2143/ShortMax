.class public final Lcom/inmobi/media/o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/inmobi/media/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/o;->b:Lcom/inmobi/media/n;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/o;->b:Lcom/inmobi/media/n;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0
.end method
