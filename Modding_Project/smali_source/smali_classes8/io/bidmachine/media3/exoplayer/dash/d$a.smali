.class public final Lio/bidmachine/media3/exoplayer/dash/d$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Len/d$a;

.field private final b:I

.field private final c:Ltn/f$a;


# direct methods
.method public constructor <init>(Len/d$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/d$a;-><init>(Len/d$a;I)V

    return-void
.end method

.method public constructor <init>(Len/d$a;I)V
    .locals 1

    .line 2
    new-instance v0, Ltn/d$b;

    invoke-direct {v0}, Ltn/d$b;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/d$a;-><init>(Ltn/f$a;Len/d$a;I)V

    return-void
.end method

.method public constructor <init>(Ltn/f$a;Len/d$a;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 5
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->a:Len/d$a;

    .line 6
    iput p3, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/d$a;->h(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Lio/bidmachine/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/d$a;->g(I)Lio/bidmachine/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Lio/bidmachine/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/d$a;->f(Z)Lio/bidmachine/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ltn/f$a;->d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Lwn/k;Lkn/c;Ljn/b;I[ILvn/q;IJZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/f$c;Len/o;Lhn/b2;Lwn/e;)Lio/bidmachine/media3/exoplayer/dash/a;
    .locals 21
    .param p12    # Lio/bidmachine/media3/exoplayer/dash/f$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lwn/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/k;",
            "Lkn/c;",
            "Ljn/b;",
            "I[I",
            "Lvn/q;",
            "IJZ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/f$c;",
            "Len/o;",
            "Lhn/b2;",
            "Lwn/e;",
            ")",
            "Lio/bidmachine/media3/exoplayer/dash/a;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p13

    .line 4
    .line 5
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/d$a;->a:Len/d$a;

    .line 6
    .line 7
    invoke-interface {v2}, Len/d$a;->createDataSource()Len/d;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v12, v1}, Len/d;->c(Len/o;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/d;

    .line 17
    .line 18
    move-object v3, v1

    .line 19
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 20
    .line 21
    iget v15, v0, Lio/bidmachine/media3/exoplayer/dash/d$a;->b:I

    .line 22
    .line 23
    move-object/from16 v5, p1

    .line 24
    .line 25
    move-object/from16 v6, p2

    .line 26
    .line 27
    move-object/from16 v7, p3

    .line 28
    .line 29
    move/from16 v8, p4

    .line 30
    .line 31
    move-object/from16 v9, p5

    .line 32
    .line 33
    move-object/from16 v10, p6

    .line 34
    .line 35
    move/from16 v11, p7

    .line 36
    .line 37
    move-wide/from16 v13, p8

    .line 38
    .line 39
    move/from16 v16, p10

    .line 40
    .line 41
    move-object/from16 v17, p11

    .line 42
    .line 43
    move-object/from16 v18, p12

    .line 44
    .line 45
    move-object/from16 v19, p14

    .line 46
    .line 47
    move-object/from16 v20, p15

    .line 48
    .line 49
    invoke-direct/range {v3 .. v20}, Lio/bidmachine/media3/exoplayer/dash/d;-><init>(Ltn/f$a;Lwn/k;Lkn/c;Ljn/b;I[ILvn/q;ILen/d;JIZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/f$c;Lhn/b2;Lwn/e;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public f(Z)Lio/bidmachine/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ltn/f$a;->c(Z)Ltn/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(I)Lio/bidmachine/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ltn/f$a;->b(I)Ltn/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/d$a;->c:Ltn/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ltn/f$a;->a(Lyo/r$a;)Ltn/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
