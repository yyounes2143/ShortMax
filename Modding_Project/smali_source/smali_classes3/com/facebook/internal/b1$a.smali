.class public final Lcom/facebook/internal/b1$a;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/internal/b1$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b1$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/b1$a;->b(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 5
    .line 6
    const-string v0, "Validation failed"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method
