.class final Lkotlin/sequences/d;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlin/sequences/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/sequences/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

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


# virtual methods
.method public bridge synthetic a(I)Lkotlin/sequences/Sequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/sequences/d;->c(I)Lkotlin/sequences/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Lkotlin/sequences/Sequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/sequences/d;->d(I)Lkotlin/sequences/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(I)Lkotlin/sequences/d;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object p1, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    .line 2
    .line 3
    return-object p1
.end method

.method public d(I)Lkotlin/sequences/d;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object p1, Lkotlin/sequences/d;->a:Lkotlin/sequences/d;

    .line 2
    .line 3
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/collections/i0;->a:Lkotlin/collections/i0;

    .line 2
    .line 3
    return-object v0
.end method
