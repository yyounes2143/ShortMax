.class public final Lcom/inmobi/media/P7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/T7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/T7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    invoke-virtual {p1}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 9
    iget-object p1, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/inmobi/media/P0;->d()V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/inmobi/media/P0;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/P7;->a:Lcom/inmobi/media/T7;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p1, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/inmobi/media/A5;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
