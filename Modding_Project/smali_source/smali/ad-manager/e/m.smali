.class public final Lad-manager/e/m;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public h:Lf/n;

.field public i:Lca/e;

.field public j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public k:J

.field public l:J

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lf/n;

.field public o:I


# direct methods
.method public constructor <init>(Lf/n;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/m;->n:Lf/n;

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
    .locals 3

    .line 1
    iput-object p1, p0, Lad-manager/e/m;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lad-manager/e/m;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lad-manager/e/m;->o:I

    .line 9
    .line 10
    iget-object p1, p0, Lad-manager/e/m;->n:Lf/n;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2, p0}, Lf/n;->f(Lf/n;Lca/e;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
