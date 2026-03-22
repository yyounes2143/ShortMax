.class public final Lad-manager/c/a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Ld/a;

.field public final synthetic e:Lca/d;

.field public final synthetic f:Lca/f;


# direct methods
.method public constructor <init>(Ld/a;Lca/d;Lca/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/c/a;->d:Ld/a;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/c/a;->e:Lca/d;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/c/a;->f:Lca/f;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lad-manager/c/a;->d:Ld/a;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/c/a;->e:Lca/d;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/c/a;->f:Lca/f;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ld/a;->g(Ld/a;Lca/d;Lca/f;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object v0
.end method
