.class public final Lad-manager/b/t;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public h:Lca/i;

.field public i:Ljava/lang/String;

.field public j:J

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lca/i;

.field public m:I


# direct methods
.method public constructor <init>(Lca/i;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/b/t;->l:Lca/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lad-manager/b/t;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lad-manager/b/t;->m:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lad-manager/b/t;->m:I

    .line 9
    .line 10
    iget-object p1, p0, Lad-manager/b/t;->l:Lca/i;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lca/i;->j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
