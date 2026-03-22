.class public final Lcom/inmobi/ads/InMobiBanner;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiBanner$AnimationType;,
        Lcom/inmobi/ads/InMobiBanner$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInMobiBanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiBanner.kt\ncom/inmobi/ads/InMobiBanner\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,777:1\n107#2:778\n79#2,22:779\n107#2:801\n79#2,22:802\n107#2:824\n79#2,22:825\n1#3:847\n*S KotlinDebug\n*F\n+ 1 InMobiBanner.kt\ncom/inmobi/ads/InMobiBanner\n*L\n140#1:778\n140#1:779,22\n157#1:801\n157#1:802,22\n162#1:824\n162#1:825,22\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/s5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/inmobi/media/H1;

.field public b:Lcom/inmobi/ads/banner/AudioListener;

.field public c:Lcom/inmobi/media/D1;

.field public d:Lcom/inmobi/media/R1;

.field public final e:Lcom/inmobi/ads/InMobiBanner$a;

.field public f:I

.field public g:Z

.field public final h:Lcom/inmobi/media/P1;

.field public i:I

.field public j:I

.field public k:Lcom/inmobi/ads/InMobiBanner$AnimationType;

.field public l:J

.field public m:Ljava/lang/ref/WeakReference;

.field public final n:Lcom/inmobi/media/Wa;

