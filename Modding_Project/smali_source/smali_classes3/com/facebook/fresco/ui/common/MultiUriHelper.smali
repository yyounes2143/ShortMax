.class public final Lcom/facebook/fresco/ui/common/MultiUriHelper;
.super Ljava/lang/Object;
.source "MultiUriHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiUriHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiUriHelper.kt\ncom/facebook/fresco/ui/common/MultiUriHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/ui/common/MultiUriHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/MultiUriHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/MultiUriHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/ui/common/MultiUriHelper;->INSTANCE:Lcom/facebook/fresco/ui/common/MultiUriHelper;

    .line 7
    .line 8
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

.method public static final getMainUri(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lk2/e;)Landroid/net/Uri;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lk2/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;[TT;",
            "Lk2/e<",
            "TT;",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "requestToUri"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p3, p0}, Lk2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/net/Uri;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p0, v0

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    if-eqz p2, :cond_4

    .line 21
    .line 22
    array-length p0, p2

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    aget-object p0, p2, p0

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    invoke-interface {p3, p0}, Lk2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/net/Uri;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object p0, v0

    .line 39
    :goto_1
    if-eqz p0, :cond_4

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 43
    .line 44
    invoke-interface {p3, p1}, Lk2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    move-object v0, p0

    .line 49
    check-cast v0, Landroid/net/Uri;

    .line 50
    .line 51
    :cond_5
    return-object v0
.end method
