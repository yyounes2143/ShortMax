.class final Lio/bidmachine/rendering/internal/controller/h$j;
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
        "Lio/bidmachine/rendering/internal/controller/h$g;",
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
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$j;->d:Lio/bidmachine/rendering/internal/controller/h;

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
.method public final b()Lio/bidmachine/rendering/internal/controller/h$g;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/controller/h$g;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$j;->d:Lio/bidmachine/rendering/internal/controller/h;

    .line 4
    .line 5
    const-string v2, "system"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/internal/controller/h;->i(Ljava/lang/String;)Ljq/b;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/controller/h$g;-><init>(Lio/bidmachine/rendering/internal/controller/h;Ljq/b;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/h$j;->b()Lio/bidmachine/rendering/internal/controller/h$g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
