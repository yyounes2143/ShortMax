.class public final synthetic Lck/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lck/e;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    iput-object p2, p0, Lck/e;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;

    .line 7
    .line 8
    iput-object p3, p0, Lck/e;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lck/e;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    iget-object v1, p0, Lck/e;->b:Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;

    .line 4
    .line 5
    iget-object v2, p0, Lck/e;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
