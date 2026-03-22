.class public final Lcom/moloco/sdk/internal/publisher/nativead/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/internal/publisher/nativead/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdShowListenerWithTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker$NativeAdSpecificTrackers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1863#2,2:140\n1863#2,2:142\n*S KotlinDebug\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker$NativeAdSpecificTrackers\n*L\n103#1:140,2\n108#1:142,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "persistentHttpRequest"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->a:Ljava/util/List;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->b:Ljava/util/List;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 14
    .line 15
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->d:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->a:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->b:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;->c()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;->a()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-ne v3, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;->b()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ne v3, v4, :cond_1

    .line 68
    .line 69
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;->c()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v3, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->b:Ljava/util/List;

    .line 80
    .line 81
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "urls"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->d:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->d:Ljava/util/Set;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
