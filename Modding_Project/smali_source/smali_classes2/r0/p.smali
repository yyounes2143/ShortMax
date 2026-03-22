.class final Lr0/p;
.super Lr0/m;
.source "HardwareBitmaps.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/p$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lr0/p$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr0/p$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr0/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr0/p;->a:Lr0/p$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lr0/q;)V
    .locals 0
    .param p1    # Lr0/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lr0/m;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a(Ln0/g;)Z
    .locals 3
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ln0/g;->b()Ln0/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ln0/c$a;

    .line 6
    .line 7
    const v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Ln0/c$a;

    .line 13
    .line 14
    iget v0, v0, Ln0/c$a;->a:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    const/16 v1, 0x64

    .line 19
    .line 20
    if-le v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ln0/g;->a()Ln0/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    instance-of v0, p1, Ln0/c$a;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Ln0/c$a;

    .line 31
    .line 32
    iget v2, p1, Ln0/c$a;->a:I

    .line 33
    .line 34
    :cond_1
    if-le v2, v1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_1
    return p1
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Lr0/l;->a:Lr0/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lr0/l;->b(Lr0/q;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method
