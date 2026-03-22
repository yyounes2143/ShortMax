.class public Lcom/inmobi/media/T7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/x;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public A:Z

.field public B:I

.field public C:Lcom/inmobi/media/T7;

.field public D:Z

.field public E:Lcom/inmobi/media/d8;

.field public F:Ljava/lang/String;

.field public G:Landroid/content/Intent;

.field public H:Lcom/inmobi/media/ec;

.field public I:Lcom/inmobi/media/ec;

.field public J:Lcom/inmobi/media/T7;

.field public K:B

.field public L:Lcom/inmobi/media/S7;

.field public final M:Lcom/inmobi/media/A;

.field public final N:Lcom/inmobi/media/P7;

.field public final O:Lcom/inmobi/media/L7;

.field public final P:Lcom/inmobi/media/Q7;

.field public final Q:Lcom/inmobi/media/K7;

.field public R:Ljava/util/LinkedHashMap;

.field public final S:Ljava/lang/String;

.field public final T:Lcom/inmobi/media/O7;

.field public final a:B

.field public final b:Lcom/inmobi/media/p8;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Set;

.field public final e:J

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Lcom/inmobi/media/e3;

.field public final i:Lcom/inmobi/media/S6;

.field public final j:Lcom/inmobi/media/z5;

.field public final k:Lms/i;

.field public final l:Lcom/inmobi/media/R7;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/HashSet;

.field public final o:Ljava/util/ArrayList;

.field public p:Lcom/inmobi/media/We;

.field public q:Lcom/inmobi/media/D8;

.field public r:Z

.field public final s:Lcom/inmobi/commons/core/configs/AdConfig;

.field public t:Z

.field public u:Z

.field public v:Lcom/inmobi/media/T7;

.field public w:Lcom/inmobi/media/P0;

.field public x:Ljava/lang/ref/WeakReference;

.field public y:I

.field public z:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;BLcom/inmobi/media/p8;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/e3;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mNativeDataModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p2, p0, Lcom/inmobi/media/T7;->a:B

    .line 3
    iput-object p3, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 4
    iput-object p4, p0, Lcom/inmobi/media/T7;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/inmobi/media/T7;->d:Ljava/util/Set;

    .line 6
    iput-wide p7, p0, Lcom/inmobi/media/T7;->e:J

    .line 7
    iput-boolean p9, p0, Lcom/inmobi/media/T7;->f:Z

    .line 8
    iput-object p10, p0, Lcom/inmobi/media/T7;->g:Ljava/lang/String;

    .line 9
    iput-object p11, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    .line 10
    iput-object p12, p0, Lcom/inmobi/media/T7;->i:Lcom/inmobi/media/S6;

    .line 11
    iput-object p13, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 12
    sget-object p2, Lcom/inmobi/media/N7;->a:Lcom/inmobi/media/N7;

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/T7;->k:Lms/i;

    .line 13
    new-instance p2, Lcom/inmobi/media/R7;

    invoke-direct {p2, p0}, Lcom/inmobi/media/R7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p2, p0, Lcom/inmobi/media/T7;->l:Lcom/inmobi/media/R7;

    .line 14
    const-class p2, Lcom/inmobi/media/T7;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 15
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/T7;->n:Ljava/util/HashSet;

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    .line 17
    iput-object p6, p0, Lcom/inmobi/media/T7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 18
    iput-object p0, p0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    .line 19
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lcom/inmobi/media/T7;->y:I

    .line 21
    new-instance p4, Lcom/inmobi/media/P7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/P7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p4, p0, Lcom/inmobi/media/T7;->N:Lcom/inmobi/media/P7;

    .line 22
    new-instance p4, Lcom/inmobi/media/L7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/L7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p4, p0, Lcom/inmobi/media/T7;->O:Lcom/inmobi/media/L7;

    .line 23
    new-instance p4, Lcom/inmobi/media/Q7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/Q7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p4, p0, Lcom/inmobi/media/T7;->P:Lcom/inmobi/media/Q7;

    .line 24
    new-instance p4, Lcom/inmobi/media/K7;

    invoke-direct {p4, p0}, Lcom/inmobi/media/K7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p4, p0, Lcom/inmobi/media/T7;->Q:Lcom/inmobi/media/K7;

    .line 25
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-static {p1, p0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    iget-object p1, p3, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 29
    iput-wide p3, p1, Lcom/inmobi/media/h8;->y:J

    .line 30
    :goto_0
    iput-byte p2, p0, Lcom/inmobi/media/T7;->K:B

    .line 31
    sget-object p1, Lcom/inmobi/media/A;->a:Lcom/inmobi/media/A;

    iput-object p1, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lub/f2;

    invoke-direct {p2, p0}, Lub/f2;-><init>(Lcom/inmobi/media/T7;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    const-string p1, "native"

    iput-object p1, p0, Lcom/inmobi/media/T7;->S:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/inmobi/media/O7;

    invoke-direct {p1, p0}, Lcom/inmobi/media/O7;-><init>(Lcom/inmobi/media/T7;)V

    iput-object p1, p0, Lcom/inmobi/media/T7;->T:Lcom/inmobi/media/O7;

    return-void
.end method

.method public static a(Ljava/lang/String;)B
    .locals 7

    .line 73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 75
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 76
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_5
    :goto_3
    invoke-static {v0, v1, p0, v3}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "fullscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x4

    goto :goto_5

    :sswitch_1
    const-string v0, "skip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x2

    goto :goto_5

    :sswitch_2
    const-string v0, "play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x5

    goto :goto_5

    :sswitch_3
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :sswitch_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_5
    const-string v0, "replay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :sswitch_6
    const-string v0, "reload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_9
    const/4 v1, 0x3

    :cond_a
    :goto_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b57e67 -> :sswitch_6
        -0x37b3b819 -> :sswitch_5
        0x0 -> :sswitch_4
        0x2fb91e -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x35e57f -> :sswitch_1
        0x68f7bbb -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/view/View;)Lcom/inmobi/media/T8;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 178
    const-string v1, "timerView"

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/inmobi/media/T8;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/inmobi/media/T8;

    :cond_1
    return-object v0
.end method

.method public static final a(Lcom/inmobi/media/T7;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object p0, p0, Lcom/inmobi/media/T7;->P:Lcom/inmobi/media/Q7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/G1;)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/T7;)V
    .locals 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 32
    iget-object p0, p0, Lcom/inmobi/media/T7;->P:Lcom/inmobi/media/Q7;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/G1;)V

    return-void
