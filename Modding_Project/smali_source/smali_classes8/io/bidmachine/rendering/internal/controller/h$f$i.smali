.class public final Lio/bidmachine/rendering/internal/controller/h$f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h$f;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltp/q<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/controller/h;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/controller/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$i;->a:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/h$f$i;->c(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$i;->a:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/h;->X()Lfq/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lfq/s;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
