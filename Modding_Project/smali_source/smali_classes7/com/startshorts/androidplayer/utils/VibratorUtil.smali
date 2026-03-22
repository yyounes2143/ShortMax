.class public final Lcom/startshorts/androidplayer/utils/VibratorUtil;
.super Ljava/lang/Object;
.source "VibratorUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/utils/VibratorUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Landroid/os/Vibrator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/VibratorUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/utils/VibratorUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a:Lcom/startshorts/androidplayer/utils/VibratorUtil;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/startshorts/androidplayer/utils/VibratorUtil;->b:Lqt/a;

    .line 16
    .line 17
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

.method public static final synthetic a()Landroid/os/Vibrator;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/VibratorUtil;->c:Landroid/os/Vibrator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lqt/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/VibratorUtil;->b:Lqt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Landroid/os/Vibrator;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/utils/VibratorUtil;->c:Landroid/os/Vibrator;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final d()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/utils/VibratorUtil$vibrate$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "vibrate"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
