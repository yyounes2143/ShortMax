.class final Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AsyncImagePainter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/compose/AsyncImagePainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcoil/compose/AsyncImagePainter$b;",
        "Lcoil/compose/AsyncImagePainter$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;->d:Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Lcoil/compose/AsyncImagePainter$b;)Lcoil/compose/AsyncImagePainter$b;
    .locals 0
    .param p1    # Lcoil/compose/AsyncImagePainter$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcoil/compose/AsyncImagePainter$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;->b(Lcoil/compose/AsyncImagePainter$b;)Lcoil/compose/AsyncImagePainter$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