.field public final o:Lcom/inmobi/ads/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/s5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/s5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/ads/InMobiBanner;->Companion:Lcom/inmobi/media/s5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v0, Lcom/inmobi/media/D1;->d:Lcom/inmobi/media/D1;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->c:Lcom/inmobi/media/D1;

    .line 51
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$a;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->g:Z

    .line 53
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->k:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 54
    new-instance v0, Lcom/inmobi/media/Wa;

    invoke-direct {v0}, Lcom/inmobi/media/Wa;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 55
    new-instance v1, Lcom/inmobi/ads/e;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/e;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->o:Lcom/inmobi/ads/e;

    .line 56
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->m:Ljava/lang/ref/WeakReference;

    .line 59
    :cond_0
    new-instance v1, Lcom/inmobi/media/R1;

    invoke-direct {v1}, Lcom/inmobi/media/R1;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 60
    iput-wide p2, v0, Lcom/inmobi/media/Wa;->a:J

    .line 61
    const-string p2, "banner"

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/R1;->A()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    .line 63
    new-instance p1, Lcom/inmobi/media/P1;

    invoke-direct {p1, p0}, Lcom/inmobi/media/P1;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->h:Lcom/inmobi/media/P1;

    return-void

    .line 64
    :cond_2
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    const-string p2, "TAG"

    const-string p3, "InMobiBanner"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "Invalid Placement id: "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attributeSet"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v1, Lcom/inmobi/media/D1;->d:Lcom/inmobi/media/D1;

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->c:Lcom/inmobi/media/D1;

    .line 3
    new-instance v1, Lcom/inmobi/ads/InMobiBanner$a;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiBanner$a;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->g:Z

    .line 5
    sget-object v2, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->k:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 6
    new-instance v2, Lcom/inmobi/media/Wa;

    invoke-direct {v2}, Lcom/inmobi/media/Wa;-><init>()V

    iput-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 7
    new-instance v2, Lcom/inmobi/ads/e;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/e;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->o:Lcom/inmobi/ads/e;

    .line 8
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result v2

    const-string v3, "TAG"

    const-string v4, "InMobiBanner"

    if-eqz v2, :cond_19

    .line 9
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->m:Ljava/lang/ref/WeakReference;

    .line 11
    :cond_0
    new-instance p1, Lcom/inmobi/media/R1;

    invoke-direct {p1}, Lcom/inmobi/media/R1;-><init>()V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 12
    const-string p1, "placementId"

    const-string v2, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    invoke-interface {p2, v2, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string v5, "refreshInterval"

    invoke-interface {p2, v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x20

    const/4 v5, 0x0

    if-eqz p1, :cond_10

    const-wide/high16 v6, -0x8000000000000000L

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    move v9, v5

    move v10, v9

    :goto_0
    if-gt v9, v8, :cond_6

    if-nez v10, :cond_1

    move v11, v9

    goto :goto_1

    :cond_1
    move v11, v8

    .line 15
    :goto_1
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 16
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_2

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v5

    :goto_2
    if-nez v10, :cond_4

    if-nez v11, :cond_3

    move v10, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v8, v1

    .line 17
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    .line 20
    invoke-virtual {v9, v5, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 21
    const-string v11, "plid-"

    invoke-static {v11, v10, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    move v10, v5

    move v11, v10

    :goto_4
    if-gt v10, v9, :cond_c

    if-nez v11, :cond_7

    move v12, v10

    goto :goto_5

    :cond_7
    move v12, v9

    .line 25
    :goto_5
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 26
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_8

    move v12, v1

    goto :goto_6

    :cond_8
    move v12, v5

    :goto_6
    if-nez v11, :cond_a

    if-nez v12, :cond_9

    move v11, v1

    goto :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    if-nez v12, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_c
    :goto_7
    add-int/2addr v9, v1

    .line 27
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_9

    .line 30
    :cond_d
    iget-object v8, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v4, v9}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 31
    :catch_0
    iget-object v8, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 32
    :catch_1
    iget-object v8, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v4, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_8
    move-wide v8, v6

    :goto_9
    cmp-long p1, v8, v6

    if-eqz p1, :cond_f

    .line 33
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    iput-wide v8, p1, Lcom/inmobi/media/Wa;->a:J

    goto :goto_a

    .line 34
    :cond_f
    new-instance p1, Lcom/inmobi/ads/exceptions/InvalidPlacementIdException;

    invoke-direct {p1}, Lcom/inmobi/ads/exceptions/InvalidPlacementIdException;-><init>()V

    throw p1

    .line 35
    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "banner"

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/inmobi/media/R1;->A()I

    move-result p1

    goto :goto_b

    :cond_11
    move p1, v5

    :goto_b
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    .line 38
    new-instance p1, Lcom/inmobi/media/P1;

    invoke-direct {p1, p0}, Lcom/inmobi/media/P1;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->h:Lcom/inmobi/media/P1;

    if-eqz p2, :cond_18

    .line 39
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    move v0, v5

    move v6, v0

    :goto_c
    if-gt v0, p1, :cond_17

    if-nez v6, :cond_12

    move v7, v0

    goto :goto_d

    :cond_12
    move v7, p1

    .line 40
    :goto_d
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 41
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_13

    move v7, v1

    goto :goto_e

    :cond_13
    move v7, v5

    :goto_e
    if-nez v6, :cond_15

    if-nez v7, :cond_14

    move v6, v1

    goto :goto_c

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    if-nez v7, :cond_16

    goto :goto_f

    :cond_16
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_17
    :goto_f
    add-int/2addr p1, v1

    .line 42
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_10

    .line 46
    :catch_2
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-string p1, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v1, v4, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_10
    return-void

    .line 48
    :cond_19
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lcom/inmobi/ads/InMobiBanner;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    const-string v0, "TAG"

    const-string v1, "InMobiBanner"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$onSuccess"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 38
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v2, "The height or width of the banner can not be determined"

    .line 40
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_2

    const/16 v2, 0x87b

    invoke-virtual {p1, v2}, Lcom/inmobi/media/we;->a(S)V

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-eqz p1, :cond_5

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->CONFIGURATION_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p1, p0, v2}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v2, :cond_3

    const/16 v3, 0x87c

    invoke-virtual {v2, v3}, Lcom/inmobi/media/we;->a(S)V

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v2, p0, v3}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 45
    :cond_4
    iget-object p0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/A5;

    const-string v0, "InMobiBanner$4.run() threw unexpected error: "

    invoke-virtual {p0, v1, v0, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static final synthetic access$cancelScheduledRefresh(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final access$checkForRefreshRate(Lcom/inmobi/ads/InMobiBanner;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->l:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/R1;->a(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->l:J

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    :goto_0
    return p0
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFrameSizeString(Lcom/inmobi/ads/InMobiBanner;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->getFrameSizeString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "InMobiBanner"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$hasValidSize(Lcom/inmobi/ads/InMobiBanner;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$load(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/controllers/PublisherCallbacks;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/inmobi/ads/InMobiBanner;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMBannerHeightInDp$p(Lcom/inmobi/ads/InMobiBanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMBannerWidthInDp$p(Lcom/inmobi/ads/InMobiBanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 2
    .line 3
    return-void
.end method

.method private final getFrameSizeString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x78

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static synthetic getPreloadManager$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->h:Lcom/inmobi/media/P1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->getFrameSizeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/inmobi/media/R1;->a(Landroid/content/Context;Lcom/inmobi/media/Wa;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    invoke-virtual {p1, p2, p2}, Lcom/inmobi/media/R1;->a(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    return-void
.end method

.method public final a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V
    .locals 6

    .line 4
    const-string v0, "TAG"

    const-string v1, "InMobiBanner"

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    iput-object p2, v2, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x20

    const-string v4, "load called - placementType - "

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v2}, Lcom/inmobi/media/R1;->B()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 7
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/media/we;->w()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "load already in progress"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_3

    const/16 p2, 0x879

    invoke-virtual {p1, p2}, Lcom/inmobi/media/R1;->b(S)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    const-string p1, "InMobi"

    invoke-static {v5, p1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "getContext(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v5, "banner"

    invoke-virtual {p0, v2, v5}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/inmobi/media/we;->w()V

    .line 19
    :cond_7
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v1, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_8
    const-string p2, "load"

    new-instance v2, Lcom/inmobi/media/t5;

    invoke-direct {v2, p0, p1, p3}, Lcom/inmobi/media/t5;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/controllers/PublisherCallbacks;Z)V

    invoke-virtual {p0, p2, v2}, Lcom/inmobi/ads/InMobiBanner;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 21
    :goto_1
    iget-object p2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p2, :cond_9

    const/16 p3, 0x87c

    invoke-virtual {p2, p3}, Lcom/inmobi/media/we;->a(S)V

    .line 22
    :cond_9
    iget-object p2, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-eqz p2, :cond_a

    .line 23
    new-instance p3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p3, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 24
    invoke-virtual {p2, p0, p3}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 25
    :cond_a
    iget-object p2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string p3, "Load failed with unexpected error: "

    invoke-virtual {p2, v1, p3, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    const-string v1, "TAG"

    const-string v2, "InMobiBanner"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "validateSizeAndLoad"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "invalid banner size. fail."

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_2

    const/16 p2, 0x87a

    invoke-virtual {p1, p2}, Lcom/inmobi/media/we;->a(S)V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->CONFIGURATION_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p1, p0, p2}, Lcom/inmobi/media/z;->a(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    :cond_3
    return-void

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->b()Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    new-instance p1, Lsb/b;

    invoke-direct {p1, p0, p2}, Lsb/b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v0, 0xc8

    .line 33
    invoke-static {p1, v0, v1}, Lcom/inmobi/media/Md;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 34
    :cond_5
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TAG"

    const-string v3, "InMobiBanner"

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The layout params of the banner must be set before calling "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " or call setBannerSize(int widthInDp, int heightInDp) before "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    .line 55
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/inmobi/media/B2;->b(F)I

    move-result p1

    .line 56
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    .line 58
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/inmobi/media/B2;->b(F)I

    move-result p1

    .line 59
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 61
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v2, "The height or width of a Banner ad can\'t be WRAP_CONTENT or call setBannerSize(int widthInDp, int heightInDp) before "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    const-string v1, "TAG"

    const-string v2, "InMobiBanner"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "checkStateAndLogError"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Listener supplied is null, Ignoring your call."

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final destroy()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->z()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    .line 16
    .line 17
    return-void
.end method

.method public final disableHardwareAcceleration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/Wa;->d:Z

    .line 5
    .line 6
    return-void
.end method

.method public final getAudioStatusInternal$media_release()Lcom/inmobi/media/D1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->c:Lcom/inmobi/media/D1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMAdManager$media_release()Lcom/inmobi/media/R1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMAudioListener$media_release()Lcom/inmobi/ads/banner/AudioListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->b:Lcom/inmobi/ads/banner/AudioListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMPubListener$media_release()Lcom/inmobi/media/H1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMPubSettings$media_release()Lcom/inmobi/media/Wa;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacementId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/inmobi/media/Wa;->a:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final getPreloadManager()Lcom/inmobi/ads/PreloadManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->o:Lcom/inmobi/ads/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignals()V
    .locals 3
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    const-string v1, "getSignals()"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/InMobiBanner;->a(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/inmobi/media/R1;->D()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v1, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "getContext(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "getToken"

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const-string v1, "TAG"

    .line 52
    .line 53
    const-string v2, "InMobiBanner"

    .line 54
    .line 55
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lcom/inmobi/media/A5;

    .line 59
    .line 60
    const-string v1, "getSignals"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 80
    .line 81
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 82
    .line 83
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->CONFIGURATION_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 84
    .line 85
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/inmobi/media/O1;->onRequestPayloadCreationFailed(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method public final isAudioAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final load()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 17
    const-string v2, "NonAB"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final load(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->m:Ljava/lang/ref/WeakReference;

    .line 22
    iget-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 23
    const-string v1, "NonAB"

    invoke-virtual {p0, p1, v1, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final load([B)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    const-string v1, "AB"

    iput-object v1, v0, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    .line 5
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    move-result v0

    .line 6
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    .line 8
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    move-result v0

    .line 9
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/R1;->D()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/R1;->D()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/we;->q()B

    move-result v0

    if-nez v0, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v1, "banner"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/media/we;->w()V

    .line 14
    :cond_3
    new-instance v0, Lcom/inmobi/ads/d;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/d;-><init>(Lcom/inmobi/ads/InMobiBanner;[B)V

    const-string p1, "load(byte[])"

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/InMobiBanner;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->F()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    .line 26
    int-to-float v0, v0

    .line 27
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    div-float/2addr v0, v1

    .line 32
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    int-to-float v0, v0

    .line 45
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    div-float/2addr v0, v1

    .line 50
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->setupBannerSizeObserver()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh$media_release()V

    .line 66
    .line 67
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v1, 0x1d

    .line 71
    .line 72
    if-lt v0, v1, :cond_3

    .line 73
    .line 74
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "getRootWindowInsets(...)"

    .line 85
    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/inmobi/media/U3;->a(Landroid/view/WindowInsets;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    const-string v2, "TAG"

    .line 104
    .line 105
    const-string v3, "InMobiBanner"

    .line 106
    .line 107
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    check-cast v1, Lcom/inmobi/media/A5;

    .line 111
    .line 112
    const-string v2, "InMobiBanner#onAttachedToWindow() handler threw unexpected error: "

    .line 113
    .line 114
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, "TAG"

    .line 27
    .line 28
    const-string v3, "InMobiBanner"

    .line 29
    .line 30
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Lcom/inmobi/media/A5;

    .line 34
    .line 35
    const-string v2, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error: "

    .line 36
    .line 37
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "changedView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh$media_release()V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :goto_0
    iget-object p2, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string v0, "TAG"

    .line 32
    .line 33
    const-string v1, "InMobiBanner"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast p2, Lcom/inmobi/media/A5;

    .line 39
    .line 40
    const-string v0, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: "

    .line 41
    .line 42
    invoke-virtual {p2, v1, v0, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh$media_release()V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v1, "TAG"

    .line 27
    .line 28
    const-string v2, "InMobiBanner"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lcom/inmobi/media/A5;

    .line 34
    .line 35
    const-string v1, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: "

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    return-void
.end method

.method public final pause()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->E()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v2, "TAG"

    .line 25
    .line 26
    const-string v3, "InMobiBanner"

    .line 27
    .line 28
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Lcom/inmobi/media/A5;

    .line 32
    .line 33
    const-string v2, "SDK encountered unexpected error in pausing ad; "

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void
.end method

.method public final refreshBanner$media_release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->e:Lcom/inmobi/ads/InMobiBanner$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "NonAB"

    .line 5
    .line 6
    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/ads/InMobiBanner;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v2, "TAG"

    .line 25
    .line 26
    const-string v3, "InMobiBanner"

    .line 27
    .line 28
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Lcom/inmobi/media/A5;

    .line 32
    .line 33
    const-string v2, "SDK encountered unexpected error in resuming ad; "

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void
.end method

.method public final scheduleRefresh$media_release()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->h:Lcom/inmobi/media/P1;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->y()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->g:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->h:Lcom/inmobi/media/P1;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    .line 41
    .line 42
    mul-int/lit16 v2, v2, 0x3e8

    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/InMobiBanner$AnimationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animationType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->k:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 7
    .line 8
    return-void
.end method

.method public final setAudioListener(Lcom/inmobi/ads/banner/AudioListener;)V
    .locals 2
    .param p1    # Lcom/inmobi/ads/banner/AudioListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "audioListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->b:Lcom/inmobi/ads/banner/AudioListener;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->c:Lcom/inmobi/media/D1;

    .line 9
    .line 10
    sget-object v1, Lcom/inmobi/media/D1;->d:Lcom/inmobi/media/D1;

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    sget-object v1, Lcom/inmobi/media/D1;->b:Lcom/inmobi/media/C1;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v1, "item"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->COMPLETED:Lcom/inmobi/ads/AudioStatus;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->PAUSED:Lcom/inmobi/ads/AudioStatus;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AudioStatus;->PLAYING:Lcom/inmobi/ads/AudioStatus;

    .line 43
    .line 44
    :goto_0
    invoke-interface {p1, p0, v0}, Lcom/inmobi/ads/banner/AudioListener;->onAudioStatusChanged(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/AudioStatus;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final setAudioStatusInternal$media_release(Lcom/inmobi/media/D1;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/D1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->c:Lcom/inmobi/media/D1;

    .line 7
    .line 8
    return-void
.end method

.method public final setBannerSize(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/inmobi/ads/InMobiBanner;->j:I

    .line 4
    .line 5
    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "contentUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final setEnableAutoRefresh(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiBanner;->g:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh$media_release()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v1, "TAG"

    .line 31
    .line 32
    const-string v2, "InMobiBanner"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lcom/inmobi/media/A5;

    .line 38
    .line 39
    const-string v1, "Setting up auto-refresh failed with unexpected error: "

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "tp"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/inmobi/media/Vc;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "tp-v"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/inmobi/media/Vc;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 26
    .line 27
    iput-object p1, v0, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    .line 28
    .line 29
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final setListener(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/listeners/BannerAdEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/I1;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/inmobi/media/I1;-><init>(Lcom/inmobi/ads/listeners/BannerAdEventListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    .line 12
    .line 13
    return-void
.end method

.method public final setMAdManager$media_release(Lcom/inmobi/media/R1;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/R1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 2
    .line 3
    return-void
.end method

.method public final setMAudioListener$media_release(Lcom/inmobi/ads/banner/AudioListener;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/banner/AudioListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->b:Lcom/inmobi/ads/banner/AudioListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setMPubListener$media_release(Lcom/inmobi/media/H1;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/H1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->a:Lcom/inmobi/media/H1;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshInterval(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->n:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    const-string v1, "NonAB"

    .line 4
    .line 5
    iput-object v1, v0, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getContext(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "banner"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/InMobiBanner;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->f:I

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/R1;->a(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v1, "TAG"

    .line 49
    .line 50
    const-string v2, "InMobiBanner"

    .line 51
    .line 52
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Lcom/inmobi/media/A5;

    .line 56
    .line 57
    const-string v1, "Setting refresh interval failed with unexpected error: "

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_2
    return-void
.end method

.method public final setWatermarkData(Lcom/inmobi/ads/WatermarkData;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/WatermarkData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "watermarkData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/ads/WatermarkData;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setupBannerSizeObserver()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/inmobi/media/u5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/inmobi/media/u5;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final swapAdUnitsAndDisplayAd$media_release()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/R1;->K()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->k:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/b;->a(Lcom/inmobi/ads/InMobiBanner$AnimationType;FF)Landroid/view/animation/Animation;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/inmobi/media/R1;->a(Landroid/widget/RelativeLayout;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->d:Lcom/inmobi/media/R1;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v2, "TAG"

    .line 51
    .line 52
    const-string v3, "InMobiBanner"

    .line 53
    .line 54
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v1, Lcom/inmobi/media/A5;

    .line 58
    .line 59
    const-string v2, "Unexpected error while displaying Banner Ad : "

    .line 60
    .line 61
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_2
    return-void
.end method
