.class public Lio/bidmachine/iab/utils/IabElementStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->M(Lio/bidmachine/iab/utils/IabElementStyle;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public B(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public C(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public D()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget v0, Lsm/a;->a:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public E(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public F()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x30

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public H(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/high16 v1, -0x40000000    # -2.0f

    .line 33
    .line 34
    cmpl-float v0, v0, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_2
    const/4 p1, -0x2

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public K()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-object v0
.end method

.method public L()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-object v0
.end method

.method public M(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 9
    .line 10
    :cond_1
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 15
    .line 16
    :cond_2
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    .line 21
    .line 22
    :cond_3
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    .line 27
    .line 28
    :cond_4
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    .line 33
    .line 34
    :cond_5
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    .line 39
    .line 40
    :cond_6
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    .line 45
    .line 46
    :cond_7
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    .line 47
    .line 48
    if-eqz v0, :cond_8

    .line 49
    .line 50
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    .line 51
    .line 52
    :cond_8
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    .line 53
    .line 54
    if-eqz v0, :cond_9

    .line 55
    .line 56
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    .line 57
    .line 58
    :cond_9
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v0, :cond_a

    .line 61
    .line 62
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 63
    .line 64
    :cond_a
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v0, :cond_b

    .line 67
    .line 68
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 69
    .line 70
    :cond_b
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v0, :cond_c

    .line 73
    .line 74
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 75
    .line 76
    :cond_c
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz v0, :cond_d

    .line 79
    .line 80
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    .line 81
    .line 82
    :cond_d
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 83
    .line 84
    if-eqz v0, :cond_e

    .line 85
    .line 86
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 87
    .line 88
    :cond_e
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 89
    .line 90
    if-eqz v0, :cond_f

    .line 91
    .line 92
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 93
    .line 94
    :cond_f
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v0, :cond_10

    .line 97
    .line 98
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 99
    .line 100
    :cond_10
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    .line 101
    .line 102
    if-eqz v0, :cond_11

    .line 103
    .line 104
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    .line 105
    .line 106
    :cond_11
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v0, :cond_12

    .line 109
    .line 110
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    .line 111
    .line 112
    :cond_12
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    .line 113
    .line 114
    if-eqz v0, :cond_13

    .line 115
    .line 116
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    .line 117
    .line 118
    :cond_13
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 119
    .line 120
    if-eqz v0, :cond_14

    .line 121
    .line 122
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 123
    .line 124
    :cond_14
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 125
    .line 126
    if-eqz v0, :cond_15

    .line 127
    .line 128
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 129
    .line 130
    :cond_15
    iget-object v0, p1, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    .line 131
    .line 132
    if-eqz v0, :cond_16

    .line 133
    .line 134
    iput-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    .line 135
    .line 136
    :cond_16
    iget-object p1, p1, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    .line 137
    .line 138
    if-eqz p1, :cond_17

    .line 139
    .line 140
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    .line 141
    .line 142
    :cond_17
    return-void
.end method

.method public N()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->G()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->r()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public O(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public P(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public Q(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public S(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public U(Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 14
    .line 15
    return-void
.end method

.method public V(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public W(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, " "

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    array-length v0, p1

    .line 55
    const/4 v3, 0x2

    .line 56
    if-ne v0, v3, :cond_2

    .line 57
    .line 58
    aget-object v0, p1, v1

    .line 59
    .line 60
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    aget-object p1, p1, v2

    .line 69
    .line 70
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v1, v2, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    array-length v0, p1

    .line 99
    const/4 v4, 0x3

    .line 100
    if-ne v0, v4, :cond_3

    .line 101
    .line 102
    aget-object v0, p1, v1

    .line 103
    .line 104
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    aget-object v1, p1, v2

    .line 113
    .line 114
    invoke-static {v1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    aget-object p1, p1, v3

    .line 123
    .line 124
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, v2, v0, v1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    array-length v0, p1

    .line 153
    const/4 v5, 0x4

    .line 154
    if-ne v0, v5, :cond_4

    .line 155
    .line 156
    aget-object v0, p1, v1

    .line 157
    .line 158
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    aget-object v1, p1, v2

    .line 167
    .line 168
    invoke-static {v1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    aget-object v2, p1, v3

    .line 177
    .line 178
    invoke-static {v2}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    aget-object p1, p1, v4

    .line 187
    .line 188
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->X(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    :goto_0
    return-void
.end method

.method public Z(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public a0(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public b(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    .line 7
    return-void
.end method

.method public d(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->t(Landroid/content/Context;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->v(Landroid/content/Context;)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->u(Landroid/content/Context;)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->s(Landroid/content/Context;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    .line 41
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->A(Landroid/content/Context;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->B(Landroid/content/Context;)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->z(Landroid/content/Context;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public f(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .param p1    # Landroid/widget/RelativeLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->r()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x11

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0xb

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v0, 0x9

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v0, 0xe

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/IabElementStyle;->G()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0x10

    .line 49
    .line 50
    if-eq v0, v1, :cond_5

    .line 51
    .line 52
    if-eq v0, v2, :cond_5

    .line 53
    .line 54
    const/16 v1, 0x30

    .line 55
    .line 56
    if-eq v0, v1, :cond_4

    .line 57
    .line 58
    const/16 v1, 0x50

    .line 59
    .line 60
    if-eq v0, v1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/16 v0, 0xc

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/16 v0, 0xa

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/16 v0, 0xf

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void
.end method

.method public g(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/utils/IabElementStyle;
    .locals 1
    .param p1    # Lio/bidmachine/iab/utils/IabElementStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->M(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->M(Lio/bidmachine/iab/utils/IabElementStyle;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget v0, Lsm/a;->c:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public j(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    .line 20
    .line 21
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public k()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, " "

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v0, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    aget-object p1, p1, v1

    .line 24
    .line 25
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    array-length v0, p1

    .line 55
    const/4 v3, 0x2

    .line 56
    if-ne v0, v3, :cond_2

    .line 57
    .line 58
    aget-object v0, p1, v1

    .line 59
    .line 60
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    aget-object p1, p1, v2

    .line 69
    .line 70
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v1, v2, p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    array-length v0, p1

    .line 99
    const/4 v4, 0x3

    .line 100
    if-ne v0, v4, :cond_3

    .line 101
    .line 102
    aget-object v0, p1, v1

    .line 103
    .line 104
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    aget-object v1, p1, v2

    .line 113
    .line 114
    invoke-static {v1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    aget-object p1, p1, v3

    .line 123
    .line 124
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, v2, v0, v1, p1}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    array-length v0, p1

    .line 153
    const/4 v5, 0x4

    .line 154
    if-ne v0, v5, :cond_4

    .line 155
    .line 156
    aget-object v0, p1, v1

    .line 157
    .line 158
    invoke-static {v0}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    aget-object v1, p1, v2

    .line 167
    .line 168
    invoke-static {v1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    aget-object v2, p1, v3

    .line 177
    .line 178
    invoke-static {v2}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    aget-object p1, p1, v4

    .line 187
    .line 188
    invoke-static {p1}, Lsm/q;->p(Ljava/lang/String;)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->k0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    :goto_0
    return-void
.end method

.method public n(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/high16 v1, -0x40000000    # -2.0f

    .line 33
    .line 34
    cmpl-float v0, v0, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_2
    const/4 p1, -0x2

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public o0(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public p0(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public q()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public q0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public r()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public r0(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public s(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public s0(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public t(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public u(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public u0(Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lio/bidmachine/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    .line 14
    .line 15
    return-void
.end method

.method public v(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public y()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public z(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-static {p1, v0}, Lsm/q;->q(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
