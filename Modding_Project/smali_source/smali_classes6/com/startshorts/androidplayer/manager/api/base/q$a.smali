.class public final Lcom/startshorts/androidplayer/manager/api/base/q$a;
.super Ljava/lang/Object;
.source "ApiUrlPay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/api/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lcom/startshorts/androidplayer/manager/api/base/q$a;

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->a:Lcom/startshorts/androidplayer/manager/api/base/q$a;

    .line 7
    .line 8
    const-string v0, "app/pay/v4/coinSkuBuy"

    .line 9
    .line 10
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "app/subscription/android"

    .line 13
    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "app/subscription/androidChangeSubscription"

    .line 17
    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->d:Ljava/lang/String;

    .line 19
    .line 20
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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/q$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
