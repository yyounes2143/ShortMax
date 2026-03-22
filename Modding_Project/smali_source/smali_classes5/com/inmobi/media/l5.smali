.class public final Lcom/inmobi/media/l5;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/inmobi/media/k5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getCurrentOrientation()Lcom/inmobi/ads/rendering/orientation/Orientation;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lcom/inmobi/media/l5;

    .line 7
    .line 8
    const-string v4, "currentOrientation"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lcom/inmobi/media/l5;->d:[Lkotlin/reflect/KProperty;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 17
    .line 18
    sget-object p1, Lkotlin/properties/a;->a:Lkotlin/properties/a;

    .line 19
    .line 20
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/inmobi/media/k5;

    .line 29
    .line 30
    invoke-direct {v0, p1, p0}, Lcom/inmobi/media/k5;-><init>(Lcom/inmobi/media/pa;Lcom/inmobi/media/l5;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/inmobi/media/l5;->c:Lcom/inmobi/media/k5;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/ra;)V
    .locals 2

    const-string v0, "orientationProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-boolean v0, p1, Lcom/inmobi/media/ra;->a:Z

    const/16 v1, 0xd

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/ra;->b:Ljava/lang/String;

    .line 3
    const-string v0, "landscape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v3, 0x2

    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v4, 0x3

    .line 26
    if-ne v1, v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v4, 0x4

    .line 30
    if-ne v1, v4, :cond_3

    .line 31
    .line 32
    :goto_0
    move v2, v3

    .line 33
    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    .line 34
    .line 35
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/inmobi/media/l5;->c:Lcom/inmobi/media/k5;

    .line 44
    .line 45
    sget-object v2, Lcom/inmobi/media/l5;->d:[Lkotlin/reflect/KProperty;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aget-object v2, v2, v3

    .line 49
    .line 50
    invoke-virtual {v1, p0, v2, v0}, Lkotlin/properties/b;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l5;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
