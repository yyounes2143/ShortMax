.class public final Ld5/j;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry_Factory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Ld5/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Ld5/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Ld5/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld5/j;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Ld5/j;->b:Lls/a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lls/a;Lls/a;)Ld5/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Ld5/g;",
            ">;)",
            "Ld5/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld5/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ld5/j;-><init>(Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Ld5/i;
    .locals 1

    .line 1
    new-instance v0, Ld5/i;

    .line 2
    .line 3
    check-cast p1, Ld5/g;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Ld5/i;-><init>(Landroid/content/Context;Ld5/g;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public b()Ld5/i;
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/j;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Ld5/j;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Ld5/j;->c(Landroid/content/Context;Ljava/lang/Object;)Ld5/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld5/j;->b()Ld5/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
