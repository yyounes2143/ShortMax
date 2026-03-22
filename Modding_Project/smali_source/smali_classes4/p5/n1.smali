.class public Lp5/n1;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lp5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp5/n1$a;
    }
.end annotation


# instance fields
.field private final a:Lb7/d;

.field private final b:Lcom/google/android/exoplayer2/u1$b;

.field private final c:Lcom/google/android/exoplayer2/u1$d;

.field private final d:Lp5/n1$a;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lp5/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lb7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/p<",
            "Lp5/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/l1;

.field private h:Lb7/m;

.field private i:Z


# direct methods
.method public constructor <init>(Lb7/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lb7/d;

    .line 9
    .line 10
    iput-object v0, p0, Lp5/n1;->a:Lb7/d;

    .line 11
    .line 12
    new-instance v0, Lb7/p;

    .line 13
    .line 14
    invoke-static {}, Lb7/s0;->K()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lp5/w;

    .line 19
    .line 20
    invoke-direct {v2}, Lp5/w;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Lb7/p;-><init>(Landroid/os/Looper;Lb7/d;Lb7/p$b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lp5/n1;->f:Lb7/p;

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/u1$b;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/exoplayer2/u1$b;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lp5/n1;->b:Lcom/google/android/exoplayer2/u1$b;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/u1$d;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/android/exoplayer2/u1$d;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lp5/n1;->c:Lcom/google/android/exoplayer2/u1$d;

    .line 41
    .line 42
    new-instance v0, Lp5/n1$a;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lp5/n1$a;-><init>(Lcom/google/android/exoplayer2/u1$b;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 48
    .line 49
    new-instance p1, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lp5/n1;->e:Landroid/util/SparseArray;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic A0(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->a2(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A1(Lp5/b$a;Ljava/lang/String;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->e(Lp5/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic A2(Lp5/b$a;JILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lp5/b;->k0(Lp5/b$a;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->R1(Lp5/b$a;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic B1(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->S(Lp5/b$a;Lr5/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lp5/b;->a(Lp5/b$a;ILr5/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic B2(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lp5/b;->R(Lp5/b$a;Lcom/google/android/exoplayer2/v0;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->p(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    invoke-interface {p3, p0, p2, p1}, Lp5/b;->h(Lp5/b$a;ILcom/google/android/exoplayer2/v0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic C0(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->T1(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic C1(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->j0(Lp5/b$a;Lr5/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lp5/b;->H(Lp5/b$a;ILr5/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic C2(Lp5/b$a;Lc7/z;Lp5/b;)V
    .locals 6

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->b0(Lp5/b$a;Lc7/z;)V

    .line 2
    .line 3
    .line 4
    iget v2, p1, Lc7/z;->a:I

    .line 5
    .line 6
    iget v3, p1, Lc7/z;->b:I

    .line 7
    .line 8
    iget v4, p1, Lc7/z;->c:I

    .line 9
    .line 10
    iget v5, p1, Lc7/z;->d:F

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    move-object v1, p0

    .line 14
    invoke-interface/range {v0 .. v5}, Lp5/b;->j(Lp5/b$a;IIIF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic D0(Lp5/b$a;Lcom/google/android/exoplayer2/l1$b;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->H1(Lp5/b$a;Lcom/google/android/exoplayer2/l1$b;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D1(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1}, Lp5/b;->w0(Lp5/b$a;Lcom/google/android/exoplayer2/v0;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->m0(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-interface {p3, p0, p2, p1}, Lp5/b;->h(Lp5/b$a;ILcom/google/android/exoplayer2/v0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic D2(Lp5/b$a;FLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->l(Lp5/b$a;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E0(Lp5/b$a;Lcom/google/android/exoplayer2/j;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->L1(Lp5/b$a;Lcom/google/android/exoplayer2/j;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E1(Lp5/b$a;JLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->d0(Lp5/b$a;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E2(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->F(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->W1(Lp5/b$a;ZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->u(Lp5/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic F2(Lcom/google/android/exoplayer2/l1;Lp5/b;Lb7/l;)V
    .locals 2

    .line 1
    new-instance v0, Lp5/b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lp5/n1;->e:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {v0, p3, v1}, Lp5/b$b;-><init>(Lb7/l;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1, v0}, Lp5/b;->T(Lcom/google/android/exoplayer2/l1;Lp5/b$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic G0(Lp5/b$a;JLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->E1(Lp5/b$a;JLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G1(Lp5/b$a;IJJLp5/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lp5/b;->O(Lp5/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private G2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/b1;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lp5/b1;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x404

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lp5/n1;->f:Lb7/p;

    .line 16
    .line 17
    invoke-virtual {v0}, Lb7/p;->j()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic H0(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->o2(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H1(Lp5/b$a;Lcom/google/android/exoplayer2/l1$b;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->W(Lp5/b$a;Lcom/google/android/exoplayer2/l1$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I0(Lp5/b$a;Lcom/google/android/exoplayer2/y0;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->b2(Lp5/b$a;Lcom/google/android/exoplayer2/y0;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I1(Lp5/b$a;IJJLp5/b;)V
    .locals 7

    .line 1
    move-object v0, p6

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move-wide v5, p4

    .line 6
    invoke-interface/range {v0 .. v6}, Lp5/b;->D(Lp5/b$a;IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic J0(Lp5/b$a;IILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->r2(Lp5/b$a;IILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic J1(Lp5/b$a;Ljava/util/List;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->C(Lp5/b$a;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K0(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->V1(Lp5/b$a;ZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K1(Lp5/b$a;Lp6/f;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->t(Lp5/b$a;Lp6/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L0(Lp5/b$a;Lc7/z;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->C2(Lp5/b$a;Lc7/z;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L1(Lp5/b$a;Lcom/google/android/exoplayer2/j;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->z(Lp5/b$a;Lcom/google/android/exoplayer2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->O1(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M1(Lp5/b$a;IZLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->d(Lp5/b$a;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N0(Lp5/b$a;Ljava/lang/Object;JLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp5/n1;->m2(Lp5/b$a;Ljava/lang/Object;JLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N1(Lp5/b$a;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->Q(Lp5/b$a;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O0(Lp5/b$a;IJLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp5/n1;->U1(Lp5/b$a;IJLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic O1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->a0(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P0(Lp5/b$a;ZILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->e2(Lp5/b$a;ZILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic P1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->I(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q0(Lp5/b$a;IZLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->M1(Lp5/b$a;IZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Q1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->h0(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R0(Lp5/b$a;Lcom/google/android/exoplayer2/v1;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->u2(Lp5/b$a;Lcom/google/android/exoplayer2/v1;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic R1(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Lp5/b;->E(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lp5/b;->o(Lp5/b$a;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic S0(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->h2(Lp5/b$a;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic S1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->m(Lp5/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T0(Lp5/n1;Lcom/google/android/exoplayer2/l1;Lp5/b;Lb7/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lp5/n1;->F2(Lcom/google/android/exoplayer2/l1;Lp5/b;Lb7/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic T1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->X(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U0(Lp5/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->d2(Lp5/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic U1(Lp5/b$a;IJLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lp5/b;->U(Lp5/b$a;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V0(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->v2(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic V1(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->g(Lp5/b$a;Z)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p0, p1}, Lp5/b;->s0(Lp5/b$a;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic W0(Lp5/b$a;Lcom/google/android/exoplayer2/k1;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->f2(Lp5/b$a;Lcom/google/android/exoplayer2/k1;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic W1(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->v(Lp5/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X0(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->C1(Lp5/b$a;Lr5/e;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic X1(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->k(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y0(Lp5/b$a;Lp6/f;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->K1(Lp5/b$a;Lp6/f;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Y1(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->V(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z0(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->D1(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Z1(Lp5/b$a;Ln6/h;Ln6/i;Ljava/io/IOException;ZLp5/b;)V
    .locals 6

    .line 1
    move-object v0, p5

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Lp5/b;->c(Lp5/b$a;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a1(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->B2(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic a2(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->n0(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->S1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b2(Lp5/b$a;Lcom/google/android/exoplayer2/y0;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->i(Lp5/b$a;Lcom/google/android/exoplayer2/y0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c1(Lp5/b$a;Ljava/util/List;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->J1(Lp5/b$a;Ljava/util/List;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic c2(Lp5/b$a;Lcom/google/android/exoplayer2/z0;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->A(Lp5/b$a;Lcom/google/android/exoplayer2/z0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lp5/b$a;Ljava/lang/String;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->A1(Lp5/b$a;Ljava/lang/String;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d1(Lp5/n1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp5/n1;->G2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic d2(Lp5/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->c0(Lp5/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->B1(Lp5/b$a;Lr5/e;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e1(Lp5/b$a;Ljava/lang/String;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->x2(Lp5/b$a;Ljava/lang/String;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e2(Lp5/b$a;ZILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->r0(Lp5/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lp5/b$a;JILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp5/n1;->A2(Lp5/b$a;JILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f1(Lp5/b$a;ILcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp5/n1;->l2(Lp5/b$a;ILcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic f2(Lp5/b$a;Lcom/google/android/exoplayer2/k1;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->g0(Lp5/b$a;Lcom/google/android/exoplayer2/k1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->F1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->P1(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic g2(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->f0(Lp5/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->X1(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->x1(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic h2(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->Z(Lp5/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->g2(Lp5/b$a;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i1(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lp5/n1;->z1(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic i2(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->N(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lp5/b;Lb7/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->w1(Lp5/b;Lb7/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j1(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lp5/n1;->w2(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic j2(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->r(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->j2(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k1(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->i2(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic k2(Lp5/b$a;ZILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->B(Lp5/b$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->z2(Lp5/b$a;Lr5/e;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l1(Lp5/b$a;IJJLp5/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lp5/n1;->G1(Lp5/b$a;IJJLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l2(Lp5/b$a;ILcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1}, Lp5/b;->o0(Lp5/b$a;I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, p0, p2, p3, p1}, Lp5/b;->G(Lp5/b$a;Lcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic m0(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->E2(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m1(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->q2(Lp5/b$a;ZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic m2(Lp5/b$a;Ljava/lang/Object;JLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p4, p0, p1, p2, p3}, Lp5/b;->J(Lp5/b$a;Ljava/lang/Object;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lp5/b$a;Lcom/google/android/exoplayer2/z0;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->c2(Lp5/b$a;Lcom/google/android/exoplayer2/z0;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp5/n1;->Q1(Lp5/b$a;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic n2(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->v0(Lp5/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lp5/b$a;ZILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->k2(Lp5/b$a;ZILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic o2(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->s(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->s2(Lp5/b$a;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic p2(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->P(Lp5/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lp5/b$a;Lz6/f0;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->t2(Lp5/b$a;Lz6/f0;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lp5/n1$a;->f(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/u1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p1, Ln6/j;->a:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, p0, Lp5/n1;->b:Lcom/google/android/exoplayer2/u1$b;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/u1;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/u1$b;)Lcom/google/android/exoplayer2/u1$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Lcom/google/android/exoplayer2/u1$b;->c:I

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0, p1}, Lp5/n1;->p1(Lcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_2
    :goto_1
    iget-object p1, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l1;->x()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v1, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentTimeline()Lcom/google/android/exoplayer2/u1;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u1;->t()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ge p1, v2, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/u1;->a:Lcom/google/android/exoplayer2/u1;

    .line 57
    .line 58
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lp5/n1;->p1(Lcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private static synthetic q2(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->t0(Lp5/b$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->y2(Lp5/b$a;Lr5/e;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private r1()Lp5/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp5/n1$a;->e()Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic r2(Lp5/b$a;IILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0, p1, p2}, Lp5/b;->Y(Lp5/b$a;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lp5/b$a;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->N1(Lp5/b$a;Ln6/i;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lp5/n1$a;->f(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/u1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/u1;->a:Lcom/google/android/exoplayer2/u1;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lp5/n1;->p1(Lcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1

    .line 28
    :cond_1
    iget-object p2, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 29
    .line 30
    invoke-interface {p2}, Lcom/google/android/exoplayer2/l1;->getCurrentTimeline()Lcom/google/android/exoplayer2/u1;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/u1;->t()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object p2, Lcom/google/android/exoplayer2/u1;->a:Lcom/google/android/exoplayer2/u1;

    .line 42
    .line 43
    :goto_1
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, v0}, Lp5/n1;->p1(Lcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method private static synthetic s2(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->b(Lp5/b$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t0(Lp5/b$a;ILp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->n2(Lp5/b$a;ILp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t1()Lp5/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp5/n1$a;->g()Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic t2(Lp5/b$a;Lz6/f0;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->K(Lp5/b$a;Lz6/f0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp5/n1;->Y1(Lp5/b$a;Ln6/h;Ln6/i;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u1()Lp5/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp5/n1$a;->h()Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static synthetic u2(Lp5/b$a;Lcom/google/android/exoplayer2/v1;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->l0(Lp5/b$a;Lcom/google/android/exoplayer2/v1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lp5/b$a;IJJLp5/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lp5/n1;->I1(Lp5/b$a;IJJLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v1(Lcom/google/android/exoplayer2/PlaybackException;)Lp5/b$a;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->i:Ln6/j;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/source/o$b;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/o$b;-><init>(Ln6/j;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private static synthetic v2(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->e0(Lp5/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lp5/b$a;Ln6/h;Ln6/i;Ljava/io/IOException;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lp5/n1;->Z1(Lp5/b$a;Ln6/h;Ln6/i;Ljava/io/IOException;ZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic w1(Lp5/b;Lb7/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic w2(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lp5/b;->q0(Lp5/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lp5/b;->n(Lp5/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lp5/b;->i0(Lp5/b$a;ILjava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic x0(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->y1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic x1(Lp5/b$a;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lp5/b;->L(Lp5/b$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic x2(Lp5/b$a;Ljava/lang/String;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->q(Lp5/b$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y0(Lp5/b$a;FLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->D2(Lp5/b$a;FLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y1(Lp5/b$a;Ljava/lang/Exception;Lp5/b;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->w(Lp5/b$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic y2(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->M(Lp5/b$a;Lr5/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lp5/b;->a(Lp5/b$a;ILr5/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic z0(Lp5/b$a;ZLp5/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp5/n1;->p2(Lp5/b$a;ZLp5/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic z1(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V
    .locals 7

    .line 1
    invoke-interface {p6, p0, p1, p2, p3}, Lp5/b;->y(Lp5/b$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    move-object v0, p6

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p4

    .line 8
    move-wide v5, p2

    .line 9
    invoke-interface/range {v0 .. v6}, Lp5/b;->x(Lp5/b$a;Ljava/lang/String;JJ)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    move-object v1, p6

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p1

    .line 16
    invoke-interface/range {v1 .. v6}, Lp5/b;->i0(Lp5/b$a;ILjava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static synthetic z2(Lp5/b$a;Lr5/e;Lp5/b;)V
    .locals 1

    .line 1
    invoke-interface {p2, p0, p1}, Lp5/b;->p0(Lp5/b$a;Lr5/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-interface {p2, p0, v0, p1}, Lp5/b;->H(Lp5/b$a;ILr5/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/u;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/u;-><init>(Lp5/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp5/n1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lp5/n1;->i:Z

    .line 11
    .line 12
    new-instance v1, Lp5/j;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lp5/j;-><init>(Lp5/b$a;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v0, v2, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final C(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/r0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/r0;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1c

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final D(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/m;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/m;-><init>(Lp5/b$a;II)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final E(Lr5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/m0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/m0;-><init>(Lp5/b$a;Lr5/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3ef

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/j1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/j1;-><init>(Lp5/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final G(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/o0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/o0;-><init>(Lp5/b$a;F)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x16

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final H(Lcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp5/n1;->i:Z

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 8
    .line 9
    iget-object v1, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 10
    .line 11
    invoke-static {v1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/l1;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lp5/n1$a;->j(Lcom/google/android/exoplayer2/l1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lp5/l0;

    .line 25
    .line 26
    invoke-direct {v1, v0, p3, p1, p2}, Lp5/l0;-><init>(Lp5/b$a;ILcom/google/android/exoplayer2/l1$e;Lcom/google/android/exoplayer2/l1$e;)V

    .line 27
    .line 28
    .line 29
    const/16 p1, 0xb

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected final H2(Lp5/b$a;ILb7/p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp5/b$a;",
            "I",
            "Lb7/p$a<",
            "Lp5/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp5/n1;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lp5/n1;->f:Lb7/p;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lb7/p;->l(ILb7/p$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final I(Lcom/google/android/exoplayer2/u1;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    iget-object v0, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 4
    .line 5
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/exoplayer2/l1;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lp5/n1$a;->l(Lcom/google/android/exoplayer2/l1;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lp5/n0;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lp5/n0;-><init>(Lp5/b$a;I)V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public J(Lcom/google/android/exoplayer2/z0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/f;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/f;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/z0;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xe

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lp5/n1;->v1(Lcom/google/android/exoplayer2/PlaybackException;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/g0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/g0;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final L(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lp5/n1;->v1(Lcom/google/android/exoplayer2/PlaybackException;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/o;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/o;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public M(Lz6/f0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/x;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/x;-><init>(Lp5/b$a;Lz6/f0;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x13

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final N(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/y;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lp5/y;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x401

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public O(Lcom/google/android/exoplayer2/l1$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/r;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/r;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/l1$b;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/j;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/p0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/p0;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/j;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1d

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Q(ILcom/google/android/exoplayer2/source/o$b;Ln6/i;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/a1;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lp5/a1;-><init>(Lp5/b$a;Ln6/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ec

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final R(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/c;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lp5/c;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x402

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final T(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/w0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lp5/w0;-><init>(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3ea

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public U(Lcom/google/android/exoplayer2/v1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/e0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/e0;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/v1;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final V(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/h1;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lp5/h1;-><init>(Lp5/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x400

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final W(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/z0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lp5/z0;-><init>(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e9

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public X(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/l1$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Y(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/o$b;",
            ">;",
            "Lcom/google/android/exoplayer2/source/o$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    iget-object v1, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 4
    .line 5
    invoke-static {v1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/exoplayer2/l1;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lp5/n1$a;->k(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Z(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/t0;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3, p4}, Lp5/t0;-><init>(Lp5/b$a;Ln6/h;Ln6/i;)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3e8

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/e1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/e1;-><init>(Lp5/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x17

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final a0(Lcom/google/android/exoplayer2/y0;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/y0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/p;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/p;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/y0;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/i0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/i0;-><init>(Lp5/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f6

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b0(Lp5/b;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp5/n1;->f:Lb7/p;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lb7/p;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/s0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/s0;-><init>(Lp5/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fb

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c0(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/g1;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lp5/g1;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x403

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/a0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/a0;-><init>(Lp5/b$a;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f4

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/m1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/m1;-><init>(Lp5/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x405

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->t1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/k0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lp5/k0;-><init>(Lp5/b$a;JI)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fd

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/c0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/c0;-><init>(Lp5/b$a;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f2

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/l1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/l1;-><init>(Lp5/b$a;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x406

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final i(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/c1;

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p4

    .line 11
    move-object v4, p5

    .line 12
    move v5, p6

    .line 13
    invoke-direct/range {v0 .. v5}, Lp5/c1;-><init>(Lp5/b$a;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 14
    .line 15
    .line 16
    const/16 p3, 0x3eb

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/x0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lp5/x0;-><init>(Lp5/b$a;Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1a

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lp5/y0;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lp5/y0;-><init>(Lp5/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f3

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 2
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/s;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/s;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m(Lr5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/t;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/t;-><init>(Lp5/b$a;Lr5/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f7

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Lr5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->t1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/f1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/f1;-><init>(Lp5/b$a;Lr5/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(Lr5/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->t1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/z;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/z;-><init>(Lp5/b$a;Lr5/e;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f5

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final o1()Lp5/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp5/n1$a;->d()Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lp5/n1;->q1(Lcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lp5/j0;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lp5/j0;-><init>(Lp5/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f0

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp5/n1;->r1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lp5/d1;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lp5/d1;-><init>(Lp5/b$a;IJJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3ee

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/d0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/d0;-><init>(Lp5/b$a;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1b

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->t1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/f0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2, p3}, Lp5/f0;-><init>(Lp5/b$a;IJ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3fa

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/i;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/i;-><init>(Lp5/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/b0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/b0;-><init>(Lp5/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/l;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lp5/l;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p0, v0, v2, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/d;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/d;-><init>(Lp5/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x9

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    new-instance v8, Lp5/v;

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p4

    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lp5/v;-><init>(Lp5/b$a;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x3f8

    .line 16
    .line 17
    invoke-virtual {p0, v7, p1, v8}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 2
    .param p2    # Lr5/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/e;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/e;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3f1

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected final p1(Lcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;
    .locals 17
    .param p3    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/u1;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v6, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v6, p3

    .line 17
    .line 18
    :goto_0
    iget-object v1, v0, Lp5/n1;->a:Lb7/d;

    .line 19
    .line 20
    invoke-interface {v1}, Lb7/d;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentTimeline()Lcom/google/android/exoplayer2/u1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/u1;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->x()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v5, v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_1
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6}, Ln6/j;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 60
    .line 61
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentAdGroupIndex()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget v9, v6, Ln6/j;->b:I

    .line 66
    .line 67
    if-ne v1, v9, :cond_5

    .line 68
    .line 69
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 70
    .line 71
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentAdIndexInAdGroup()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v9, v6, Ln6/j;->c:I

    .line 76
    .line 77
    if-ne v1, v9, :cond_5

    .line 78
    .line 79
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 80
    .line 81
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentPosition()J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 89
    .line 90
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getContentPosition()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/u1;->u()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget-object v1, v0, Lp5/n1;->c:Lcom/google/android/exoplayer2/u1$d;

    .line 103
    .line 104
    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/u1;->r(ILcom/google/android/exoplayer2/u1$d;)Lcom/google/android/exoplayer2/u1$d;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u1$d;->e()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    :cond_5
    :goto_2
    iget-object v1, v0, Lp5/n1;->d:Lp5/n1$a;

    .line 113
    .line 114
    invoke-virtual {v1}, Lp5/n1$a;->d()Lcom/google/android/exoplayer2/source/o$b;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    new-instance v16, Lp5/b$a;

    .line 119
    .line 120
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 121
    .line 122
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentTimeline()Lcom/google/android/exoplayer2/u1;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->x()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 133
    .line 134
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getCurrentPosition()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    iget-object v1, v0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 139
    .line 140
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->a()J

    .line 141
    .line 142
    .line 143
    move-result-wide v14

    .line 144
    move-object/from16 v1, v16

    .line 145
    .line 146
    move-object/from16 v4, p1

    .line 147
    .line 148
    move/from16 v5, p2

    .line 149
    .line 150
    invoke-direct/range {v1 .. v15}, Lp5/b$a;-><init>(JLcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/u1;ILcom/google/android/exoplayer2/source/o$b;JJ)V

    .line 151
    .line 152
    .line 153
    return-object v16
.end method

.method public q(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/q0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/q0;-><init>(Lp5/b$a;IZ)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1e

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public r(Lp6/f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/q;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/q;-><init>(Lp5/b$a;Lp6/f;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x1b

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lp5/n1;->h:Lb7/m;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lb7/m;

    .line 8
    .line 9
    new-instance v1, Lp5/g;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lp5/g;-><init>(Lp5/n1;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lb7/m;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s(Lcom/google/android/exoplayer2/k1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/h;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/h;-><init>(Lp5/b$a;Lcom/google/android/exoplayer2/k1;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xc

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/l1;Landroid/os/Looper;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lp5/n1;->d:Lp5/n1$a;

    .line 6
    .line 7
    invoke-static {v0}, Lp5/n1$a;->a(Lp5/n1$a;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/exoplayer2/l1;

    .line 29
    .line 30
    iput-object v0, p0, Lp5/n1;->g:Lcom/google/android/exoplayer2/l1;

    .line 31
    .line 32
    iget-object v0, p0, Lp5/n1;->a:Lb7/d;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, p2, v1}, Lb7/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lb7/m;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lp5/n1;->h:Lb7/m;

    .line 40
    .line 41
    iget-object v0, p0, Lp5/n1;->f:Lb7/p;

    .line 42
    .line 43
    new-instance v1, Lp5/k;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lp5/k;-><init>(Lp5/n1;Lcom/google/android/exoplayer2/l1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, v1}, Lb7/p;->e(Landroid/os/Looper;Lb7/p$b;)Lb7/p;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lp5/n1;->f:Lb7/p;

    .line 53
    .line 54
    return-void
.end method

.method public final u(Lc7/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp5/n1;->u1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/v0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/v0;-><init>(Lp5/b$a;Lc7/z;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/n;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lp5/n;-><init>(Lp5/b$a;)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x3ff

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/u0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lp5/u0;-><init>(Lp5/b$a;ZI)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final x(ILcom/google/android/exoplayer2/source/o$b;I)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp5/n1;->s1(ILcom/google/android/exoplayer2/source/o$b;)Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lp5/i1;

    .line 6
    .line 7
    invoke-direct {p2, p1, p3}, Lp5/i1;-><init>(Lp5/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/16 p3, 0x3fe

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public y(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/k1;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/k1;-><init>(Lp5/b$a;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x7

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp5/n1;->o1()Lp5/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp5/h0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lp5/h0;-><init>(Lp5/b$a;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Lp5/n1;->H2(Lp5/b$a;ILb7/p$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
