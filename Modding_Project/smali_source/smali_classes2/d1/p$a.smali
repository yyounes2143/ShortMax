.class Ld1/p$a;
.super Ljava/lang/ThreadLocal;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/graphics/PathMeasure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a()Landroid/graphics/PathMeasure;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/p$a;->a()Landroid/graphics/PathMeasure;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
