.class public final Lj9/x;
.super Ljava/lang/Object;
.source "ProcessDataManagerImpl_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lj9/w;",
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
            "Lj9/o0;",
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
            "Lj9/o0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/x;->a:Lls/a;

    .line 5
    .line 6
    iput-object p2, p0, Lj9/x;->b:Lls/a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lls/a;Lls/a;)Lj9/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Landroid/content/Context;",
            ">;",
            "Lls/a<",
            "Lj9/o0;",
            ">;)",
            "Lj9/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj9/x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lj9/x;-><init>(Lls/a;Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lj9/o0;)Lj9/w;
    .locals 1

    .line 1
    new-instance v0, Lj9/w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lj9/w;-><init>(Landroid/content/Context;Lj9/o0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lj9/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lj9/x;->a:Lls/a;

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
    iget-object v1, p0, Lj9/x;->b:Lls/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lls/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lj9/o0;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lj9/x;->c(Landroid/content/Context;Lj9/o0;)Lj9/w;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj9/x;->b()Lj9/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
