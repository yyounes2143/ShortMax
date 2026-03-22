.class public final Lcom/inmobi/media/Y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/ef;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/a9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/a9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Y8;->a:Lcom/inmobi/media/a9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Y8;->a:Lcom/inmobi/media/a9;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->p()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->h()Lcom/inmobi/media/D8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/b1;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Y8;->a:Lcom/inmobi/media/a9;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/a9;->a(Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
