.class public final Lq3/c;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.kt"

# interfaces
.implements Ls2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lq3/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lq3/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/memory/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lq3/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq3/c;->c:Lq3/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lb4/d0;)V
    .locals 2
    .param p1    # Lb4/d0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "poolFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lq3/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lb4/d0;->h()Ln2/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lq3/b;-><init>(Ln2/g;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lq3/c;->a:Lq3/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lb4/d0;->d()Lcom/facebook/imagepipeline/memory/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "getFlexByteArrayPool(...)"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lq3/c;->b:Lcom/facebook/imagepipeline/memory/c;

    .line 30
    .line 31
    return-void
.end method