.end method

.method public static c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    .line 93
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    if-eqz p0, :cond_2

    move-object v0, p0

    .line 95
    :cond_2
    invoke-static {v0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final d(Lcom/inmobi/media/T7;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/T7;->A:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/d8;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/d8;Lcom/inmobi/media/p8;Ljava/lang/String;)Lcom/inmobi/media/d8;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\|"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p3

    .line 63
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 64
    check-cast p3, [Ljava/lang/String;

    .line 65
    aget-object v0, p3, v1

    invoke-virtual {p2, v0}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    iget-object p2, p2, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    .line 67
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object p1

    return-object p1

    .line 68
    :cond_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_2
    array-length p1, p3

    const/4 p2, 0x2

    if-gt p1, p2, :cond_3

    const/4 p1, 0x1

    .line 70
    iput-byte p1, v0, Lcom/inmobi/media/d8;->l:B

    goto :goto_0

    .line 71
    :cond_3
    aget-object p1, p3, p2

    invoke-static {p1}, Lcom/inmobi/media/m8;->a(Ljava/lang/String;)B

    move-result p1

    .line 72
    iput-byte p1, v0, Lcom/inmobi/media/d8;->l:B

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;
    .locals 5

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p2, Lcom/inmobi/media/d8;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3
    iput-byte v3, p2, Lcom/inmobi/media/d8;->k:B

    return-object p2

    .line 4
    :cond_1
    new-instance v2, Lkotlin/text/Regex;

    const-string v4, "\\|"

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 5
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, [Ljava/lang/String;

    .line 7
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 8
    aget-object p1, v1, v3

    invoke-static {p1}, Lcom/inmobi/media/T7;->a(Ljava/lang/String;)B

    move-result p1

    .line 9
    iput-byte p1, p2, Lcom/inmobi/media/d8;->k:B

    return-object p2

    .line 10
    :cond_2
    aget-object v2, v1, v3

    invoke-virtual {p1, v2}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v2

    if-nez v2, :cond_3

    .line 11
    iget-object p1, p1, Lcom/inmobi/media/p8;->g:Lcom/inmobi/media/p8;

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 14
    :cond_4
    aget-object p1, v1, v4

    invoke-static {p1}, Lcom/inmobi/media/T7;->a(Ljava/lang/String;)B

    move-result p1

    .line 15
    iput-byte p1, v2, Lcom/inmobi/media/d8;->k:B

    .line 16
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 17
    const-string v0, "TAG"

    const-string v1, "Referenced asset ("

    invoke-static {p2, v0, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    iget-object v1, v2, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public final a(Ljava/lang/String;Lcom/inmobi/media/d8;Lcom/inmobi/media/R6;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "TAG"

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p1}, Lcom/inmobi/media/z2;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    iget-object v2, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "openUrlUsingEmbeddedBrowser"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 276
    sput-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 277
    iget-object v3, p0, Lcom/inmobi/media/T7;->L:Lcom/inmobi/media/S7;

    if-nez v3, :cond_2

    .line 278
    new-instance v3, Lcom/inmobi/media/S7;

    invoke-direct {v3, p0}, Lcom/inmobi/media/S7;-><init>(Lcom/inmobi/media/T7;)V

    .line 279
    iput-object v3, p0, Lcom/inmobi/media/T7;->L:Lcom/inmobi/media/S7;

    .line 280
    :cond_2
    sput-object v3, Lcom/inmobi/ads/rendering/InMobiAdActivity;->m:Lcom/inmobi/media/gc;

    .line 281
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v5, 0x64

    .line 283
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v4, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string p1, "placementId"

    iget-wide v4, p0, Lcom/inmobi/media/T7;->e:J

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    const-string p1, "creativeId"

    invoke-virtual {p0}, Lcom/inmobi/media/T7;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string p1, "impressionId"

    invoke-virtual {p0}, Lcom/inmobi/media/T7;->getImpressionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string p1, "allowAutoRedirection"

    iget-boolean v4, p0, Lcom/inmobi/media/T7;->f:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 289
    const-string p1, "lpTelemetryControlInfo"

    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    :cond_3
    iget-boolean p1, p2, Lcom/inmobi/media/d8;->i:Z

    if-eqz p1, :cond_4

    .line 291
    const-string p1, "supportLockScreen"

    const/4 p2, 0x1

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    :cond_4
    sget-object p1, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v2

    :cond_5
    const/16 p1, 0xa

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 294
    :goto_0
    iget-object p2, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string v0, "Error while opening Embedded Browser"

    invoke-virtual {p2, p3, v0, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 295
    :cond_6
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 296
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 297
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    const/16 p1, 0x9

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;
    .locals 8

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    iget-boolean v1, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 158
    :cond_0
    const-string v1, "child"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    instance-of v1, p1, Lcom/inmobi/media/h8;

    const/4 v2, 0x1

    const-string v3, "card_scrollable"

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/inmobi/media/h8;

    .line 160
    iget-object v4, v1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 161
    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    iget-object p1, p1, Lcom/inmobi/media/d8;->r:Lcom/inmobi/media/h8;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 163
    iget-object v4, p1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 164
    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, p1

    goto :goto_1

    .line 165
    :cond_3
    iget-object p1, p1, Lcom/inmobi/media/d8;->r:Lcom/inmobi/media/h8;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 166
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_5

    .line 167
    iget-wide v6, v1, Lcom/inmobi/media/h8;->y:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_5

    move-wide v2, v6

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 169
    iget-object p1, p1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-eqz p1, :cond_6

    .line 170
    iget-wide v4, p1, Lcom/inmobi/media/h8;->y:J

    .line 171
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 172
    const-string v1, "$LTS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$STS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "$TS"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 176
    iget-object p1, p1, Lcom/inmobi/media/p8;->t:Ljava/util/Map;

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 177
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a()V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "dismissCurrentViewContainer"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_1

    return-void

    .line 189
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 190
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->q()V

    .line 191
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 192
    const-string v2, "container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 195
    instance-of v2, v0, Lcom/inmobi/media/a9;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 196
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->getVideoContainerView()Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/inmobi/media/m9;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/inmobi/media/m9;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {v2}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 199
    instance-of v5, v4, Lcom/inmobi/media/c9;

    if-eqz v5, :cond_5

    .line 200
    move-object v5, v4

    check-cast v5, Lcom/inmobi/media/c9;

    .line 201
    iget-object v5, v5, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 202
    const-string v6, "seekPosition"

    invoke-virtual {v2}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v6, "lastMediaVolume"

    invoke-virtual {v2}, Lcom/inmobi/media/l9;->getVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object v2, v4

    check-cast v2, Lcom/inmobi/media/c9;

    .line 205
    iget-object v2, v2, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    .line 206
    instance-of v5, v2, Lcom/inmobi/media/c9;

    if-eqz v5, :cond_4

    .line 207
    check-cast v2, Lcom/inmobi/media/c9;

    move-object v5, v4

    check-cast v5, Lcom/inmobi/media/c9;

    invoke-virtual {v2, v5}, Lcom/inmobi/media/c9;->a(Lcom/inmobi/media/c9;)V

    .line 208
    :cond_4
    check-cast v4, Lcom/inmobi/media/c9;

    invoke-virtual {p0, v4}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/c9;)V

    .line 209
    :cond_5
    iget-object v0, v0, Lcom/inmobi/media/T7;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 210
    :goto_1
    instance-of v2, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-eqz v2, :cond_7

    .line 211
    move-object v2, v0

    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v4, 0x1

    .line 212
    iput-boolean v4, v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 213
    move-object v2, v0

    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 214
    iget v2, p0, Lcom/inmobi/media/T7;->y:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 215
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_a

    .line 217
    iput-object v3, v0, Lcom/inmobi/media/T7;->C:Lcom/inmobi/media/T7;

    .line 218
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lub/e2;

    invoke-direct {v3, v0}, Lub/e2;-><init>(Lcom/inmobi/media/T7;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 219
    :goto_3
    iget-object v2, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 220
    const-string v4, "Encountered unexpected error in handling exit action on video: "

    invoke-static {v3, v1, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 222
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_9
    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in exiting video"

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 225
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final a(BLjava/util/Map;)V
    .locals 4

    .line 23
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "TAG"

    if-ne p1, v0, :cond_4

    .line 24
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 25
    iget-object p1, p1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-eqz p1, :cond_6

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "reportAdLoad"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 28
    check-cast p2, Ljava/util/HashMap;

    const-string v2, "load"

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 29
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 30
    iget-object p1, p1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-eqz p1, :cond_6

    .line 31
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "reportAdServed"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 33
    check-cast p2, Ljava/util/HashMap;

    const-string v2, "client_fill"

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-static {p1, p0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/inmobi/media/d8;)V
    .locals 10

    const-string v0, "asset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->m()V

    .line 36
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v0

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v2

    .line 38
    invoke-virtual {p0, v0, v2}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Ljava/util/HashMap;)V

    .line 39
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p0, p2, v2}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Ljava/util/HashMap;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "Couldn\'t find an asset reference for this asset click URL"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_2
    invoke-virtual {p0, p2}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Ljava/util/HashMap;)V

    .line 44
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 45
    :cond_4
    iget-object v2, p2, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-gt v6, v3, :cond_a

    if-nez v7, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    move v8, v3

    .line 47
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    .line 48
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_6

    move v8, v4

    goto :goto_3

    :cond_6
    move v8, v5

    :goto_3
    if-nez v7, :cond_8

    if-nez v8, :cond_7

    move v7, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 49
    :cond_a
    :goto_4
    invoke-static {v3, v4, v2, v6}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    .line 50
    :goto_5
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 51
    iget-object v0, v0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/inmobi/media/P0;->a()V

    .line 52
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    .line 53
    const-string v1, "VIDEO"

    .line 54
    iget-object v2, v0, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    .line 56
    iget-byte v2, v0, Lcom/inmobi/media/d8;->k:B

    if-ne v1, v2, :cond_d

    const/4 v1, 0x4

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iput v1, p2, Lcom/inmobi/media/d8;->v:I

    .line 59
    :cond_d
    invoke-virtual {p0, v0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/d8;)V

    goto :goto_6

    .line 60
    :cond_e
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Couldn\'t find an asset reference for this asset action! Ignoring the asset action ..."

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final a(Lcom/inmobi/media/c9;)V
    .locals 6

    .line 179
    invoke-virtual {p1}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/Ue;

    .line 180
    iget-object v0, v0, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 181
    iget-boolean v2, v0, Lcom/inmobi/media/Le;->g:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 182
    iget-object v2, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v4, "Invoking close end card trackers."

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    const-string v2, "closeEndCard"

    invoke-virtual {v0, v2}, Lcom/inmobi/media/Le;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/U8;

    .line 185
    invoke-virtual {p0, p1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    invoke-static {v3, v4, v1, v5}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/U8;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 186
    iput-boolean p1, v0, Lcom/inmobi/media/Le;->g:Z

    :cond_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/d8;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v3, "asset"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "interactionMode"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "url"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v5, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v12, "TAG"

    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v7, "openUrl"

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-string v5, "EMBEDDED"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "IN_CUSTOM"

    const/16 v13, 0xc

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-eqz v5, :cond_3

    if-nez v11, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    iput-object v6, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 230
    :goto_0
    invoke-virtual {v1, v10, v0, v11}, Lcom/inmobi/media/T7;->a(Ljava/lang/String;Lcom/inmobi/media/d8;Lcom/inmobi/media/R6;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 231
    sget-object v2, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v11, v0, v14}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    .line 232
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v0, v15

    :goto_1
    if-nez v0, :cond_16

    .line 233
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    goto/16 :goto_a

    .line 234
    :cond_3
    const-string v5, "INAPP"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "EX_NATIVE"

    if-eqz v2, :cond_e

    .line 235
    iget-object v2, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v4, "openUrlInCCT"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_4
    iget-object v2, v1, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/Context;

    if-nez v8, :cond_5

    goto/16 :goto_a

    .line 237
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6

    .line 238
    iget-object v2, v1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/inmobi/media/P0;->e()V

    .line 239
    :cond_6
    invoke-static {v8}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 240
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/media/T7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 241
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    move-result v3

    if-eqz v2, :cond_7

    if-nez v3, :cond_8

    :cond_7
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_3

    .line 242
    :cond_8
    new-instance v0, Lcom/inmobi/media/k2;

    iget-object v6, v1, Lcom/inmobi/media/T7;->Q:Lcom/inmobi/media/K7;

    iget-object v7, v1, Lcom/inmobi/media/T7;->l:Lcom/inmobi/media/R7;

    const-string v16, "NATIVE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move-object v2, v0

    move-object/from16 v3, p3

    move-object v5, v8

    move-object/from16 v17, v8

    move-object/from16 v8, p4

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/k2;-><init>(Ljava/lang/String;Lcom/inmobi/media/i2;Landroid/content/Context;Lcom/inmobi/media/e2;Lcom/inmobi/media/yb;Lcom/inmobi/media/R6;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/inmobi/media/k2;->a()V

    goto/16 :goto_a

    :catch_0
    move-exception v0

    :goto_2
    move-object v2, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_2

    .line 244
    :goto_3
    iget-object v2, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ChromeCustomTab fallback to Embedded"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v11, :cond_a

    goto :goto_4

    .line 245
    :cond_a
    iput-object v6, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 246
    :goto_4
    invoke-virtual {v1, v10, v0, v11}, Lcom/inmobi/media/T7;->a(Ljava/lang/String;Lcom/inmobi/media/d8;Lcom/inmobi/media/R6;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 247
    sget-object v2, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v11, v0, v14}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    .line 248
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    :cond_b
    move-object v0, v15

    :goto_5
    if-nez v0, :cond_16

    .line 249
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 250
    :goto_6
    :try_start_2
    iget-object v0, v1, Lcom/inmobi/media/T7;->l:Lcom/inmobi/media/R7;

    const-string v3, "NATIVE"

    move-object/from16 v4, v17

    invoke-static {v4, v10, v0, v3}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;)I

    if-nez v11, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v5, v18

    .line 251
    iput-object v5, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 252
    :goto_7
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 253
    iget-object v3, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_d

    iget-object v4, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "Exception occurred while opening External "

    invoke-virtual {v3, v4, v5, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 254
    :cond_d
    sget-object v0, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v11, v3, v14}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    .line 255
    :goto_8
    iget-object v0, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_16

    iget-object v3, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v4, "Fallback to External while opening cct"

    invoke-virtual {v0, v3, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    :cond_e
    move-object v5, v9

    .line 256
    iget-object v2, v0, Lcom/inmobi/media/d8;->q:Ljava/lang/String;

    .line 257
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v3, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_f

    iget-object v4, v1, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v6, "openUrlUsingExternalBrowser"

    invoke-virtual {v3, v4, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_f
    iget-object v3, v1, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    if-nez v11, :cond_11

    goto :goto_9

    .line 260
    :cond_11
    iput-object v5, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 261
    :goto_9
    iget-object v3, v1, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 262
    iget-object v4, v1, Lcom/inmobi/media/T7;->l:Lcom/inmobi/media/R7;

    .line 263
    invoke-static {v3, v4, v10, v2}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Lcom/inmobi/media/R7;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 264
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_a

    .line 265
    :cond_12
    iget-object v4, v4, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 266
    iget-boolean v5, v1, Lcom/inmobi/media/T7;->D:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_13

    .line 267
    invoke-virtual {v4}, Lcom/inmobi/media/P0;->g()V

    .line 268
    :cond_13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 269
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 270
    const-string v4, "TRACKER_EVENT_TYPE_FALLBACK_URL"

    invoke-virtual {v0, v4, v2, v15, v3}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 271
    :cond_14
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    invoke-static {v0, v11, v15, v13}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    goto :goto_a

    .line 272
    :cond_15
    sget-object v0, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v11, v2, v14}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    :cond_16
    :goto_a
    return-void
.end method

.method public final a(Lcom/inmobi/media/d8;Ljava/util/HashMap;)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "Click impression record requested"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-byte v0, p1, Lcom/inmobi/media/d8;->l:B

    const-string v2, "reportAdClick"

    const-string v3, "click"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v5, v0, :cond_7

    .line 140
    instance-of v0, p1, Lcom/inmobi/media/c9;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 141
    check-cast v0, Lcom/inmobi/media/Ue;

    .line 142
    iget-object v0, v0, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    goto :goto_2

    :cond_3
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_4

    .line 143
    iget-object v5, v0, Lcom/inmobi/media/Le;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_5

    .line 144
    iget-object v5, p1, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 145
    iget-object p1, v0, Lcom/inmobi/media/Le;->f:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 147
    invoke-virtual {v0, v3}, Lcom/inmobi/media/Le;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/U8;

    .line 149
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    invoke-static {v0, p2, v4, v1}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/U8;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_4

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v5, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 152
    invoke-virtual {p1, v3, p2, v4, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_5

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v5, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 155
    invoke-virtual {p1, v3, p2, v4, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final a(Lcom/inmobi/media/d8;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const-string v3, "asset"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v3, v0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 80
    iget-boolean v4, v3, Lcom/inmobi/media/p8;->q:Z

    if-eqz v4, :cond_19

    .line 81
    iget-boolean v4, v0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v4, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    move-result-object v3

    const-string v4, "TAG"

    if-eqz v3, :cond_18

    .line 83
    invoke-virtual {v0, v3}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v5

    .line 84
    iget-object v1, v1, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 85
    const-string v6, "<set-?>"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object v1, v3, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 87
    iget-object v1, v0, Lcom/inmobi/media/T7;->k:Lms/i;

    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 88
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->getNativeEnabled()Z

    move-result v1

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/inmobi/media/T7;->i:Lcom/inmobi/media/S6;

    new-instance v9, Lcom/inmobi/media/R6;

    .line 89
    iget-object v10, v3, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    .line 90
    invoke-static {v10}, Lcom/inmobi/media/J6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-direct {v9, v1, v10, v7, v6}, Lcom/inmobi/media/R6;-><init>(Lcom/inmobi/media/S6;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move-object v9, v8

    .line 92
    :goto_0
    sget-object v1, Lcom/inmobi/media/F6;->d:Lcom/inmobi/media/F6;

    invoke-static {v1, v9, v8, v6}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    .line 93
    const-string v1, "VIDEO"

    .line 94
    iget-object v6, v3, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 95
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-boolean v1, v3, Lcom/inmobi/media/d8;->f:Z

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 97
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_3

    iget-object v6, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v10, "Asset interaction requested"

    invoke-virtual {v1, v6, v10}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_3
    iget-object v1, v3, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 99
    iget-object v6, v0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz v6, :cond_4

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/inmobi/media/Xe;->a(B)V

    .line 100
    :cond_4
    const-string v6, "NO_ACTION"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v10, 0x8

    if-eqz v6, :cond_5

    .line 101
    sget-object v1, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v9, v2, v10}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    goto/16 :goto_8

    .line 102
    :cond_5
    iget-object v6, v3, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    const/4 v11, 0x2

    .line 103
    iget-byte v12, v3, Lcom/inmobi/media/d8;->l:B

    if-ne v11, v12, :cond_f

    .line 104
    const-string v11, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, Lcom/inmobi/media/c9;

    invoke-virtual {v11}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 105
    check-cast v11, Lcom/inmobi/media/Ue;

    .line 106
    iget-object v11, v11, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    goto :goto_1

    :cond_6
    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_7

    .line 107
    iget-object v11, v11, Lcom/inmobi/media/Le;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v11, v8

    :goto_2
    if-eqz v11, :cond_e

    .line 108
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    move v12, v7

    move v13, v12

    :goto_3
    if-gt v12, v8, :cond_d

    if-nez v13, :cond_8

    move v14, v12

    goto :goto_4

    :cond_8
    move v14, v8

    .line 109
    :goto_4
    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    .line 110
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gtz v14, :cond_9

    move v14, v2

    goto :goto_5

    :cond_9
    move v14, v7

    :goto_5
    if-nez v13, :cond_b

    if-nez v14, :cond_a

    move v13, v2

    goto :goto_3

    :cond_a
    add-int/2addr v12, v2

    goto :goto_3

    :cond_b
    if-nez v14, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 111
    :cond_d
    :goto_6
    invoke-static {v8, v2, v11, v12}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 112
    :cond_e
    invoke-static {v8}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v6, v11

    .line 113
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 114
    iget-object v7, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v7, :cond_10

    iget-object v8, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid url:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " will use fallback"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v7, Lcom/inmobi/media/A5;

    invoke-virtual {v7, v8, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_10
    iget-object v6, v3, Lcom/inmobi/media/d8;->q:Ljava/lang/String;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 117
    iget-object v1, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 118
    const-string v3, "Invalid fallback url:"

    invoke-static {v2, v4, v3, v6}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_11
    sget-object v1, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v9, v2, v10}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;I)V

    goto :goto_8

    .line 121
    :cond_12
    sget-boolean v4, Lcom/inmobi/media/T9;->a:Z

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-object v5, v0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    if-eqz v5, :cond_13

    .line 123
    iget-object v6, v5, Lcom/inmobi/media/e3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_13

    .line 124
    iget-object v6, v5, Lcom/inmobi/media/e3;->d:Lcom/inmobi/media/i3;

    .line 125
    iput v2, v6, Lcom/inmobi/media/i3;->g:I

    .line 126
    iget-object v2, v5, Lcom/inmobi/media/e3;->c:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    :cond_13
    iget-boolean v2, v0, Lcom/inmobi/media/T7;->D:Z

    if-eqz v2, :cond_17

    if-nez p2, :cond_17

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_8

    .line 129
    :cond_14
    iget-object v2, v2, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v2, :cond_16

    .line 130
    const-string v5, "INAPP"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 131
    invoke-static {v4}, Lcom/inmobi/media/z2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 132
    invoke-virtual {v2}, Lcom/inmobi/media/P0;->e()V

    goto :goto_7

    .line 133
    :cond_15
    invoke-virtual {v2}, Lcom/inmobi/media/P0;->g()V

    .line 134
    :cond_16
    :goto_7
    iput-object v3, v0, Lcom/inmobi/media/T7;->E:Lcom/inmobi/media/d8;

    .line 135
    iput-object v4, v0, Lcom/inmobi/media/T7;->F:Ljava/lang/String;

    goto :goto_8

    .line 136
    :cond_17
    invoke-virtual {v0, v3, v1, v4, v9}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V

    goto :goto_8

    .line 137
    :cond_18
    iget-object v1, v0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_19

    iget-object v2, v0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "Couldn\'t find an asset reference for this asset click URL"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_8
    return-void
.end method

.method public final b(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p2, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    .line 2
    iget-object v1, p2, Lcom/inmobi/media/d8;->q:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Lcom/inmobi/media/p8;Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p2, p1, v1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;Lcom/inmobi/media/p8;Ljava/lang/String;)Lcom/inmobi/media/d8;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 6
    const-string v1, "TAG"

    const-string v2, "Referenced asset ("

    invoke-static {p2, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "destroyContainer"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    .line 59
    iget-object v2, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/inmobi/media/e3;->b()V

    :cond_2
    const/4 v2, -0x1

    .line 60
    iput v2, p0, Lcom/inmobi/media/T7;->y:I

    .line 61
    iget-object v2, p0, Lcom/inmobi/media/T7;->C:Lcom/inmobi/media/T7;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/inmobi/media/T7;->a()V

    :cond_3
    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 63
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->h()Lcom/inmobi/media/D8;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 64
    iget-object v4, v3, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 65
    iget-object v5, v4, Lcom/inmobi/media/b1;->b:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inmobi/media/a1;

    .line 67
    iget-object v6, v6, Lcom/inmobi/media/a1;->a:Landroid/animation/ValueAnimator;

    .line 68
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 69
    :cond_4
    iget-object v4, v4, Lcom/inmobi/media/b1;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 70
    iput-boolean v0, v3, Lcom/inmobi/media/D8;->n:Z

    .line 71
    iget-object v0, v3, Lcom/inmobi/media/D8;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 72
    iput-object v2, v3, Lcom/inmobi/media/D8;->p:Lcom/inmobi/media/x8;

    .line 73
    iget-object v0, v3, Lcom/inmobi/media/D8;->j:Lcom/inmobi/media/L8;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/inmobi/media/L8;->destroy()V

    .line 74
    :cond_5
    iput-object v2, v3, Lcom/inmobi/media/D8;->j:Lcom/inmobi/media/L8;

    .line 75
    :cond_6
    iput-object v2, p0, Lcom/inmobi/media/T7;->q:Lcom/inmobi/media/D8;

    .line 76
    iget-object v0, p0, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->e()V

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 80
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_9

    .line 81
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 83
    iget-object v0, p0, Lcom/inmobi/media/T7;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 84
    :cond_a
    iput-object v2, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    .line 85
    iget-object v0, p0, Lcom/inmobi/media/T7;->J:Lcom/inmobi/media/T7;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/inmobi/media/T7;->b()V

    .line 86
    :cond_b
    iput-object v2, p0, Lcom/inmobi/media/T7;->J:Lcom/inmobi/media/T7;

    .line 87
    iget-object v0, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    sget-object v0, Lcom/inmobi/media/A;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    const-string v2, "A"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 6

    .line 9
    iget-boolean p1, p0, Lcom/inmobi/media/T7;->r:Z

    if-nez p1, :cond_7

    .line 10
    iget-boolean p1, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/inmobi/media/T7;->r:Z

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/e3;->a()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v0, "TAG"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v2, "A viewable impression is reported on ad view."

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 15
    iget-object p1, p1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/inmobi/media/T7;->O:Lcom/inmobi/media/L7;

    .line 18
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 19
    const-string v4, "Impression"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->m()V

    .line 21
    iget-object p1, p0, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/d8;

    .line 23
    invoke-virtual {p0, v1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "Page-view impression record request"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_4
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v4, "page_view"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 28
    :cond_6
    invoke-static {p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/inmobi/media/P0;->f()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final b(Lcom/inmobi/media/d8;)V
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "showEndCard"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->J:Lcom/inmobi/media/T7;

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_3

    .line 39
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 41
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    instance-of v0, p1, Lcom/inmobi/media/c9;

    if-eqz v0, :cond_b

    .line 43
    check-cast p1, Lcom/inmobi/media/c9;

    invoke-virtual {p1}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/Ue;

    .line 44
    iget-object v4, p1, Lcom/inmobi/media/Ue;->j:Lcom/inmobi/media/Le;

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 45
    :cond_5
    iput-boolean v2, v4, Lcom/inmobi/media/Le;->g:Z

    goto :goto_3

    .line 46
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Could not inflate the end card. Closing the ad"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 48
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Failed to show end card Exception"

    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->a()V

    .line 50
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 51
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 52
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    return-void

    .line 53
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "End card container is null; end card will not be shown"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_a
    const-string p1, "InMobi"

    const-string v0, "Failed to show end card"

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->a()V

    :cond_b
    :goto_3
    return-void
.end method

.method public c(Lcom/inmobi/media/d8;)V
    .locals 14

    const-string v0, "Action 3 not valid for asset of type: "

    const-string v1, "asset"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "triggerAssetAction"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-byte v1, p1, Lcom/inmobi/media/d8;->k:B

    if-nez v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    goto/16 :goto_a

    :cond_2
    const-string v3, "window.imraid.broadcastEvent(\'skip\');"

    const-string v4, "skipToInterActive"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v5, :cond_6

    .line 4
    iput-boolean v6, p0, Lcom/inmobi/media/T7;->A:Z

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_3

    sget-object v5, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->b()V

    .line 11
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/d8;)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    if-eqz p1, :cond_23

    .line 13
    iget-object v0, p1, Lcom/inmobi/media/e3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_23

    .line 14
    iget-object v0, p1, Lcom/inmobi/media/e3;->d:Lcom/inmobi/media/i3;

    .line 15
    iput v6, v0, Lcom/inmobi/media/i3;->h:I

    .line 16
    iget-object p1, p1, Lcom/inmobi/media/e3;->c:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_6
    const/4 v7, 0x3

    const-string v8, "event"

    const-string v9, "InMobi"

    if-ne v1, v7, :cond_16

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-eqz v1, :cond_8

    .line 18
    iget-object v3, v1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_7

    sget-object v4, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "replayToInterActive"

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v7}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 19
    :cond_7
    :goto_0
    const-string v3, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {v1, v3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_9
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_a

    .line 22
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/inmobi/media/T7;->v:Lcom/inmobi/media/T7;

    if-eqz v1, :cond_b

    move-object v4, v1

    goto :goto_2

    :cond_b
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_c

    .line 24
    invoke-virtual {v4}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 26
    iget-object v7, v4, Lcom/inmobi/media/T8;->n:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_c

    .line 27
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v10

    if-ne v10, v6, :cond_c

    .line 28
    iget-wide v10, v4, Lcom/inmobi/media/T8;->f:J

    const/16 v12, 0x3e8

    int-to-long v12, v12

    mul-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/16 v7, 0x168

    int-to-float v7, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    .line 29
    iput v7, v4, Lcom/inmobi/media/T8;->l:F

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 31
    :cond_c
    const-string v4, "VIDEO"

    .line 32
    iget-object v7, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 33
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 34
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p1, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    .line 37
    :cond_e
    instance-of p1, v1, Lcom/inmobi/media/a9;

    if-eqz p1, :cond_23

    .line 38
    check-cast v1, Lcom/inmobi/media/a9;

    invoke-virtual {v1}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/m9;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/inmobi/media/m9;

    goto :goto_3

    :cond_f
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_23

    .line 39
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/c9;

    if-eqz v1, :cond_10

    move-object v3, v0

    check-cast v3, Lcom/inmobi/media/c9;

    :cond_10
    if-eqz v3, :cond_12

    .line 41
    invoke-virtual {v3}, Lcom/inmobi/media/c9;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->k()V

    goto :goto_4

    .line 43
    :cond_11
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->c()V

    goto :goto_4

    .line 44
    :cond_12
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    if-ne v6, v0, :cond_13

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->k()V

    goto :goto_4

    .line 46
    :cond_13
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->c()V

    :goto_4
    if-eqz v3, :cond_14

    .line 47
    invoke-virtual {p0, v3}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/c9;)V

    .line 48
    :cond_14
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 49
    :goto_5
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 50
    const-string v3, "Encountered unexpected error in handling replay action on video: "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 52
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_15
    const-string v0, "SDK encountered unexpected error in replaying video"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 55
    invoke-static {p1, v8}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_a

    :cond_16
    if-ne v1, v6, :cond_1a

    .line 57
    :try_start_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-eqz p1, :cond_18

    .line 58
    iget-object v0, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_17

    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "closeToInterActive"

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    .line 59
    :cond_17
    :goto_6
    const-string v0, "window.imraid.broadcastEvent(\'close\');"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 60
    :cond_18
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    .line 61
    :goto_7
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 62
    const-string v3, "Encountered unexpected error in handling exit action on video: "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 64
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_19
    const-string v0, "SDK encountered unexpected error in exiting video"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 67
    invoke-static {p1, v8}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_a

    :cond_1a
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1f

    .line 69
    :try_start_2
    iget-byte p1, p0, Lcom/inmobi/media/T7;->a:B

    if-nez p1, :cond_23

    .line 70
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "launchFullscreen"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_9

    .line 71
    :cond_1b
    :goto_8
    invoke-static {p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_a

    .line 72
    :cond_1c
    iget-object v0, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_1d

    .line 73
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->e()V

    .line 74
    :cond_1d
    iget-object v0, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v3, Lcom/inmobi/media/M7;

    invoke-direct {v3, p0, p1}, Lcom/inmobi/media/M7;-><init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/T7;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/G1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    .line 75
    :goto_9
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 76
    const-string v3, "Encountered unexpected error in handling fullscreen action "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 78
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1e
    const-string v0, "SDK encountered unexpected error in launching fullscreen ad"

    invoke-static {v5, v9, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 81
    invoke-static {p1, v8}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 82
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_a

    .line 83
    :cond_1f
    iput-boolean v6, p0, Lcom/inmobi/media/T7;->A:Z

    .line 84
    iget-object v0, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-eqz v0, :cond_21

    .line 85
    iget-object v1, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_20

    sget-object v5, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_20
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 87
    :cond_21
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 89
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->b()V

    .line 90
    :cond_22
    invoke-virtual {p0, p1}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/d8;)V

    :cond_23
    :goto_a
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    return v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->z:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->s:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDataModel()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/media/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->N:Lcom/inmobi/media/P7;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMarkupType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "inmobiJson"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacementType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    .line 2
    .line 3
    return v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getViewableAd()Lcom/inmobi/media/Xe;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 6
    .line 7
    if-nez v1, :cond_8

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    const-string v2, "TAG"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v1, Lcom/inmobi/media/A5;

    .line 23
    .line 24
    const-string v4, "fireLoadedAndServedBeacons"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {p0, v3, v1}, Lcom/inmobi/media/T7;->a(BLjava/util/Map;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-virtual {p0, v3, v1}, Lcom/inmobi/media/T7;->a(BLjava/util/Map;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v1, Lcom/inmobi/media/M5;

    .line 48
    .line 49
    new-instance v3, Lcom/inmobi/media/bf;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 54
    .line 55
    invoke-direct {v3, p0, v4, v5}, Lcom/inmobi/media/bf;-><init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/ec;Lcom/inmobi/media/z5;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 59
    .line 60
    invoke-direct {v1, v0, p0, v3, v4}, Lcom/inmobi/media/M5;-><init>(Landroid/content/Context;Lcom/inmobi/media/T7;Lcom/inmobi/media/bf;Lcom/inmobi/media/z5;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/inmobi/media/T7;->d:Ljava/util/Set;

    .line 66
    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_8

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/inmobi/media/qe;

    .line 84
    .line 85
    :try_start_0
    iget-byte v3, v1, Lcom/inmobi/media/qe;->a:B

    .line 86
    .line 87
    const/4 v4, 0x3

    .line 88
    if-ne v3, v4, :cond_2

    .line 89
    .line 90
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    iget-object v4, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v5, "OMID tracker"

    .line 100
    .line 101
    check-cast v3, Lcom/inmobi/media/A5;

    .line 102
    .line 103
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    :goto_1
    iget-object v1, v1, Lcom/inmobi/media/qe;->b:Ljava/util/HashMap;

    .line 110
    .line 111
    const-string v3, "omidAdSession"

    .line 112
    .line 113
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    instance-of v3, v1, Lcom/inmobi/media/ga;

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    check-cast v1, Lcom/inmobi/media/ga;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/4 v1, 0x0

    .line 125
    :goto_2
    iget-object v3, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    iget-byte v4, p0, Lcom/inmobi/media/T7;->K:B

    .line 132
    .line 133
    if-nez v4, :cond_5

    .line 134
    .line 135
    new-instance v4, Lcom/inmobi/media/ka;

    .line 136
    .line 137
    iget-object v5, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 138
    .line 139
    invoke-direct {v4, p0, v3, v1, v5}, Lcom/inmobi/media/ka;-><init>(Lcom/inmobi/media/x;Lcom/inmobi/media/Xe;Lcom/inmobi/media/ga;Lcom/inmobi/media/z5;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    new-instance v4, Lcom/inmobi/media/la;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 146
    .line 147
    invoke-direct {v4, p0, v3, v1, v5}, Lcom/inmobi/media/la;-><init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/We;Lcom/inmobi/media/ga;Lcom/inmobi/media/z5;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    iput-object v4, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 154
    .line 155
    if-eqz v1, :cond_2

    .line 156
    .line 157
    iget-object v3, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "Did not find a OMID ad session; the OMID decorator will not be applied."

    .line 163
    .line 164
    check-cast v1, Lcom/inmobi/media/A5;

    .line 165
    .line 166
    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :goto_4
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    iget-object v4, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 175
    .line 176
    const-string v5, "Exception occurred while creating the Display viewable ad : "

    .line 177
    .line 178
    invoke-static {v4, v2, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v1, v5}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v3, Lcom/inmobi/media/A5;

    .line 187
    .line 188
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    sget-object v3, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 192
    .line 193
    const-string v3, "event"

    .line 194
    .line 195
    invoke-static {v1, v3}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    sget-object v3, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 200
    .line 201
    invoke-virtual {v3, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 207
    .line 208
    return-object v0
.end method

.method public final h()Lcom/inmobi/media/D8;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->c()Lcom/inmobi/media/x8;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    :cond_1
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v0, v1, Lcom/inmobi/media/x8;->e:Lcom/inmobi/media/D8;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/inmobi/media/T7;->q:Lcom/inmobi/media/D8;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/T7;->q:Lcom/inmobi/media/D8;

    .line 22
    .line 23
    return-object v0
.end method

.method public i()Lcom/inmobi/media/ef;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->T:Lcom/inmobi/media/O7;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroid/content/Context;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-byte v1, p0, Lcom/inmobi/media/T7;->a:B

    .line 3
    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_1
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v2, "onPause"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/inmobi/media/T7;->u:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/inmobi/media/T8;->b()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->h()Lcom/inmobi/media/D8;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, v1, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/inmobi/media/b1;->a()V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v3, "reportFirstPageRendered"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/inmobi/media/p8;->b(I)Lcom/inmobi/media/h8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, p0, Lcom/inmobi/media/T7;->n:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-boolean v3, p0, Lcom/inmobi/media/T7;->t:Z

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/T7;->n:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, v0, Lcom/inmobi/media/h8;->y:J

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/inmobi/media/T7;->r:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v4, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v3, Lcom/inmobi/media/A5;

    .line 78
    .line 79
    const-string v1, "Page-view impression record request"

    .line 80
    .line 81
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 85
    .line 86
    const-string v3, "page_view"

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/inmobi/media/T7;->o:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final o()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lub/g2;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lub/g2;-><init>(Lcom/inmobi/media/T7;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v2, "onActivityDestroyed"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/inmobi/media/e3;->b()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/content/Context;

    .line 46
    .line 47
    instance-of v0, p1, Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    check-cast p1, Landroid/app/Activity;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "TAG"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Lcom/inmobi/media/A5;

    .line 28
    .line 29
    const-string v1, "onResume"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/inmobi/media/T7;->u:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->c()V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->p()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, v0, p1}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->d()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->l()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->h()Lcom/inmobi/media/D8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/inmobi/media/b1;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/inmobi/media/b1;->c:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/inmobi/media/b1;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/inmobi/media/b1;->a(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v2, "unlockRewards"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/inmobi/media/T7;->A:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/inmobi/media/p8;->h:Ljava/util/HashMap;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    const-string v2, "rewards"

    .line 39
    .line 40
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "<get-TAG>(...)"

    .line 54
    .line 55
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v2, Lcom/inmobi/media/A5;

    .line 59
    .line 60
    const-string v4, "onAdRewardsUnlocked"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v2, v1, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/inmobi/media/S0;->Z()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/inmobi/media/F0;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v1, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/inmobi/media/F0;->b(Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, v1, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    check-cast v0, Lcom/inmobi/media/A5;

    .line 100
    .line 101
    const-string v1, "InMobi"

    .line 102
    .line 103
    const-string v2, "Listener was garbage collected.Unable to give callback"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    return-void
.end method

.method public final setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/media/T7;->z:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method
