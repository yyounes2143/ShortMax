.class final Lkotlin/random/Random$Default$Serialized;
.super Ljava/lang/Object;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serialized"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlin/random/Random$Default$Serialized;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/random/Random$Default$Serialized;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/random/Random$Default$Serialized;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/random/Random$Default$Serialized;->a:Lkotlin/random/Random$Default$Serialized;

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

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 2
    .line 3
    return-object v0
.end method
