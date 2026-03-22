.class public final Lcom/inmobi/media/x8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lcom/inmobi/media/T7;

.field public final c:Lcom/inmobi/media/z5;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/inmobi/media/D8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/T7;Lcom/inmobi/media/p8;Lcom/inmobi/media/z5;)V
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mNativeAdContainer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "dataModel"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/inmobi/media/x8;->b:Lcom/inmobi/media/T7;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/inmobi/media/x8;->c:Lcom/inmobi/media/z5;

    .line 27
    .line 28
    const-class v0, Lcom/inmobi/media/x8;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/inmobi/media/x8;->d:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v6, Lcom/inmobi/media/w8;

    .line 37
    .line 38
    invoke-direct {v6, p0}, Lcom/inmobi/media/w8;-><init>(Lcom/inmobi/media/x8;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/inmobi/media/v8;

    .line 42
    .line 43
    invoke-direct {v7, p0}, Lcom/inmobi/media/v8;-><init>(Lcom/inmobi/media/x8;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/inmobi/media/D8;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    move-object v2, p1

    .line 50
    move-object v3, p2

    .line 51
    move-object v4, p3

    .line 52
    move-object v5, p4

    .line 53
    move-object v8, p0

    .line 54
    move-object v9, p5

    .line 55
    invoke-direct/range {v1 .. v9}, Lcom/inmobi/media/D8;-><init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/T7;Lcom/inmobi/media/p8;Lcom/inmobi/media/w8;Lcom/inmobi/media/v8;Lcom/inmobi/media/x8;Lcom/inmobi/media/z5;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/inmobi/media/x8;->e:Lcom/inmobi/media/D8;

    .line 59
    .line 60
    iget-object p1, v0, Lcom/inmobi/media/D8;->m:Lcom/inmobi/media/D9;

    .line 61
    .line 62
    iget p2, p3, Lcom/inmobi/media/T7;->B:I

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sput p2, Lcom/inmobi/media/D9;->f:I

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;ZLcom/inmobi/media/ec;)Lcom/inmobi/media/J8;
    .locals 4

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "InMobiAdView"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v1

    .line 17
    :goto_0
    instance-of v3, p1, Lcom/inmobi/media/J8;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    check-cast v1, Lcom/inmobi/media/J8;

    .line 23
    .line 24
    :cond_1
    if-eqz p3, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/inmobi/media/x8;->e:Lcom/inmobi/media/D8;

    .line 27
    .line 28
    invoke-virtual {p1, v1, p2, p4}, Lcom/inmobi/media/D8;->a(Lcom/inmobi/media/J8;Landroid/view/ViewGroup;Lcom/inmobi/media/ec;)Lcom/inmobi/media/J8;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/x8;->e:Lcom/inmobi/media/D8;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p4, p1, Lcom/inmobi/media/D8;->o:Lcom/inmobi/media/ec;

    .line 42
    .line 43
    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/D8;->a(Lcom/inmobi/media/J8;Landroid/view/ViewGroup;)Lcom/inmobi/media/J8;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-boolean p4, p1, Lcom/inmobi/media/D8;->n:Z

    .line 48
    .line 49
    if-nez p4, :cond_3

    .line 50
    .line 51
    iget-object p4, p1, Lcom/inmobi/media/D8;->c:Lcom/inmobi/media/p8;

    .line 52
    .line 53
    iget-object p4, p4, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    .line 54
    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    if-eqz p4, :cond_3

    .line 58
    .line 59
    const-string v3, "container"

    .line 60
    .line 61
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "root"

    .line 68
    .line 69
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3, p4}, Lcom/inmobi/media/D8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    .line 73
    .line 74
    .line 75
    :cond_3
    move-object p1, p3

    .line 76
    :goto_1
    if-nez v1, :cond_4

    .line 77
    .line 78
    iget-object p2, p0, Lcom/inmobi/media/x8;->c:Lcom/inmobi/media/z5;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    iget-object p3, p0, Lcom/inmobi/media/x8;->d:Ljava/lang/String;

    .line 83
    .line 84
    const-string p4, "TAG"

    .line 85
    .line 86
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast p2, Lcom/inmobi/media/A5;

    .line 90
    .line 91
    const-string p4, "InMobiNative.getPrimaryView called with Non Native View."

    .line 92
    .line 93
    invoke-virtual {p2, p3, p4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    if-nez p1, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object p2, p0, Lcom/inmobi/media/x8;->b:Lcom/inmobi/media/T7;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/inmobi/media/J8;->setNativeStrandAd(Lcom/inmobi/media/T7;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    if-nez p1, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-object p1
.end method
