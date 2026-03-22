.class public final Lad-manager/e/l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lf/n;

.field public final synthetic e:Lca/f;


# direct methods
.method public constructor <init>(Lf/n;Lca/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/l;->d:Lf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/l;->e:Lca/f;

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

.method public static final b(Lca/f;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lca/f;->n()Lca/f$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "invokeOnCompletion exception -> "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1, p1}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lca/f;->p()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lad-manager/e/l;->d:Lf/n;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Lf/n;->h(Z)V

    .line 12
    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v3, Lca/k;->a:Lca/k;

    .line 17
    .line 18
    const/16 v8, 0xe

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const-string v4, "show OnCompletion"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-static/range {v3 .. v9}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v10, Lca/k;->a:Lca/k;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "show OnCompletion exception -> "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v3, 0x29

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    const/16 v15, 0xe

    .line 56
    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    invoke-static/range {v10 .. v16}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v2, Lg/c;->a:Landroid/os/Handler;

    .line 66
    .line 67
    iget-object v2, v0, Lad-manager/e/l;->e:Lca/f;

    .line 68
    .line 69
    new-instance v3, Lf/h;

    .line 70
    .line 71
    invoke-direct {v3, v2, v1}, Lf/h;-><init>(Lca/f;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lg/c;->a(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lad-manager/e/l;->d(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
