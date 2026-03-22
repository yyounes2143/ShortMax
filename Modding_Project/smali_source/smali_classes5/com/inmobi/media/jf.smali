.class public final Lcom/inmobi/media/jf;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/lf;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/lf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/jf;->a:Lcom/inmobi/media/lf;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/gf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/jf;->a:Lcom/inmobi/media/lf;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/gf;-><init>(Lcom/inmobi/media/lf;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
