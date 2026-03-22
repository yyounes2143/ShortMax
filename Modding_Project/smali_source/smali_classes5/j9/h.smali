.class public final Lj9/h;
.super Ljava/lang/Object;
.source "EventGDTLogger_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lj9/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lw8/b<",
            "La5/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lw8/b<",
            "La5/i;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/h;->a:Lls/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lls/a;)Lj9/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lw8/b<",
            "La5/i;",
            ">;>;)",
            "Lj9/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj9/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj9/h;-><init>(Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lw8/b;)Lj9/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/b<",
            "La5/i;",
            ">;)",
            "Lj9/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj9/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj9/f;-><init>(Lw8/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lj9/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/h;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw8/b;

    .line 8
    .line 9
    invoke-static {v0}, Lj9/h;->c(Lw8/b;)Lj9/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj9/h;->b()Lj9/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
