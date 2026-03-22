.class public final Lcom/inmobi/media/Hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/ef;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Hb;->a:Lcom/inmobi/media/ec;

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
    instance-of p1, p1, Lcom/inmobi/media/ec;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Hb;->a:Lcom/inmobi/media/ec;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/inmobi/media/Hb;->a:Lcom/inmobi/media/ec;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->c(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/Hb;->a:Lcom/inmobi/media/ec;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->c(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
