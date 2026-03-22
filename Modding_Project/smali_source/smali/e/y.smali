.class public final Le/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lia/c;


# instance fields
.field public final synthetic a:Lca/d;

.field public final synthetic b:Le/k0;

.field public final synthetic c:Lca/f;


# direct methods
.method public constructor <init>(Lca/d;Le/k0;Lca/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/y;->a:Lca/d;

    .line 2
    .line 3
    iput-object p2, p0, Le/y;->b:Le/k0;

    .line 4
    .line 5
    iput-object p3, p0, Le/y;->c:Lca/f;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onNativeAdDestroy -> adInfo "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Le/y;->a:Lca/d;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "AdManagerAdmobShower"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Le/y;->b:Le/k0;

    .line 25
    .line 26
    iget-object v0, v0, Le/k0;->a:Le/t;

    .line 27
    .line 28
    iget-object v1, p0, Le/y;->a:Lca/d;

    .line 29
    .line 30
    invoke-virtual {v1}, Lca/d;->i()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lda/f;->N(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Le/y;->c:Lca/f;

    .line 38
    .line 39
    invoke-virtual {v0}, Lca/f;->p()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Le/y;->b:Le/k0;

    .line 43
    .line 44
    iget-object v1, p0, Le/y;->a:Lca/d;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Le/k0;->h(Lca/d;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
