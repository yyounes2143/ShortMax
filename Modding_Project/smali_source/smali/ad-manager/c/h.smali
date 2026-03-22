.class public final Lad-manager/c/h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lda/f;

.field public final synthetic e:Lca/e;


# direct methods
.method public constructor <init>(Lda/f;Lca/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/c/h;->d:Lda/f;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/c/h;->e:Lca/e;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lga/a;->a:Lga/a;

    .line 9
    .line 10
    iget-object v0, p0, Lad-manager/c/h;->d:Lda/f;

    .line 11
    .line 12
    iget-object v1, p0, Lad-manager/c/h;->e:Lca/e;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "createAdList -> format("

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lad-manager/c/h;->e:Lca/e;

    .line 26
    .line 27
    invoke-virtual {v2}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ") adUnitId("

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lad-manager/c/h;->e:Lca/e;

    .line 40
    .line 41
    invoke-virtual {v2}, Lca/e;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x29

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method
