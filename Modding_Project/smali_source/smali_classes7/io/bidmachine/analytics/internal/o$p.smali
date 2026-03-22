.class final Lio/bidmachine/analytics/internal/o$p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/o;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/o$p;->a:Lio/bidmachine/analytics/internal/o;

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
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o$p;->a:Lio/bidmachine/analytics/internal/o;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/analytics/internal/o;->e(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o$p;->a:Lio/bidmachine/analytics/internal/o;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/analytics/internal/o;->d(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/analytics/internal/o$p;->a:Lio/bidmachine/analytics/internal/o;

    .line 18
    .line 19
    invoke-static {v0}, Lio/bidmachine/analytics/internal/o;->f(Lio/bidmachine/analytics/internal/o;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/o$p;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
