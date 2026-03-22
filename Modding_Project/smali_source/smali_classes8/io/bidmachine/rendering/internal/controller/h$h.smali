.class final Lio/bidmachine/rendering/internal/controller/h$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h;-><init>(Landroid/content/Context;Lrq/c;Lsq/h;Lio/bidmachine/rendering/internal/state/c;Lfq/r;Leq/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lup/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/bidmachine/rendering/internal/controller/h;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/controller/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$h;->d:Lio/bidmachine/rendering/internal/controller/h;

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
.method public final b()Lup/b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lup/b;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$h;->d:Lio/bidmachine/rendering/internal/controller/h;

    .line 4
    .line 5
    invoke-static {v1}, Lio/bidmachine/rendering/internal/controller/h;->e(Lio/bidmachine/rendering/internal/controller/h;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "applicationContext"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$h;->d:Lio/bidmachine/rendering/internal/controller/h;

    .line 15
    .line 16
    invoke-static {v2}, Lio/bidmachine/rendering/internal/controller/h;->L(Lio/bidmachine/rendering/internal/controller/h;)Llq/a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Lup/b;-><init>(Landroid/content/Context;Llq/a;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h$h;->b()Lup/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
