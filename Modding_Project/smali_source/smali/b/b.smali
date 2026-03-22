.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca/f$e;


# instance fields
.field public final a:Lca/f$e;

.field public final b:Lad-manager/a/c;


# direct methods
.method public constructor <init>(Lca/f$e;Lad-manager/a/c;)V
    .locals 1

    .line 1
    const-string v0, "onFinishAction"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lb/b;->a:Lca/f$e;

    .line 10
    .line 11
    iput-object p2, p0, Lb/b;->b:Lad-manager/a/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lca/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b;->a:Lca/f$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lb/b;->b:Lad-manager/a/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Lad-manager/a/c;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lca/d;)Z
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/b;->a:Lca/f$e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lca/f$e;->b(Lca/d;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    :goto_0
    return p1
.end method

.method public final c(Lca/d;)V
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/b;->a:Lca/f$e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lca/f$e;->c(Lca/d;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
