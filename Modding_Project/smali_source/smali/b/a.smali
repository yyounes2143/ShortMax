.class public final Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca/f$c;


# instance fields
.field public final a:Lca/f$c;

.field public final b:Lad-manager/a/d;


# direct methods
.method public constructor <init>(Lca/f$c;Lad-manager/a/d;)V
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
    iput-object p1, p0, Lb/a;->a:Lca/f$c;

    .line 10
    .line 11
    iput-object p2, p0, Lb/a;->b:Lad-manager/a/d;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lca/d;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/a;->a:Lca/f$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lca/f$c;->a(Lca/d;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lb/a;->b:Lad-manager/a/d;

    .line 14
    .line 15
    invoke-virtual {p1}, Lad-manager/a/d;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
