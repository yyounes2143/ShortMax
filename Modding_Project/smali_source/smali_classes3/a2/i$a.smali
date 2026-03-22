.class public final La2/i$a;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Ljava/math/BigDecimal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/util/Currency;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lcom/facebook/appevents/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V
    .locals 1
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Currency;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/appevents/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "purchaseAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "currency"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "param"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "operationalData"

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
    iput-object p1, p0, La2/i$a;->a:Ljava/math/BigDecimal;

    .line 25
    .line 26
    iput-object p2, p0, La2/i$a;->b:Ljava/util/Currency;

    .line 27
    .line 28
    iput-object p3, p0, La2/i$a;->c:Landroid/os/Bundle;

    .line 29
    .line 30
    iput-object p4, p0, La2/i$a;->d:Lcom/facebook/appevents/i0;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, La2/i$a;->b:Ljava/util/Currency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/facebook/appevents/i0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, La2/i$a;->d:Lcom/facebook/appevents/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, La2/i$a;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/math/BigDecimal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, La2/i$a;->a:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method
