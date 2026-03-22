.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "worker"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/m;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/m;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
