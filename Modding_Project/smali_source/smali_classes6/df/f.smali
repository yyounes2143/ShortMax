.class public final Ldf/f;
.super Ljava/lang/Object;
.source "FloatViewManagerFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Ldf/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldf/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ldf/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldf/f;->a:Ldf/f;

    .line 7
    .line 8
    const/high16 v0, 0x41200000    # 10.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Ldf/f;->b:I

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Ldf/f;->b:I

    .line 2
    .line 3
    return v0
.end method

.method private final c(Landroid/view/View;Lff/a$a;)Ldf/e;
    .locals 4

    .line 1
    new-instance v0, Ldf/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ldf/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ldf/e;->l()Ldf/e$b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget v2, Ldf/f;->b:I

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v2, v3

    .line 19
    invoke-virtual {v1, v2}, Ldf/e$b;->e(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lff/a;

    .line 23
    .line 24
    invoke-direct {v1}, Lff/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lff/a;->b(Lff/a$a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ldf/e;->o(Lef/c;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Ldf/f$a;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ldf/f$a;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ldf/e;->n(Lef/b;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method static synthetic d(Ldf/f;Landroid/view/View;Lff/a$a;ILjava/lang/Object;)Ldf/e;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Ldf/f;->c(Landroid/view/View;Lff/a$a;)Ldf/e;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ldf/e;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "episode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/immersion/CampaignShortsFloatView;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/CampaignShortsFloatView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/CampaignShortsFloatView;->setEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 p2, 0x2

    .line 21
    invoke-static {p0, v0, p1, p2, p1}, Ldf/f;->d(Ldf/f;Landroid/view/View;Lff/a$a;ILjava/lang/Object;)Ldf/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final e(Ljava/lang/String;)Ldf/e;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Laa/a;->a:Laa/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    :goto_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/subs/RestoreTipView;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/view/subs/RestoreTipView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/subs/RestoreTipView;->setContent(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    invoke-static {p0, v2, v1, p1, v1}, Ldf/f;->d(Ldf/f;Landroid/view/View;Lff/a$a;ILjava/lang/Object;)Ldf/e;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
