.class public final Lfk/n;
.super Ljava/lang/Object;
.source "CurrencyCodeUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lfk/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfk/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/n;->a:Lfk/n;

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
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lud/a;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0, p1}, Lud/a;->e0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lud/b;->a:Lud/b;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lud/b;->t3(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
