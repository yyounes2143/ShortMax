.class public final Lcom/inmobi/ads/InMobiAudio;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiAudio$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInMobiAudio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiAudio.kt\ncom/inmobi/ads/InMobiAudio\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,596:1\n107#2:597\n79#2,22:598\n107#2:620\n79#2,22:621\n*S KotlinDebug\n*F\n+ 1 InMobiAudio.kt\ncom/inmobi/ads/InMobiAudio\n*L\n90#1:597\n90#1:598,22\n95#1:620\n95#1:621,22\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

.field public b:Lcom/inmobi/media/E1;

.field public final c:Ljava/lang/ref/WeakReference;

.field public final d:Lcom/inmobi/media/Wa;

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/inmobi/ads/InMobiAudio$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiAudio$a;-><init>(Lcom/inmobi/ads/InMobiAudio;)V

    .line 40
    new-instance v1, Lcom/inmobi/media/Wa;

    invoke-direct {v1}, Lcom/inmobi/media/Wa;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 41
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->c:Ljava/lang/ref/WeakReference;

    .line 44
    :cond_0
    new-instance v2, Lcom/inmobi/media/E1;

    invoke-direct {v2, v0}, Lcom/inmobi/media/E1;-><init>(Lcom/inmobi/ads/InMobiAudio$a;)V

    iput-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 45
    iput-wide p2, v1, Lcom/inmobi/media/Wa;->a:J

    .line 46
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiAudio;->a(Landroid/content/Context;)V

    return-void

    .line 47
    :cond_1
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    const-string p2, "InMobiAudio"

    invoke-direct {p1, p2}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "Placement id value supplied in XML layout is not valid. Please make sure placement id is in plid-0123456789 format."

    const-string v1, "Invalid Placement id: "

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attributeSet"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v2, Lcom/inmobi/ads/InMobiAudio$a;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/InMobiAudio$a;-><init>(Lcom/inmobi/ads/InMobiAudio;)V

    .line 3
    new-instance v3, Lcom/inmobi/media/Wa;

    invoke-direct {v3}, Lcom/inmobi/media/Wa;-><init>()V

    iput-object v3, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 4
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result v3

    const-string v4, "InMobiAudio"

    if-eqz v3, :cond_10

    .line 5
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/inmobi/ads/InMobiAudio;->c:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_0
    new-instance p1, Lcom/inmobi/media/E1;

    invoke-direct {p1, v2}, Lcom/inmobi/media/E1;-><init>(Lcom/inmobi/ads/InMobiAudio$a;)V

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 8
    const-string p1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "placementId"

    invoke-interface {p2, p1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const-wide/high16 v2, -0x8000000000000000L

    const/4 p2, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/16 v9, 0x20

    if-gt v7, v5, :cond_6

    if-nez v8, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v5

    .line 10
    :goto_1
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 11
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_2

    move v10, p2

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    if-nez v8, :cond_4

    if-nez v10, :cond_3

    move v8, p2

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v5, p2

    .line 12
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 15
    invoke-virtual {v7, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 16
    const-string v10, "plid-"

    invoke-static {v10, v8, p2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p2

    move v8, v6

    move v10, v8

    :goto_4
    if-gt v8, v7, :cond_c

    if-nez v10, :cond_7

    move v11, v8

    goto :goto_5

    :cond_7
    move v11, v7

    .line 20
    :goto_5
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 21
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_8

    move v11, p2

    goto :goto_6

    :cond_8
    move v11, v6

    :goto_6
    if-nez v10, :cond_a

    if-nez v11, :cond_9

    move v10, p2

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    if-nez v11, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_c
    :goto_7
    add-int/2addr v7, p2

    .line 22
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_9

    .line 25
    :cond_d
    invoke-static {p2, v4, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {p2, v4, v5}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 28
    :catch_0
    invoke-static {p2, v4, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p2, v4, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 31
    :catch_1
    const-string v0, "Placement id value supplied in XML layout is not valid. Audio creation failed."

    invoke-static {p2, v4, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p2, v4, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-wide p1, v2

    :goto_9
    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    iput-wide p1, v0, Lcom/inmobi/media/Wa;->a:J

    goto :goto_a

    .line 35
    :cond_e
    new-instance p1, Lcom/inmobi/ads/exceptions/InvalidPlacementIdException;

    invoke-direct {p1}, Lcom/inmobi/ads/exceptions/InvalidPlacementIdException;-><init>()V

    throw p1

    .line 36
    :cond_f
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiAudio;->a(Landroid/content/Context;)V

    return-void

    .line 37
    :cond_10
    new-instance p1, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;

    invoke-direct {p1, v4}, Lcom/inmobi/ads/exceptions/SdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lcom/inmobi/ads/InMobiAudio;)V
    .locals 6

    const-string v0, "InMobiAudio"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/inmobi/ads/InMobiAudio;->getFrameSizeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/media/E1;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    const-string v2, "The height or width of the audio ad can not be determined"

    .line 5
    invoke-static {v1, v0, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz v2, :cond_1

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lcom/inmobi/media/E1;->a(S)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/inmobi/media/E1;->j()Lcom/inmobi/media/S0;

    move-result-object v3

    .line 9
    new-instance v4, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v4, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iget-object p0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz p0, :cond_2

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/inmobi/media/E1;->a(S)V

    .line 12
    :cond_2
    const-string p0, "SDK encountered unexpected error while loading an ad"

    invoke-static {v1, v0, p0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic access$hasValidSize(Lcom/inmobi/ads/InMobiAudio;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setMViewHeightInDp$p(Lcom/inmobi/ads/InMobiAudio;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setMViewWidthInDp$p(Lcom/inmobi/ads/InMobiAudio;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

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
    iget v1, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

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
    iget v1, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

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


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 10

    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    invoke-direct {p0}, Lcom/inmobi/ads/InMobiAudio;->getFrameSizeString()Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pubSettings"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adSize"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v4, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    const-string v5, "access$getTAG$p(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v6, Lcom/inmobi/media/X;

    const-string v7, "audio"

    invoke-direct {v6, v7}, Lcom/inmobi/media/X;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "activity"

    goto :goto_0

    .line 39
    :cond_0
    const-string v3, "others"

    .line 40
    :goto_0
    invoke-virtual {v6, v3}, Lcom/inmobi/media/X;->d(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v3

    .line 41
    iget-wide v8, v1, Lcom/inmobi/media/Wa;->a:J

    invoke-virtual {v3, v8, v9}, Lcom/inmobi/media/X;->a(J)Lcom/inmobi/media/X;

    move-result-object v3

    .line 42
    iget-object v6, v1, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/inmobi/media/X;->c(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v3

    .line 43
    iget-object v6, v1, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    invoke-virtual {v3, v6}, Lcom/inmobi/media/X;->a(Ljava/util/Map;)Lcom/inmobi/media/X;

    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Lcom/inmobi/media/X;->a(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v2

    .line 45
    iget-boolean v3, v1, Lcom/inmobi/media/Wa;->d:Z

    invoke-virtual {v2, v3}, Lcom/inmobi/media/X;->a(Z)Lcom/inmobi/media/X;

    move-result-object v2

    .line 46
    iget-object v3, v1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inmobi/media/X;->e(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v2

    .line 47
    iget-object v3, v1, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inmobi/media/X;->b(Ljava/lang/String;)Lcom/inmobi/media/X;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/inmobi/media/X;->a()Lcom/inmobi/media/Z;

    move-result-object v2

    .line 49
    iget-object v3, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    if-eqz v3, :cond_2

    iget-object v6, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    if-nez v6, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v3, p1, v2, v0}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 51
    iget-object v3, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, v2, v0}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    new-instance v3, Lcom/inmobi/media/z1;

    invoke-direct {v3, p1, v2, v0}, Lcom/inmobi/media/z1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    iput-object v3, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 53
    new-instance v3, Lcom/inmobi/media/z1;

    invoke-direct {v3, p1, v2, v0}, Lcom/inmobi/media/z1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    iput-object v3, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 54
    iget-object p1, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    iput-object p1, v0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 55
    :cond_3
    :goto_2
    iget-object p1, v1, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 56
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1}, Lcom/inmobi/media/A5;->a()V

    :cond_4
    const/4 v1, 0x0

    .line 57
    invoke-static {v7, p1, v1}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/inmobi/media/A5;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/inmobi/media/we;->a(Lcom/inmobi/media/z5;)V

    .line 59
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "adding audioAdUnit1 to reference tracker"

    invoke-virtual {p1, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_5
    iget-object p1, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    .line 61
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "adding audioAdUnit2 to reference tracker"

    invoke-virtual {p1, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_6
    iget-object p1, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/media/Cb;->a(Ljava/lang/Object;Lcom/inmobi/media/z5;)V

    :cond_7
    return-void
.end method

.method public final a()Z
    .locals 10

    .line 13
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiAudio;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v2}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v4

    const-string v5, "access$getTAG$p(...)"

    if-eqz v4, :cond_0

    sget-object v6, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkForRefreshRate "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v4, v2, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 17
    :cond_1
    sget-object v4, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 18
    const-string v4, "ads"

    const-string v6, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v4

    .line 19
    check-cast v4, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 20
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig;->getAudio()Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;->getMinRefreshInterval()I

    move-result v4

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    mul-int/lit16 v0, v4, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_5

    const/16 v0, 0x87f

    .line 22
    invoke-virtual {v2, v0}, Lcom/inmobi/media/E1;->a(S)V

    .line 23
    iget-object v0, v2, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 24
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v6, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Ad cannot be refreshed before "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    .line 26
    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/we;->b(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 27
    sget-object v0, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds (AdPlacement Id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v7

    :goto_0
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v9, 0x29

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v3, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v7

    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiAudio;->e:J

    return v3
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

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

.method public final c()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "InMobiAudio"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "The layout params of the audio ad view must be set before calling load or call setAudioSize(int widthInDp, int heightInDp) before load"

    .line 18
    .line 19
    invoke-static {v1, v3, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    const/4 v4, -0x2

    .line 30
    if-eq v0, v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    if-ne v0, v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    div-float/2addr v0, v2

    .line 59
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    int-to-float v0, v0

    .line 72
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    div-float/2addr v0, v2

    .line 77
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    const-string v0, "The height or width of a Audio ad can\'t be WRAP_CONTENT or call setAudioSize(int widthInDp, int heightInDp) before load"

    .line 85
    .line 86
    invoke-static {v1, v3, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v2

    .line 90
    :cond_3
    :goto_1
    return v1
.end method

.method public final d()V
    .locals 7

    .line 1
    const-string v0, "InMobiAudio"

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 4
    .line 5
    const-string v2, "ads"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    sget-object v4, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v2, v4, v5}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v4, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig;->getAudio()Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;->isAudioEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/16 v2, 0x6b

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E1;->a(S)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/inmobi/media/E1;->j()Lcom/inmobi/media/S0;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v4, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 52
    .line 53
    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->FEATURE_DISABLED:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 54
    .line 55
    invoke-direct {v4, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v4}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const-string v1, "InMobi"

    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 70
    .line 71
    const-string v6, "NonAB"

    .line 72
    .line 73
    iput-object v6, v4, Lcom/inmobi/media/Wa;->e:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v6, "getContext(...)"

    .line 80
    .line 81
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lcom/inmobi/ads/InMobiAudio;->a(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 88
    .line 89
    if-eqz v4, :cond_7

    .line 90
    .line 91
    iget-object v4, v4, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/inmobi/media/M1;->E0()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v4, 0x0

    .line 101
    :goto_0
    if-ne v4, v3, :cond_7

    .line 102
    .line 103
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    sget-object v4, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 114
    .line 115
    const-string v5, "access$getTAG$p(...)"

    .line 116
    .line 117
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v6, "submitAdLoadFailed "

    .line 123
    .line 124
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v2, Lcom/inmobi/media/A5;

    .line 135
    .line 136
    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object v1, v1, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    const/16 v2, 0xf

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lcom/inmobi/media/S0;->b(S)V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

    .line 149
    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 153
    .line 154
    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 155
    .line 156
    invoke-direct {v2, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p0, v2}, Lcom/inmobi/ads/listeners/AdEventListener;->onAdLoadFailed(Ljava/lang/Object;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    const-string v1, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    .line 163
    .line 164
    invoke-static {v3, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->c()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_a

    .line 173
    .line 174
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 175
    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    const/16 v2, 0x6c

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E1;->a(S)V

    .line 181
    .line 182
    .line 183
    :cond_8
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 184
    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/inmobi/media/E1;->j()Lcom/inmobi/media/S0;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v4, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 192
    .line 193
    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 194
    .line 195
    invoke-direct {v4, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2, v4}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    return-void

    .line 202
    :cond_a
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v2, v4, v5}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    check-cast v2, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 214
    .line 215
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 216
    .line 217
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {}, Lcom/inmobi/media/Uc;->o()Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    invoke-virtual {v1, v4, v5}, Lcom/inmobi/media/L3;->a(Landroid/content/Context;Z)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getAudio()Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$AudioConfig;->getMinDeviceVolume()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-le v2, v1, :cond_d

    .line 238
    .line 239
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 240
    .line 241
    if-eqz v1, :cond_b

    .line 242
    .line 243
    const/16 v2, 0x6a

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E1;->a(S)V

    .line 246
    .line 247
    .line 248
    :cond_b
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 249
    .line 250
    if-eqz v1, :cond_c

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/inmobi/media/E1;->j()Lcom/inmobi/media/S0;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    new-instance v4, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 257
    .line 258
    sget-object v5, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->DEVICE_AUDIO_LEVEL_LOW:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 259
    .line 260
    invoke-direct {v4, v5}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v2, v4}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/media/S0;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 264
    .line 265
    .line 266
    :cond_c
    return-void

    .line 267
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->b()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_e

    .line 272
    .line 273
    new-instance v1, Lsb/a;

    .line 274
    .line 275
    invoke-direct {v1, p0}, Lsb/a;-><init>(Lcom/inmobi/ads/InMobiAudio;)V

    .line 276
    .line 277
    .line 278
    const-wide/16 v4, 0xc8

    .line 279
    .line 280
    invoke-static {v1, v4, v5}, Lcom/inmobi/media/Md;->a(Ljava/lang/Runnable;J)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_e
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->a()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_10

    .line 289
    .line 290
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 291
    .line 292
    if-eqz v1, :cond_10

    .line 293
    .line 294
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiAudio;->getFrameSizeString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :catch_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 303
    .line 304
    if-eqz v1, :cond_f

    .line 305
    .line 306
    const/16 v2, 0x69

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lcom/inmobi/media/E1;->a(S)V

    .line 309
    .line 310
    .line 311
    :cond_f
    const-string v1, "Unable to load ad; SDK encountered an unexpected error"

    .line 312
    .line 313
    invoke-static {v3, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_10
    :goto_1
    return-void
.end method

.method public final destroy()V
    .locals 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "access$getTAG$p(...)"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v6, "clear "

    .line 25
    .line 26
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v2, Lcom/inmobi/media/A5;

    .line 37
    .line 38
    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    sget-object v4, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "unregisterLifecycleCallbacks "

    .line 55
    .line 56
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v2, Lcom/inmobi/media/A5;

    .line 67
    .line 68
    invoke-virtual {v2, v4, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v2, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/inmobi/media/M1;->J0()V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v2, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/inmobi/media/M1;->J0()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v2, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/inmobi/media/M1;->g()V

    .line 90
    .line 91
    .line 92
    :cond_4
    iput-object v1, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/inmobi/media/M1;->g()V

    .line 99
    .line 100
    .line 101
    :cond_5
    iput-object v1, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 102
    .line 103
    iput-object v1, v0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 104
    .line 105
    iput-object v1, v0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/inmobi/media/we;->a(Ljava/lang/Boolean;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    iput-object v1, p0, Lcom/inmobi/ads/InMobiAudio;->a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

    .line 111
    .line 112
    return-void
.end method

.method public final disableHardwareAcceleration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/inmobi/media/Wa;->d:Z

    .line 5
    .line 6
    return-void
.end method

.method public final getMAdManager$media_release()Lcom/inmobi/media/E1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMPubListener$media_release()Lcom/inmobi/ads/listeners/AudioAdEventListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final load()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/E1;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/E1;->x()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    div-float/2addr v0, v1

    .line 29
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    div-float/2addr v0, v1

    .line 47
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiAudio;->setupViewSizeObserver()V

    .line 60
    .line 61
    .line 62
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v1, 0x1d

    .line 65
    .line 66
    if-lt v0, v1, :cond_3

    .line 67
    .line 68
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "getRootWindowInsets(...)"

    .line 79
    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v0}, Lcom/inmobi/media/U3;->a(Landroid/view/WindowInsets;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    const-string v0, "InMobiAudio"

    .line 88
    .line 89
    const-string v1, "InMobiAudio#onAttachedToWindow() handler threw unexpected error"

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "access$getTAG$p(...)"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "unregisterLifecycleCallbacks "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v1, Lcom/inmobi/media/A5;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/E1;->o:Lcom/inmobi/media/z1;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/inmobi/media/M1;->J0()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/E1;->p:Lcom/inmobi/media/z1;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->J0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string v0, "InMobiAudio"

    .line 56
    .line 57
    const-string v1, "InMobiAudio.onDetachedFromWindow() handler threw unexpected error"

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "access$getTAG$p(...)"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "pause "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v1, Lcom/inmobi/media/A5;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->F0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    const-string v0, "InMobi"

    .line 50
    .line 51
    const-string v1, "Could not pause ad; SDK encountered an unexpected error"

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "access$getTAG$p(...)"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "resume "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v1, Lcom/inmobi/media/A5;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/E1;->q:Lcom/inmobi/media/z1;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/inmobi/media/M1;->G0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    const-string v0, "InMobi"

    .line 50
    .line 51
    const-string v1, "Could not resume ad; SDK encountered an unexpected error"

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAudioSize(II)V
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
    iput p1, p0, Lcom/inmobi/ads/InMobiAudio;->f:I

    .line 2
    .line 3
    iput p2, p0, Lcom/inmobi/ads/InMobiAudio;->g:I

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
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/inmobi/media/Wa;->f:Ljava/lang/String;

    .line 9
    .line 10
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
    if-eqz p1, :cond_1

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/inmobi/media/Vc;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "tp-v"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/inmobi/media/Vc;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 30
    .line 31
    iput-object p1, v0, Lcom/inmobi/media/Wa;->c:Ljava/util/Map;

    .line 32
    .line 33
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->d:Lcom/inmobi/media/Wa;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/inmobi/media/Wa;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final setListener(Lcom/inmobi/ads/listeners/AudioAdEventListener;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/listeners/AudioAdEventListener;
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
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAudio;->a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

    .line 7
    .line 8
    return-void
.end method

.method public final setMAdManager$media_release(Lcom/inmobi/media/E1;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/E1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 2
    .line 3
    return-void
.end method

.method public final setMPubListener$media_release(Lcom/inmobi/ads/listeners/AudioAdEventListener;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/listeners/AudioAdEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAudio;->a:Lcom/inmobi/ads/listeners/AudioAdEventListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setupViewSizeObserver()V
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
    new-instance v1, Lcom/inmobi/media/q5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/inmobi/media/q5;-><init>(Lcom/inmobi/ads/InMobiAudio;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final show()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/inmobi/media/F1;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "access$getTAG$p(...)"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "submitAdShowCalled "

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v1, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, v0, Lcom/inmobi/media/E1;->r:Lcom/inmobi/media/z1;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->w0()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAudio;->b:Lcom/inmobi/media/E1;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/inmobi/media/E1;->a(Lcom/inmobi/ads/InMobiAudio;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method
