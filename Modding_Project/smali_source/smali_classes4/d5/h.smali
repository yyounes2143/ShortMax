.class public final Ld5/h;
.super Ljava/lang/Object;
.source "CreationContextFactory_Factory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Ld5/g;",
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
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lm5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;Lls/a;Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld5/h;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Ld5/h;->b:Lls/a;

    .line 7
    .line 8
    iput-object p3, p0, Ld5/h;->c:Lls/a;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lls/a;Lls/a;Lls/a;)Ld5/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;",
            "Lls/a<",
            "Lm5/a;",
            ">;)",
            "Ld5/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld5/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ld5/h;-><init>(Lls/a;Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lm5/a;Lm5/a;)Ld5/g;
    .locals 1

    .line 1
    new-instance v0, Ld5/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ld5/g;-><init>(Landroid/content/Context;Lm5/a;Lm5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Ld5/g;
    .locals 3

    .line 1
    iget-object v0, p0, Ld5/h;->a:Lls/a;

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
    iget-object v1, p0, Ld5/h;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lm5/a;

    .line 16
    .line 17
    iget-object v2, p0, Ld5/h;->c:Lls/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lls/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lm5/a;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Ld5/h;->c(Landroid/content/Context;Lm5/a;Lm5/a;)Ld5/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld5/h;->b()Ld5/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
