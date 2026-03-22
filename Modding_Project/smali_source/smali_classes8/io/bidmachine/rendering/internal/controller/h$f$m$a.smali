.class public final Lio/bidmachine/rendering/internal/controller/h$f$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h$f$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lio/bidmachine/rendering/internal/controller/h;

.field final synthetic c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->c:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lsq/n;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$m$a;->c:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    new-instance v4, Lio/bidmachine/rendering/internal/controller/h$f$n;

    .line 16
    .line 17
    invoke-direct {v4, v0}, Lio/bidmachine/rendering/internal/controller/h$f$n;-><init>(Lsq/n;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0, v3, v2, v4}, Lio/bidmachine/rendering/internal/controller/h;->n(Lio/bidmachine/rendering/internal/controller/h;Lsq/n;ZZLjava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
