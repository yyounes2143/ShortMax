.class public Lr3/m$a;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public final e:Lr3/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/m$b<",
            "TK;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lo2/a;Lr3/m$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo2/a<",
            "TV;>;",
            "Lr3/m$b<",
            "TK;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lr3/m$a;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p2}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lo2/a;

    .line 19
    .line 20
    iput-object p1, p0, Lr3/m$a;->b:Lo2/a;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lr3/m$a;->c:I

    .line 24
    .line 25
    iput-boolean p1, p0, Lr3/m$a;->d:Z

    .line 26
    .line 27
    iput-object p3, p0, Lr3/m$a;->e:Lr3/m$b;

    .line 28
    .line 29
    iput p1, p0, Lr3/m$a;->f:I

    .line 30
    .line 31
    iput p4, p0, Lr3/m$a;->g:I

    .line 32
    .line 33
    return-void
.end method

.method public static a(Ljava/lang/Object;Lo2/a;ILr3/m$b;)Lr3/m$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lo2/a<",
            "TV;>;I",
            "Lr3/m$b<",
            "TK;>;)",
            "Lr3/m$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lr3/m$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p3, p2}, Lr3/m$a;-><init>(Ljava/lang/Object;Lo2/a;Lr3/m$b;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lo2/a;Lr3/m$b;)Lr3/m$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lo2/a<",
            "TV;>;",
            "Lr3/m$b<",
            "TK;>;)",
            "Lr3/m$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {p0, p1, v0, p2}, Lr3/m$a;->a(Ljava/lang/Object;Lo2/a;ILr3/m$b;)Lr3/m$a;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
