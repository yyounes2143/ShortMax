.class public final Le/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt/b;


# instance fields
.field public final synthetic a:Lkt/f;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lkt/f;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c;->a:Lkt/f;

    .line 2
    .line 3
    iput-object p2, p0, Le/c;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/c;->a:Lkt/f;

    .line 2
    .line 3
    new-instance v1, Le/a;

    .line 4
    .line 5
    iget-object v2, p0, Le/c;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Le/a;-><init>(Lkt/c;Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, p2}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1
.end method
