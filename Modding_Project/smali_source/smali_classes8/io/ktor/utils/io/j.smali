.class public final Lio/ktor/utils/io/j;
.super Ljava/lang/Object;
.source "CloseElement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lio/ktor/utils/io/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/utils/io/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/utils/io/i;-><init>(Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/j;->a:Lio/ktor/utils/io/i;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Lio/ktor/utils/io/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/j;->a:Lio/ktor/utils/io/i;

    .line 2
    .line 3
    return-object v0
.end method
