.class public final synthetic Lub/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/inmobi/media/Fa;

.field public final synthetic c:Lcom/inmobi/media/za;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/Fa;Lcom/inmobi/media/za;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/g0;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lub/g0;->b:Lcom/inmobi/media/Fa;

    .line 7
    .line 8
    iput-object p3, p0, Lub/g0;->c:Lcom/inmobi/media/za;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/g0;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lub/g0;->b:Lcom/inmobi/media/Fa;

    .line 4
    .line 5
    iget-object v2, p0, Lub/g0;->c:Lcom/inmobi/media/za;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Fa;->a(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/Fa;Lcom/inmobi/media/za;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
