.class final Lio/bidmachine/rendering/internal/state/c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lnq/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/bidmachine/rendering/internal/state/c;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/state/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c$a;->d:Lio/bidmachine/rendering/internal/state/c;

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
.method public final b()Lnq/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lnq/a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/c$a;->d:Lio/bidmachine/rendering/internal/state/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/state/c;->n()Lio/bidmachine/rendering/internal/h;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Lnq/a;-><init>(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/h;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/state/c$a;->b()Lnq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
