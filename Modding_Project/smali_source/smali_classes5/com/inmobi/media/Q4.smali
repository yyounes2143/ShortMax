.class public final Lcom/inmobi/media/Q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/d5;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Q4;->a:Lcom/inmobi/media/S4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/inmobi/media/ec;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/inmobi/media/Q4;->a:Lcom/inmobi/media/S4;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    check-cast p2, Lcom/inmobi/media/A5;

    .line 12
    .line 13
    const-string v0, "HtmlAdTracker"

    .line 14
    .line 15
    const-string v1, "fireImpression"

    .line 16
    .line 17
    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    check-cast p1, Lcom/inmobi/media/ec;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->m()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
