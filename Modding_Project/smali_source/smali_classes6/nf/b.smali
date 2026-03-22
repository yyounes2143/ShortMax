.class public final synthetic Lnf/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ss/ttvideoengine/SeekCompletionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnf/b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lnf/b;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCompletion(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lnf/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lnf/b;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->c(ILkotlin/jvm/functions/Function1;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
