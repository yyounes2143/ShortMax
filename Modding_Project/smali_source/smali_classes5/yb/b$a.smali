.class public final Lyb/b$a;
.super Ljava/lang/Object;
.source "CdnApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lyb/b$a;

.field private static final b:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lyb/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyb/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lyb/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyb/b$a;->a:Lyb/b$a;

    .line 7
    .line 8
    new-instance v0, Lyb/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lyb/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lyb/b$a;->b:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a()Lyb/b;
    .locals 1

    .line 1
    invoke-static {}, Lyb/b$a;->c()Lyb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c()Lyb/b;
    .locals 2

    .line 1
    sget-object v0, Lzb/f;->a:Lzb/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzb/f;->g()Lfu/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lyb/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lfu/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lyb/b;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final b()Lyb/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lyb/b$a;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lyb/b;

    .line 13
    .line 14
    return-object v0
.end method
