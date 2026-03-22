.class public final synthetic Lub/t5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/inmobi/media/nb;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/nb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/t5;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lub/t5;->b:Lcom/inmobi/media/nb;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/t5;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lub/t5;->b:Lcom/inmobi/media/nb;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/ob;->a(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/nb;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
